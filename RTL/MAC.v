module MAC #(parameter I=19, parameter F=11)
(
	input wire signed [I+F-1:0] IN1_R,
	input wire signed[I+F-1:0] IN1_I,
	
	input wire signed[I+F-1:0] IN2_R,
	input wire signed[I+F-1:0] IN2_I,
	
	input wire signed[I+F-1:0] W_R,
	input wire signed[I+F-1:0] W_I,
	
	output wire signed[I+F-1:0] OUT1_R,
	output wire signed[I+F-1:0] OUT1_I,
	output wire signed[I+F-1:0] OUT2_R,
	output wire signed[I+F-1:0] OUT2_I
    );
	
	wire signed[I+2*F-1:0] out1_r;
	wire signed[I+2*F-1:0] out1_i;
	wire signed[I+2*F-1:0] out2_r;
	wire signed[I+2*F-1:0] out2_i;
	
	wire signed[I+2*F-1:0] out1_out2_r; // out1_r - out2_r
	wire signed[I+2*F-1:0] out1_out2_i; // out1_i + out2_i

	wire signed[I+2*F-1:0] out2_r_neg; 
	wire signed[I+2*F-1:0] out1_out2_r_neg; 
	wire signed[I+2*F-1:0] out1_out2_i_neg; 
	
	wire signed[I+2*F-1:0] IN1_R_full;
	wire signed[I+2*F-1:0] IN1_I_full;
	assign IN1_R_full=IN1_R;
	assign IN1_I_full=IN1_I;
	
	wire signed[I+2*F-1:0] OUT1_R_full;
	wire signed[I+2*F-1:0] OUT1_I_full;
	wire signed[I+2*F-1:0] OUT2_R_full;
	wire signed[I+2*F-1:0] OUT2_I_full;
	
	assign OUT1_R  = OUT1_R_full [I+2*F-1:F];
	assign OUT1_I  = OUT1_I_full [I+2*F-1:F];
	assign OUT2_R = OUT2_R_full [I+2*F-1:F];
	assign OUT2_I = OUT2_I_full [I+2*F-1:F];
	
	multiplier # (.I(I) , .F(F)) M1
	(
		.Number1(IN2_R),
		.Number2(W_R),
		.OutputResult(out1_r)
	);
	
	multiplier # (.I(I) , .F(F)) M2
	(
		.Number1(IN2_I),
		.Number2(W_I),
		.OutputResult(out2_r)
	);
	
	multiplier  # (.I(I) , .F(F)) M3
	(
		.Number1(IN2_R),
		.Number2(W_I),
		.OutputResult(out1_i)
	);
	
	multiplier # (.I(I) , .F(F)) M4
	(
		.Number1(IN2_I),
		.Number2(W_R),
		.OutputResult(out2_i)
	);
	
	
	
	
	negative # (.I(I) , .F(F)) n1
	(
		.IN(out2_r),
		.OUT(out2_r_neg)
	);
	
	negative # (.I(I) , .F(F)) n2
	(
		.IN(out1_out2_r),
		.OUT(out1_out2_r_neg)
	);
	
	negative # (.I(I) , .F(F)) n3
	(
		.IN(out1_out2_i),
		.OUT(out1_out2_i_neg)
	);
	
	
	ADDER # (.I(I) , .F(F)) A1
	(
		.IN1(out1_r),
		.IN2(out2_r_neg),
		.OUT(out1_out2_r)
	);
	
	ADDER # (.I(I) , .F(F)) A2
	(
		.IN1(out1_i),
		.IN2(out2_i),
		.OUT(out1_out2_i)
	);
	
	ADDER # (.I(I) , .F(F)) A3
	(
		.IN1(out1_out2_r),
		.IN2(IN1_R_full),
		.OUT(OUT1_R_full)
	);
	
	ADDER # (.I(I) , .F(F)) A4
	(
		.IN1(out1_out2_r_neg),
		.IN2(IN1_R_full),
		.OUT(OUT2_R_full)
	);
	
		ADDER # (.I(I) , .F(F)) A5
	(
		.IN1(out1_out2_i),
		.IN2(IN1_I_full),
		.OUT(OUT1_I_full)
	);
	
	ADDER # (.I(I) , .F(F)) A6
	(
		.IN1(out1_out2_i_neg),
		.IN2(IN1_I_full),
		.OUT(OUT2_I_full)
	);
endmodule