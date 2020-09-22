`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module fm_top (
    i_ref_clk, i_resetb, o_sample_truncated, lo_square
);

parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32,
		lo_phase_width = 12,
		lo_accumulator_width = 32;
	
input wire i_ref_clk, i_resetb;
output wire [sine_lookup_width-1:0] o_sample_truncated;
output wire lo_square;

wire reset;
assign reset = !i_resetb;
//PUR PUR_INST (.PUR (gsr_reset_n));
//GSR GSR_INST (.GSR (reset));
wire clk;
//assign clk = i_ref_clk;
pll_fm pll_inst (.CLKI(i_ref_clk), .RST(reset), .CLKOP(), .CLKOS(clk));


reg i_ce, i_update;

reg [(accumulator_width-2):0] carrier_center_increment, modulation_increment;
reg [sine_lookup_width:0] modulation_deviation_amount;

wire signed [sine_lookup_width:0] o_sample;
wire [sine_lookup_width:0] o_sample_dc_offset;
assign o_sample_dc_offset = o_sample + 2**(sine_lookup_width);
assign o_sample_truncated = o_sample_dc_offset[sine_lookup_width:1];
//assign o_sample_truncated = lo_phase;

fm_generator #(
	.sine_lookup_width(sine_lookup_width),
	.phase_width(phase_width),
	.accumulator_width(accumulator_width)
	)
	fm_generator_instance(clk, reset, 1'b1, 1'b1, 31'd200000000, 31'd66770, 17'd4, o_sample);

//defparam lo_inst.OW = lo_phase_width;
//defparam lo_inst.PW = lo_accumulator_width;
//wire [(lo_phase_width-1):0] lo_phase;
//reg [(lo_accumulator_width-2):0] lo_increment;
//nco lo_inst (clk, reset, i_ce, lo_increment, lo_phase);
assign lo_square = clk;

/*always @(posedge clk or posedge reset) begin
	if (reset) begin
		carrier_center_increment <= 5000000;
		modulation_increment <= 100000;
		modulation_deviation_amount <= 5;
		i_update <= 1;
		i_ce <= 1;
		lo_increment <=10001;
	end else begin
		carrier_center_increment <= 50000000;
		modulation_increment <= 10000000;
		modulation_deviation_amount <= 5;
		i_update <= 1;
		i_ce <= 1;
		lo_increment <=10001;
	end
	
	//o_sample_truncated <= o_sample_truncated + 1;
end*/

endmodule