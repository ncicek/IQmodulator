`default_nettype none
`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module fm_generator_wb_slave (
    i_clk, i_reset, 
    i_wb_cyc, i_wb_stb, i_wb_we, i_wb_addr, i_wb_data, o_wb_ack, o_wb_stall, o_wb_data,
    o_dac_a, o_dac_b, o_cw_b
);
parameter sine_lookup_width = 16,
		phase_width = 12,
		accumulator_width = 32,
		output_dac_width = 10;
			
input wire i_clk, i_reset;
input wire i_wb_cyc, i_wb_stb, i_wb_we;
input wire [1:0] i_wb_addr;
input wire [31:0] i_wb_data;
output reg o_wb_ack;
output wire o_wb_stall;
output reg [31:0] o_wb_data;
output wire [(output_dac_width-1):0] o_dac_a, o_dac_b;
output wire o_cw_b;

wire signed [(sine_lookup_width-1):0] o_sample_i, o_sample_q;

wire [sine_lookup_width:0] o_sample_dc_offset_i, o_sample_dc_offset_q;
assign o_sample_dc_offset_i = o_sample_i + 2**(sine_lookup_width);
assign o_sample_dc_offset_q = o_sample_q + 2**(sine_lookup_width);
assign o_dac_a = o_cw ? o_sample_dc_offset_i[sine_lookup_width:(sine_lookup_width-output_dac_width+1)] : control_mode_dac_a;
assign o_dac_b = o_sample_dc_offset_q[sine_lookup_width:(sine_lookup_width-output_dac_width+1)];

//Wishbone slave interface
parameter REG_CARRIER_CENTER_FREQUENCY = 0;
parameter REG_MODULATION_FREQUENCY = 1;
parameter REG_MODULATION_DEVIATION = 2;
reg [31:0] addr_space [0:3];

always @(posedge i_clk or posedge i_reset) begin
	if (i_reset) begin
		addr_space[REG_CARRIER_CENTER_FREQUENCY] <= 32'h444444;
		addr_space[REG_MODULATION_FREQUENCY] <= 32'h1bf;
		addr_space[REG_MODULATION_DEVIATION] <= 32'd0;
	end else begin
		if ((i_wb_stb)&&(i_wb_we)&&(!o_wb_stall)) begin
			addr_space[i_wb_addr] <= i_wb_data;
		end
	end
end

always @(posedge i_clk) begin
	o_wb_data <= addr_space[i_wb_addr];
end

always @(posedge i_clk) begin
	if (i_reset)
		o_wb_ack <= 1'b0;
	else
		o_wb_ack <= ((i_wb_stb)&&(!o_wb_stall));
end

assign o_wb_stall = 1'b0; //we can accept wb request on every clock cycle, no need to stall

reg [(accumulator_width-2):0] carrier_center_increment_offset_ls, carrier_center_increment_offset_rs;
reg [(accumulator_width-2):0] carrier_increment;

wire signed [(accumulator_width-2):0] carrier_center_increment;
wire signed [(accumulator_width-2):0] modulation_increment;
wire [sine_lookup_width:0] modulation_deviation_amount;
assign carrier_center_increment = addr_space[REG_CARRIER_CENTER_FREQUENCY][(accumulator_width-2):0];
assign modulation_increment = addr_space[REG_MODULATION_FREQUENCY][(accumulator_width-2):0];
assign modulation_deviation_amount = addr_space[REG_MODULATION_DEVIATION][sine_lookup_width:0];

wire signed [(sine_lookup_width-1):0] modulation_output;

dds #( 	.sine_lookup_width(sine_lookup_width),
		.phase_width(phase_width),
		.accumulator_width(accumulator_width)
	) carrier(.i_clk(i_clk), .i_reset(i_reset), .i_ce(1'b1), .i_update(1'b1), .i_increment(carrier_increment), .o_sample_i(o_sample_i), .o_sample_q(o_sample_q));

dds #( 	.sine_lookup_width(sine_lookup_width),
		.phase_width(phase_width),
		.accumulator_width(accumulator_width)
	) modulation(.i_clk(i_clk), .i_reset(i_reset), .i_ce(1'b1), .i_update(1'b1), .i_increment(modulation_increment), .o_sample_i(modulation_output), .o_sample_q());

reg [sine_lookup_width:0] sine_lookup_width_minus_modulation_deviation_amount, modulation_deviation_amount_minus_sine_lookup_width;


always @(posedge i_clk or posedge i_reset) begin
	if (i_reset) begin
		carrier_center_increment_offset_ls <= {(accumulator_width-1){1'b0}};
		carrier_center_increment_offset_rs <= {(accumulator_width-1){1'b0}};
		carrier_increment <= {(accumulator_width-1){1'b0}};
		sine_lookup_width_minus_modulation_deviation_amount <= {(sine_lookup_width+1){1'b0}};
		modulation_deviation_amount_minus_sine_lookup_width <= {(sine_lookup_width+1){1'b0}};
	end else begin
		sine_lookup_width_minus_modulation_deviation_amount <= sine_lookup_width - modulation_deviation_amount + 1;
		modulation_deviation_amount_minus_sine_lookup_width <= modulation_deviation_amount - sine_lookup_width;
		carrier_center_increment_offset_ls <= (modulation_output <<< modulation_deviation_amount_minus_sine_lookup_width);
		carrier_center_increment_offset_rs <= (modulation_output >>> sine_lookup_width_minus_modulation_deviation_amount);
		if (modulation_deviation_amount < sine_lookup_width)
			carrier_increment <= carrier_center_increment + carrier_center_increment_offset_rs;
		else
			carrier_increment <= carrier_center_increment + carrier_center_increment_offset_ls;

	end
end

//Init control programming
wire o_cw;
assign o_cw_b = ~o_cw;
wire control_pd, control_dacen, control_ide, control_ren_b;
wire [3:0] control_g;

wire [9:0] control_mode_dac_a;
assign control_mode_dac_a[9] = control_pd;
assign control_mode_dac_a[8] = control_dacen;
assign control_mode_dac_a[7] = control_ide;
assign control_mode_dac_a[6] = control_ren_b;
assign control_mode_dac_a[5:2] = control_g;

assign control_pd = 1'b0;
assign control_dacen = 1'b1;
assign control_ide = 1'b0;
assign control_ren_b = 1'b0;
assign control_g = 4'b1000;

assign o_cw = i_reset;

endmodule