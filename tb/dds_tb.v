`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module dds_tb;
reg reset;
reg i_clk;
reg [30:0] i_increment;
wire signed [16:0] o_sample;
reg i_ce, i_update;


dds UUT(i_clk, reset, i_ce, i_update, i_increment, o_sample);


always begin
	#1 i_clk = !i_clk;
end

/*always @(posedge i_clk) begin
	i_increment = i_increment + 1;
end*/

initial
begin
	i_update = 1;
	reset = 1;
	i_clk = 0;
	i_increment = 100000000;
	i_ce = 1;
	#3;
	reset = 0;
	#25000000;
    $stop;   // end of simulation
end

endmodule