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
wire [sine_lookup_width-1:0] o_sample;
wire lo_square;



fm_top UUT(i_clk, i_reset, o_sample, lo_square);

always begin
	#3 i_clk = !i_clk;
end


initial
begin
	i_clk = 0;
	#1;
	i_reset = 1;
	#3;
	i_reset = 0;
	#3;
	i_reset = 1;
	#10000;
    $stop;   // end of simulation
end

endmodule