`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module top_tb;
initial
 begin
    $dumpfile("test.vcd");
    $dumpvars(0,top_tb);
 end
parameter sine_lookup_width = 16;

defparam UUT.sine_lookup_width = sine_lookup_width;


reg i_reset;
reg i_clk;
wire [sine_lookup_width-1:0] o_baseband;
wire lo_square;

wire i_wbu_uart_rx, o_wbu_uart_tx, test_uart_signal;
assign i_wbu_uart_rx = test_uart_signal;

top UUT (i_clk, i_reset,
		// UART/host to wishbone interface
		i_wbu_uart_rx, o_wbu_uart_tx,

        //signal outputs
        o_baseband, lo_square
);

reg tx_stb;
wire tx_busy;
reg [7:0] tx_data;
//UARTSETUP = clk / baud at 8N1. 10000 == 9600 baud @ 96MHz
txuartlite #(.TIMING_BITS(24), .CLOCKS_PER_BAUD(10000)) txtransport(i_clk, tx_stb, tx_data, test_uart_signal, tx_busy);


always begin
	#1 i_clk = !i_clk;
end


initial
begin
	i_clk = 0;
    tx_stb = 0;
    tx_data = 8'hA;
	#1;
	i_reset = 1;
	#3;
	i_reset = 0;
	#3;
	i_reset = 1;
    #10;
    tx_stb = 1;
	#20000;
    $stop;   // end of simulation
end

endmodule