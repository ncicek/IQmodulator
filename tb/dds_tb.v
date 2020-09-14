`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module dds_tb;
reg reset;
reg i_clk;
reg [30:0] i_increment;
wire signed [16:0] o_sample;
reg i_ce;


dds UUT(i_clk, reset, i_ce, i_increment, o_sample);


always begin
	#1 i_clk = !i_clk;
end

always @(posedge i_clk) begin
	i_increment = i_increment + 1;
end

initial
begin
	reset = 0;
	i_clk = 0;
	i_increment = 0;
	i_ce = 1;
	#25000000;
    $stop;   // end of simulation
end

endmodule