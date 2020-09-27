//`default_nettype none
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
pll_fm pll_inst (.CLKI(i_ref_clk), .RST(1'b0), .CLKOP(), .CLKOS(clk));



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




reg [29:0] bus_err_address;
initial	bus_err_address = 0;

wire wb_fm_sel, wb_fm_stall, wb_fm_ack;
wire [31:0] wb_fm_data;

wire wb_smpl_sel, wb_smpl_stall;
reg [31:0] wb_smpl_data;
reg wb_smpl_ack;

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





	// A "Simple" example device
	reg	[31:0]	smpl_register, power_counter;
	reg	smpl_interrupt;
	initial	wb_smpl_ack = 1'b0;
	always @(posedge clk)
		wb_smpl_ack <= ((wb_stb)&&(wb_smpl_sel));
	assign	wb_smpl_stall = 1'b0;
	initial	smpl_interrupt = 1'b0;
	always @(posedge clk)
		if ((wb_stb)&&(wb_smpl_sel)&&(wb_we))
		begin
			case(wb_addr[3:0])
			4'h1: smpl_register  <= wb_odata;
			4'h4: smpl_interrupt <= wb_odata[0];
			default: begin end
			endcase
		end

	always @(posedge clk)
		case(wb_addr[3:0])
		4'h0:    wb_smpl_data <= 32'h20170622;
		4'h1:    wb_smpl_data <= smpl_register;
		4'h2:    wb_smpl_data <= { bus_err_address, 2'b00 };
		4'h3:    wb_smpl_data <= power_counter;
		4'h4:    wb_smpl_data <= { 31'h0, smpl_interrupt };
		default: wb_smpl_data <= 32'h00;
		endcase

	// Start our clocks since power up counter from zero
	initial	power_counter = 0;
	always @(posedge clk)
		// Count up from zero until the top bit is set
		if (!power_counter[31])
			power_counter <= power_counter + 1'b1;
		else // Once the top bit is set, keep it set forever
			power_counter[30:0] <= power_counter[30:0] + 1'b1;









	//BUS plumbing
	// Nothing should be assigned to the null page
	assign	wb_smpl_sel = (wb_addr[29:4] == 26'h081);	// 0x00002040
	assign	wb_fm_sel = (wb_addr[29:4] == 26'h082);	// 0x00002080

	// This will be true if nothing is selected
	wire none_sel;
	assign none_sel = ((!wb_fm_sel) && (!wb_smpl_sel));

	// The wishbone error signal is true for one clock only, and then it
	// resets itself
	always @(posedge clk)
		wb_err <= (wb_stb)&&(none_sel);


	always @(posedge clk)
		if (wb_err)
			bus_err_address <= wb_addr;

	assign wb_stall = ((wb_fm_sel)&&(wb_fm_stall))||((wb_smpl_sel)&&(wb_smpl_stall));

	initial	wb_ack = 1'b0;
	always @(posedge clk)
		wb_ack <= (wb_fm_ack) || (wb_smpl_ack);

	always @(posedge clk)
		if (wb_fm_ack)
			wb_idata <= wb_fm_data;
		else if (wb_smpl_ack)
			wb_idata <= wb_smpl_data;
		else
			wb_idata <= 32'h0;

	assign bus_interrupt = 1'b0;


endmodule