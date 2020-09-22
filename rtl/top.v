`default_nettype none
module top(i_ref_clk, i_resetb,
		// UART/host to wishbone interface
		i_wbu_uart_rx, o_wbu_uart_tx,

        //signal outputs
        o_baseband, o_local_oscilator_clk
);

parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32,
		lo_phase_width = 12,
		lo_accumulator_width = 32;
	
input wire i_ref_clk, i_resetb;
input wire i_wbu_uart_rx;
output wire o_wbu_uart_tx;
output wire [sine_lookup_width-1:0] o_baseband;
output wire o_local_oscilator_clk;


wire reset;
assign reset = !i_resetb;
//PUR PUR_INST (.PUR (gsr_reset_n));
//GSR GSR_INST (.GSR (reset));
wire clk;
//assign clk = i_ref_clk;
pll_fm pll_inst (.CLKI(i_ref_clk), .RST(reset), .CLKOP(), .CLKOS(clk));



wire rx_stb;
wire [7:0] rx_data;
rxuartlite #(.TIMER_BITS(24), .CLOCKS_PER_BAUD(10000)) rxtransport(clk, i_wbu_uart_rx, rx_stb, rx_data);

wire tx_stb, tx_busy;
wire [7:0] tx_data;
//UARTSETUP = clk / baud at 8N1. 10000 == 9600 baud @ 96MHz
txuartlite #(.TIMING_BITS(24), .CLOCKS_PER_BAUD(10000)) txtransport(clk, tx_stb, tx_data, o_wbu_uart_tx, tx_busy);


wire wb_cyc, wb_stb, wb_we;
wire [29:0] wb_addr;
wire [31:0] wb_odata;
wire [3:0] wb_sel;
reg wb_ack;
wire wb_stall;
reg	wb_err;
reg	[31:0] wb_idata;
wire bus_interrupt;

wire wb_fm_sel, wb_fm_stall, wb_fm_ack;
wire [31:0] wb_fm_data;

hbbus genbus (.i_clk(clk),
	.i_rx_stb(rx_stb), 	// The receive transport wires
	.i_rx_byte(rx_data),
	.o_wb_cyc(wb_cyc), // The bus control output wires
	.o_wb_stb(wb_stb), 
	.o_wb_we(wb_we), 
	.o_wb_addr(wb_addr), 
	.o_wb_data(wb_odata), 
	.o_wb_sel(wb_sel),
	.i_wb_stall(wb_stall), //	The return bus wires
	.i_wb_ack(wb_ack), 
	.i_wb_data(wb_idata), 
	.i_wb_err(wb_err),
	.i_interrupt(bus_interrupt), // An interrupt line
	.o_tx_stb(tx_stb), // The return transport wires
	.o_tx_byte(tx_data), 
	.i_tx_busy(tx_busy));

// Nothing should be assigned to the null page
assign	wb_fm_sel  = (wb_addr == 30'h1);

// This will be true if nothing is selected
wire none_sel;
assign none_sel = (!wb_fm_sel);

// The wishbone error signal is true for one clock only, and then it
// resets itself
always @(posedge clk)
	wb_err <= (wb_stb)&&(none_sel);

reg [29:0] bus_err_address;
always @(posedge clk)
	if (wb_err)
		bus_err_address <= wb_addr;

assign wb_stall = ((wb_fm_sel)&&(wb_fm_stall));

always @(posedge clk)
	wb_ack <= (wb_fm_ack);

always @(posedge clk)
	if (wb_ack)
		wb_idata <= wb_fm_data;
	else
		wb_idata <= 32'h0;

assign bus_interrupt = 1'b0;





//SLAVES:
assign o_local_oscilator_clk = clk;

wire signed [sine_lookup_width:0] o_sample;
wire [sine_lookup_width:0] o_sample_dc_offset;
assign o_sample_dc_offset = o_sample + 2**(sine_lookup_width);
assign o_baseband = o_sample_dc_offset[sine_lookup_width:1];

fm_generator_wb_slave #(
	.sine_lookup_width(sine_lookup_width),
	.phase_width(phase_width),
	.accumulator_width(accumulator_width)
	)
	fm_generator_wb_instance(.i_clk(clk), .i_reset(reset), 
                            .i_wb_cyc(wb_cyc), 
                            .i_wb_stb(wb_stb && wb_fm_sel), 
                            .i_wb_we(wb_we), 
                            .i_wb_addr(wb_addr[1:0]), 
                            .i_wb_data(wb_odata),
                            .o_wb_ack(wb_fm_ack), 
                            .o_wb_stall(wb_fm_stall), 
                            .o_wb_data(wb_fm_data),
                            .o_sample(o_sample)
);


endmodule