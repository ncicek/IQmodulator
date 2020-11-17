//`default_nettype none
`timescale 1 ns/100 ps  // time-unit = 1 ns, precision = 10 ps

module quarter_wave_sine_lookup(i_clk, i_reset, i_ce, i_phase, o_val_i, o_val_q);
	parameter OW = 16, // output value width
			PW = 12; //phase width
	input wire i_clk, i_ce, i_reset;
	input wire [(PW-1):0] i_phase;
	output wire signed [(OW-1):0] o_val_i, o_val_q;
	
	reg [(PW-1):0] phase_i;
	reg [(PW-1):0] phase_q;


	reg signed [(OW-1):0] o_val_pipeline_i [0:1];  /* synthesis syn_pipeline = 1 */ 
	reg signed [(OW-1):0] o_val_pipeline_q [0:1];  /* synthesis syn_pipeline = 1 */ 
	
	assign o_val_i = o_val_pipeline_i[1];
	assign o_val_q = o_val_pipeline_q[1];

	//wire [OW-1:0] quarter_wave_sample;
	reg signed [(OW-1):0] quarter_wave_sample_register_i, quarter_wave_sample_register_q;
	reg [1:0] phase_negation_i, phase_negation_q;
	
	reg [(OW-2):0] quarter_wave_table [0:((1<<(PW-2))-1)]; //size is [(OW-2):0] because we reserve MSB to be the sign bit. wave table is OW-1 bits in lenght
	
	initial	begin 
		$readmemh("quarterwav.hex", quarter_wave_table);
	end
	
	reg [(PW-3):0] index_i, index_q;
	//quarterwav quarterwav_instance(i_clk, i_reset, index, quarter_wave_sample);

	
	always @(posedge i_clk or posedge i_reset) begin
		if (i_reset) begin 
			o_val_pipeline_i[1] <= {(OW+1){1'b0}};
			o_val_pipeline_i[0] <= {(OW+1){1'b0}};
			o_val_pipeline_q[1] <= {(OW+1){1'b0}};
			o_val_pipeline_q[0] <= {(OW+1){1'b0}};
			
			phase_negation_i <= 2'b0;
			phase_negation_q <= 2'b0;
			index_i <= {(PW-2){1'b0}};
			index_q <= {(PW-2){1'b0}};
			quarter_wave_sample_register_i <= {(OW+1){1'b1}};
			quarter_wave_sample_register_q <= {(OW+1){1'b1}};
		end
		else begin 
			if (i_ce) begin
				//1st cycle
				phase_i <= i_phase;
				phase_q <= i_phase - (1'b1 << (PW-2));

				//2nd cycle
				if (phase_i[(PW-2)]) begin
					index_i <= ~phase_i[(PW-3):0];
					index_q <= phase_q[(PW-3):0];
				end else begin
					index_i <= phase_i[(PW-3):0];
					index_q <= ~phase_q[(PW-3):0];
				end
				phase_negation_i[0] <= phase_i[(PW-1)];
				phase_negation_q[0] <= phase_q[(PW-1)];
				
				//3rd cycle
				quarter_wave_sample_register_i <= {1'b0, quarter_wave_table[index_i]};
				quarter_wave_sample_register_q <= {1'b0, quarter_wave_table[index_q]};
				phase_negation_i[1] <= phase_negation_i[0];
				phase_negation_q[1] <= phase_negation_q[0];
				
				//4th cycle
				if (phase_negation_i[1]) begin
					o_val_pipeline_i[0] <= -quarter_wave_sample_register_i;
				end else begin
					o_val_pipeline_i[0] <= quarter_wave_sample_register_i;
				end

				if (phase_negation_q[1]) begin
					o_val_pipeline_q[0] <= -quarter_wave_sample_register_q;
				end else begin
					o_val_pipeline_q[0] <= quarter_wave_sample_register_q;
				end

				o_val_pipeline_i[1] <= o_val_pipeline_i[0];
				o_val_pipeline_q[1] <= o_val_pipeline_q[0];

			end
		end
    end
	
	

endmodule