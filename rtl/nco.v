`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module nco (
    i_clk, i_reset, i_ce, i_increment, o_phase
	);
parameter OW = 20, // output phase value width
			PW = 32; //internal phase accumulator width

input wire i_clk;
input wire i_reset;
input wire i_ce;
input wire [(PW-2):0] i_increment;
output wire [(OW-1):0] o_phase;

reg [(PW-1):0] phase_register;

assign o_phase = phase_register[(PW-1):(PW-OW)];

always @(posedge i_clk or posedge i_reset) begin
	if (i_reset) begin
		phase_register <= {PW{1'b0}};
	end
	else begin
		if (i_ce) begin
			phase_register <= phase_register + i_increment;
		end
	end
end


endmodule
