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

wire i_wbu_uart_rx, o_wbu_uart_tx, uart_to_DUT;
assign i_wbu_uart_rx = uart_to_DUT;

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
txuartlite #(.TIMING_BITS(24), .CLOCKS_PER_BAUD(10000)) txtransport(i_clk, tx_stb, tx_data, uart_to_DUT, tx_busy);

wire rx_stb;
wire [7:0] rx_data;
wire DUT_to_uart;
assign DUT_to_uart = o_wbu_uart_tx;
rxuartlite #(.TIMER_BITS(24), .CLOCKS_PER_BAUD(10000)) rxtransport(i_clk, DUT_to_uart, rx_stb, rx_data);

always begin
	#1 i_clk = !i_clk;
end

reg [5:0] index;
reg sig_go;

initial
begin
	index = 0;
	i_clk = 0;
    tx_stb = 0;
    tx_data = 8'hA;
	sig_go = 0;
	#1;
	i_reset = 1;
	#3;
	i_reset = 0;
	#3;
	i_reset = 1;
	sig_go = 1;
end

reg [7:0] buffer [0:10];
initial begin
	//A2040R
	buffer[0] = 65;
	buffer[1] = 2+48;
	buffer[2] = 0+48;
	buffer[3] = 4+48;
	buffer[4] = 0+48;
	buffer[5] = 82;
	buffer[6] = 88; //X end of line
end

/*
always @(posedge i_clk) begin
	if (sig_go) begin 
		if (!tx_busy && !tx_stb) begin
			tx_data <= buffer[index];
			index <= index + 1;
			tx_stb <= 1;
		end else begin
			tx_stb <= 0;
		end
	end
	if (index >= 45)
    	$stop;   // end of simulation
end
*/
endmodule