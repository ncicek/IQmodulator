`default_nettype none
`timescale 1 ns / 100 ps

module top(i_ref_clk,
		// UART/host to wishbone interface
		i_wbu_uart_rx, o_wbu_uart_tx,

		//pushbuttons
		i_sw0, i_sw1,

        //signal outputs
        o_dac_a, o_dac_b,
		dac_clk_p, dac_clk_n,
		o_dac_cw_b,
		o_lo_i,
		o_lo_q
);

parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32,
		lo_phase_width = 12,
		lo_accumulator_width = 32,
		output_dac_width = 10;
	
input wire i_ref_clk;

input wire i_wbu_uart_rx;
output wire o_wbu_uart_tx;

input wire i_sw0, i_sw1;

output wire [(output_dac_width-1):0] o_dac_a, o_dac_b;
output wire o_lo_i, o_lo_q, dac_clk_p, dac_clk_n, o_dac_cw_b;

wire reset;
assign reset = i_sw0;

`ifdef	synthesis
	PUR PUR_INST (.PUR (reset));
	GSR GSR_INST (.GSR (reset));
`endif


wire clk;
`ifdef	synthesis
	sys_clk sys_clk_inst (.CLKI(i_ref_clk), .CLKOP(clk));
`else
	assign clk = i_ref_clk;
`endif


//differential clock outputs
assign dac_clk_n = ~dac_clk_p;
assign dac_clk_p = clk;

wire rx_stb;
wire [7:0] rx_data;
`ifdef	synthesis
	rxuartlite #(.TIMER_BITS(24), .CLOCKS_PER_BAUD(10000)) rxtransport(clk, i_wbu_uart_rx, rx_stb, rx_data);
`else
	rxuartlite #(.TIMER_BITS(24), .CLOCKS_PER_BAUD(20)) rxtransport(clk, i_wbu_uart_rx, rx_stb, rx_data);
`endif

wire tx_stb, tx_busy;
wire [7:0] tx_data;
`ifdef	synthesis
	//UARTSETUP = clk / baud at 8N1. 10000 == 9600 baud @ 96MHz
	txuartlite #(.TIMING_BITS(24), .CLOCKS_PER_BAUD(10000)) txtransport(clk, tx_stb, tx_data, o_wbu_uart_tx, tx_busy);
`else
	txuartlite #(.TIMING_BITS(24), .CLOCKS_PER_BAUD(20)) txtransport(clk, tx_stb, tx_data, o_wbu_uart_tx, tx_busy);
`endif

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





//SLAVES:
wire wb_fm_sel, wb_fm_stall, wb_fm_ack;
wire [31:0] wb_fm_data;

fm_generator_wb_slave #(
	.sine_lookup_width(sine_lookup_width),
	.phase_width(phase_width),
	.accumulator_width(accumulator_width),
	.output_dac_width(output_dac_width)
	)
	fm_generator_wb_instance(.i_clk(clk), .i_reset(reset), 
                            .i_wb_cyc(wb_cyc), 
                            .i_wb_stb(wb_stb && wb_fm_sel), 
                            .i_wb_we(wb_we), 
                            .i_wb_addr(wb_addr[2:0]), 
                            .i_wb_data(wb_odata),
                            .o_wb_ack(wb_fm_ack), 
                            .o_wb_stall(wb_fm_stall), 
                            .o_wb_data(wb_fm_data),
                            .o_dac_a_registered(o_dac_a),
							.o_dac_b_registered(o_dac_b),
							.o_cw_b(o_dac_cw_b)
);

wire wb_lo_sel, lo_lock, wb_lo_stall;
wire [7:0] wb_lo_data;
wire wb_lo_ack;			

assign wb_lo_stall = 1'b0;

wire pll_clk, pll_rst, pll_stb, pll_we, pll_ack;
wire [7:0] pll_data_i, pll_data_o;
wire [4:0] pll_addr;

//check wishbone spec what master strobe is supposed to do. 
//efb needs stb high until ack back. 
//zipcpu slaves did not (maybe they were pipelined mode wb and this is not...)
//thats why we connect cyc to efb's stb line.
wire wb_cyc_efb, wb_stb_efb;
`ifdef	synthesis
	assign wb_cyc_efb = wb_cyc;
	assign wb_stb_efb = wb_cyc;
`else
	assign #0.1 wb_cyc_efb = wb_cyc;
	assign #0.1 wb_stb_efb = wb_cyc;
`endif

wire lo_pll_out, lo_i, lo_q, lo_i_en, lo_q_en;
/*clock_phase_shifter clock_phase_shifter_inst(
    .i_clk_2f(lo_pll_out),
    .o_clk_i(lo_i),
    .o_clk_q(lo_q)
);*/
assign o_lo_i = lo_i & lo_i_en;
assign o_lo_q = lo_q & lo_q_en;

`ifdef	synthesis
	dynamic_pll lo_gen(.CLKI(i_ref_clk), 
			.PLLCLK(pll_clk), 
			.PLLRST(pll_rst), 
			.PLLSTB(pll_stb), 
			.PLLWE(pll_we), 
			.PLLDATI(pll_data_i), 
			.PLLADDR(pll_addr), 
			.PLLDATO(pll_data_o), 
			.PLLACK(pll_ack),
			.CLKOP(lo_i), 
			.CLKOS(lo_q),
			.LOCK(lo_lock)
			);

	efb_inst efb_inst_0 (
		.wb_clk_i(clk), 
		.wb_rst_i(reset), 
		.wb_cyc_i(wb_cyc_efb), 
		.wb_stb_i(wb_stb_efb && wb_lo_sel), 
		.wb_we_i(wb_we), 
		.wb_adr_i(wb_addr[7:0]), 
		.wb_dat_i(wb_odata[7:0]), 
		.wb_dat_o(wb_lo_data), 
		.wb_ack_o(wb_lo_ack), 
		.pll0_bus_i({pll_data_o, pll_ack}), 
		.pll0_bus_o({pll_clk, pll_rst, pll_stb, pll_we, pll_addr, pll_data_i})
		);
`else
	assign lo_pll_out = i_ref_clk;
`endif



wire wb_control_sel, wb_control_ack, wb_control_stall;
wire [31:0] wb_control_data;
control control_inst(	.i_clk(clk), 
						.i_reset(reset), 
						.i_wb_cyc(wb_cyc), 
						.i_wb_stb(wb_stb && wb_control_sel), 
						.i_wb_we(wb_we), 
						.i_wb_addr(wb_addr[2:0]), 
						.i_wb_data(wb_odata),
						.o_wb_ack(wb_control_ack), 
						.o_wb_stall(wb_control_stall), 
						.o_wb_data(wb_control_data),
						.o_lo_i_en(lo_i_en),
						.o_lo_q_en(lo_q_en)
);



//BUS plumbing
// Nothing should be assigned to the null page
assign	wb_control_sel = (wb_addr[29:8] == 22'h081);	// 0x00002040
assign	wb_fm_sel = (wb_addr[29:8] == 22'h082);	// 0x00002080
assign	wb_lo_sel = (wb_addr[29:8] == 22'h083);	// 0x000020C0

// This will be true if nothing is selected
wire none_sel;
assign none_sel = ((!wb_fm_sel) && (!wb_control_sel) && (!wb_lo_sel));

// The wishbone error signal is true for one clock only, and then it
// resets itself
always @(posedge clk)
	wb_err <= (wb_stb)&&(none_sel);


always @(posedge clk)
	if (wb_err)
		bus_err_address <= wb_addr;

assign wb_stall = ((wb_fm_sel)&&(wb_fm_stall))||((wb_control_sel)&&(wb_control_stall))||((wb_lo_sel)&&(wb_lo_stall));

initial	wb_ack = 1'b0;
always @(posedge clk)
	wb_ack <= (wb_fm_ack) || (wb_control_ack) || (wb_lo_ack);

always @(posedge clk)
	if (wb_fm_ack)
		wb_idata <= wb_fm_data;
	else if (wb_control_ack)
		wb_idata <= wb_control_data;
	else if (wb_lo_ack)
		wb_idata <= {24'b0, wb_lo_data};
	else
		wb_idata <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;

assign bus_interrupt = 1'b0;


endmodule
`default_nettype wire