`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module dds (
    i_clk, i_reset, i_ce, i_update, i_increment, o_sample_i, o_sample_q
);
parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32;
		

			
input wire i_clk, i_reset, i_ce, i_update;
input wire [(accumulator_width-2):0] i_increment;
reg [(accumulator_width-2):0] increment;

output wire signed [(sine_lookup_width-1):0] o_sample_i, o_sample_q;

wire [(phase_width-1):0] o_phase;

nco #(.OW(phase_width), .PW(accumulator_width)) nco_inst (i_clk, i_reset, i_ce, increment, o_phase);
quarter_wave_sine_lookup #(.OW(sine_lookup_width), .PW(phase_width)) qtr_inst (i_clk, i_reset, i_ce, o_phase, o_sample_i, o_sample_q);

always @(posedge i_clk or posedge i_reset) begin
	if (i_reset) begin
		increment <= {(accumulator_width-1){1'b0}};
	end else begin
		if (i_update) begin
			increment <= i_increment;
		end
	end
end

/*
`ifdef COCOTB_SIM
initial begin
  $dumpfile ("dds.vcd");
  $dumpvars (0, dds);
  #1;
end
`endif
*/

endmodule