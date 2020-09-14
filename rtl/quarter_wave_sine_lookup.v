//`default_nettype none
`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module quarter_wave_sine_lookup(i_clk, i_reset, i_ce, i_phase, o_val);
	parameter OW = 16, // output value width
			PW = 12; //phase width
	input wire i_clk, i_ce, i_reset;
	input wire [(PW-1):0] i_phase;
	output wire signed [OW:0] o_val;
	
	reg signed [OW:0] o_val_pipeline [0:1];  /* synthesis syn_pipeline = 1 */ 
	
	assign o_val = o_val_pipeline[1];
	//wire [OW-1:0] quarter_wave_sample;
	reg [OW-1:0] quarter_wave_sample_register;
	reg [1:0] phase_negation;
	
	reg [(OW-1):0] quarter_wave_table [0:((1<<(PW-2))-1)];
	
	initial	begin 
		$readmemh("quarterwav.hex", quarter_wave_table);
	end
	
	reg [(PW-3):0] index;
	//quarterwav quarterwav_instance(i_clk, i_reset, index, quarter_wave_sample);

	
	always @(posedge i_clk or posedge i_reset) begin
		if (i_reset) begin 
			o_val_pipeline[1] <= {(OW+1){1'b0}};
			phase_negation <= 2'b0;
			index <= {(PW-2){1'b0}};
			quarter_wave_sample_register <= 1;
		end
		else begin 
			if (i_ce) begin
				//1st cycle
				if (i_phase[(PW-2)]) begin
					index <= ~i_phase[(PW-3):0];
				end else begin
					index <= i_phase[(PW-3):0];
				end
				phase_negation[0] <= i_phase[(PW-1)];
				
				//2nd cycle
				quarter_wave_sample_register <= quarter_wave_table[index];
				phase_negation[1] <= phase_negation[0];
				
				//3rd cycle
				if (phase_negation[1]) begin
					o_val_pipeline[0] <= -quarter_wave_sample_register;
				end else begin
					o_val_pipeline[0] <= quarter_wave_sample_register;
				end
				o_val_pipeline[1] <= o_val_pipeline[0];

			end
		end
    end
	
	

endmodule