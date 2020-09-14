`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module fm_tb;

parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32;
	
defparam UUT.sine_lookup_width = sine_lookup_width;
defparam UUT.phase_width = phase_width;
defparam UUT.accumulator_width = accumulator_width;

reg i_reset;
reg i_clk;
wire signed [sine_lookup_width:0] o_sample;
reg i_ce, i_update;

reg [(accumulator_width-2):0] carrier_center_increment, modulation_increment;
reg [sine_lookup_width:0] modulation_deviation_amount;




fm_generator UUT(i_clk, i_reset, i_ce, i_update, carrier_center_increment, modulation_increment, modulation_deviation_amount, o_sample);


always begin
	#1 i_clk = !i_clk;
end

/*always @(posedge i_clk) begin
	i_increment = i_increment + 1;
end*/

initial
begin
	i_reset = 0;
	i_clk = 0;
	#4;
	i_reset = 1;
	i_ce = 1;
	i_update = 1;
	carrier_center_increment = 5000;
	modulation_increment = 100;
	modulation_deviation_amount = 2;
	#4;
	i_reset = 0;
	#25000000;
    $stop;   // end of simulation
end

endmodule