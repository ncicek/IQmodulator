`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module toptb;
reg reset;
reg i_clk;
reg [11:0] i_phase;
wire signed [16:0] o_val;
reg i_ce;

defparam UUT.OW = 16;
defparam UUT.PW = 12;
quarter_wave_sine_lookup UUT (i_clk, i_ce, i_phase, o_val);

// note that sensitive list is omitted in always block
// therefore always-block run forever
// clock period = 2 ns
always begin
	#1 i_clk = !i_clk;
end

always @(posedge i_clk) begin
	i_phase = i_phase + 1;
end

initial
begin
    $dumpfile("test.vcd");
    $dumpvars(0,toptb);
	i_clk = 0;
	i_phase = 0;
	i_ce = 1;
	#25000;
    $stop;   // end of simulation
end

endmodule