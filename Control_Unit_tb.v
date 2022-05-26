module Control_Unit_tb  ();

    reg CLK_tb;
	reg RST_tb;
	reg EN_tb;
	
	wire E0;
	wire E1;
	wire E2;
	wire E3;
	wire E4;
	wire [3:0] S;
	
	always #5 CLK_tb=~CLK_tb;
	
	initial 
		begin
				
				CLK_tb=0;
				RST_tb=1;
				EN_tb=0;
				
				
				#47
				RST_tb=0;
				#47
				EN_tb=1;
				#200
				
				$finish;

		end
		
		

Control_Unit  DUT (
						.CLK (CLK_tb),
						.RST (RST_tb),
						.EN(EN_tb),
						.E0(E0),
						.E1(E1),
						.E2(E2),
						.E3(E3),
						.E4(E4),
						.S(S)
);


endmodule