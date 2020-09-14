`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module fm_generator (
    i_clk, i_reset, i_ce, i_update, carrier_center_increment, modulation_increment, modulation_deviation_amount, o_sample
);
parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32;
	
defparam carrier.sine_lookup_width = sine_lookup_width;
defparam carrier.phase_width = phase_width;
defparam carrier.accumulator_width = accumulator_width;
defparam modulation.sine_lookup_width = sine_lookup_width;
defparam modulation.phase_width = phase_width;
defparam modulation.accumulator_width = accumulator_width;
			
input wire i_clk, i_reset, i_ce, i_update;
input wire signed [(accumulator_width-2):0] carrier_center_increment, modulation_increment;
input wire [sine_lookup_width:0] modulation_deviation_amount;
output wire signed [sine_lookup_width:0] o_sample;

reg [(accumulator_width-2):0] carrier_increment, carrier_center_increment_offset;
wire signed [sine_lookup_width:0] modulation_output;

dds carrier(i_clk, i_reset, i_ce, i_update, carrier_increment, o_sample);
dds modulation(i_clk, i_reset, i_ce, i_update, modulation_increment, modulation_output);

always @(posedge i_clk or posedge i_reset) begin
	if (i_reset) begin
		carrier_center_increment_offset <= {(accumulator_width-1){1'b0}};
		carrier_increment <= {(accumulator_width-1){1'b0}};
	end else begin
		if (i_ce) begin
			carrier_center_increment_offset <= (modulation_output <<< modulation_deviation_amount);
			carrier_increment <= carrier_center_increment + carrier_center_increment_offset;
		end
	end
end

endmodule