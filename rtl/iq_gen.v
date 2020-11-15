//take a real signal and multiply by quadrature sine waves to produce in phase and out of phase outputs
`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module iq_gen (
    i_clk, i_reset, i_real_signal, i_ce, i_increment, o_signal_i, o_signal_q
	);
parameter IW = 16, // input signal width
			OW = 32, //output signal width
            sine_lookup_width = 16,
		    phase_width = 12,
            accumulator_width = 32;

input wire i_clk;
input wire i_reset;
input wire i_ce;
input wire [(accumulator_width-2):0] i_increment;
input wire signed [(IW-1):0] i_real_signal;
output wire signed [(OW-1):0] o_signal_i, o_signal_q;


wire signed [(IW-1):0] dds_i, dds_q;


complex_mult_ip complex_mult (.DataA_Re(i_real_signal), .DataA_Im(dds_i), .DataB_Re(i_real_signal), 
    .DataB_Im(dds_q), .Clock(i_clk), .ClkEn(i_ce), .Aclr(1'b0), .Result_Re(o_signal_i), 
    .Result_Im(o_signal_q));

dds #( 	.sine_lookup_width(sine_lookup_width),
		.phase_width(phase_width),
		.accumulator_width(accumulator_width)
	) iq_lo(.i_clk(i_clk), .i_reset(i_reset), .i_ce(i_ce), .i_update(1'b1), .i_increment(i_increment), .o_sample_i(dds_i), .o_sample_q(dds_q));

endmodule

