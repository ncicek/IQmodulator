`default_nettype none
`timescale 1 ns / 100 ps

module clock_phase_shifter(
    i_clk_2f,
    o_clk_i,
    o_clk_q
);

input wire i_clk_2f;
output reg o_clk_i, o_clk_q;

always @(posedge i_clk_2f) begin
    o_clk_i <= ~o_clk_i;
end

always @(negedge i_clk_2f) begin
    o_clk_q <= ~o_clk_q;
end

endmodule