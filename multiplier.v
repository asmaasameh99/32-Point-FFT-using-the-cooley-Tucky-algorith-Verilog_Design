module multiplier #(parameter I=19, parameter F=11)
(
	input wire signed[I+F-1:0] Number1,
	input wire signed[I+F-1:0] Number2,
	output wire signed[I+2*F-1:0] OutputResult
);

	wire signed [I+2*F-1:0] N1;
	wire signed [I+2*F-1:0] N2; 
	assign N1= Number1;
	assign N2= Number2;
	assign OutputResult = N1*N2;
endmodule
