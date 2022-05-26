module MAC_tb  #(parameter I=19, parameter F=11) ();
    reg CLK_tb;
	reg RST_tb;
	
	reg [I+F-1:0] A;
	reg [I+F-1:0] B;
	
	reg [I+F-1:0] C;
	reg [I+F-1:0] D;
	
	reg [I+F-1:0] E;
	reg [I+F-1:0] G;
	
	wire [I+F-1:0] OUT1_R_tb;
	wire [I+F-1:0] OUT1_I_tb;
	wire [I+F-1:0] OUT2_R_tb;
	wire [I+F-1:0] OUT2_I_tb;
	
	
always #5 CLK_tb=~CLK_tb;

 initial
 begin
    A=0;
    B=0;
    C=0;
    D=0;
    E=0;
    G=0;
	
	#20
	A=- 30'd100;
    B= 30'd50;
    C= 30'd60;
    D=- 30'd70;
    E=- 30'd20;
    G=- 30'd30;
	#20
	
	$finish;

 end
 

MAC   #(.I(I) , .F(F))  MAC_tb    (
						.IN1_R (A),
						.IN1_I (B),
						.IN2_R (C),
						.IN2_I (D),
						.W_R (E),
						.W_I (G),
						.OUT1_R (OUT1_R_tb),
						.OUT1_I (OUT1_I_tb),
						.OUT2_R (OUT2_R_tb),
						.OUT2_I (OUT2_I_tb)
);


endmodule
