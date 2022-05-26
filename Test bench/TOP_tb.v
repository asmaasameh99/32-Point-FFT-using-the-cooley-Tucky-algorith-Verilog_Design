module TOP_tb #(parameter I=19, parameter F=11) 
();

	reg CLK_tb;
	reg RST_tb; 
	reg EN_tb;
	
	reg [I+F-1:0] IN0_tb;
	reg [I+F-1:0] IN1_tb;
	reg [I+F-1:0] IN2_tb;
	reg [I+F-1:0] IN3_tb;
	reg [I+F-1:0] IN4_tb;
	reg [I+F-1:0] IN5_tb;
	reg [I+F-1:0] IN6_tb;
	reg [I+F-1:0] IN7_tb;
	reg [I+F-1:0] IN8_tb;
	reg [I+F-1:0] IN9_tb;
	reg [I+F-1:0] IN10_tb;
	reg [I+F-1:0] IN11_tb;
	reg [I+F-1:0] IN12_tb;
	reg [I+F-1:0] IN13_tb;
	reg [I+F-1:0] IN14_tb;
	reg [I+F-1:0] IN15_tb;
	reg [I+F-1:0] IN16_tb;
	reg [I+F-1:0] IN17_tb;
	reg [I+F-1:0] IN18_tb;
	reg [I+F-1:0] IN19_tb;
	reg [I+F-1:0] IN20_tb;
	reg [I+F-1:0] IN21_tb;
	reg [I+F-1:0] IN22_tb;
	reg [I+F-1:0] IN23_tb;
	reg [I+F-1:0] IN24_tb;
	reg [I+F-1:0] IN25_tb;
	reg [I+F-1:0] IN26_tb;
	reg [I+F-1:0] IN27_tb;
	reg [I+F-1:0] IN28_tb;
	reg [I+F-1:0] IN29_tb;
	reg [I+F-1:0] IN30_tb;
	reg [I+F-1:0] IN31_tb;
		
	wire [I+F-1:0] OUT0_r_tb;
	wire [I+F-1:0] OUT0_i_tb;
	wire [I+F-1:0] OUT1_r_tb;
	wire [I+F-1:0] OUT1_i_tb;
	wire [I+F-1:0] OUT2_r_tb;
	wire [I+F-1:0] OUT2_i_tb;
	wire [I+F-1:0] OUT3_r_tb;
	wire [I+F-1:0] OUT3_i_tb;
	wire [I+F-1:0] OUT4_i_tb;
	wire [I+F-1:0] OUT4_r_tb;
	wire [I+F-1:0] OUT5_i_tb;
	wire [I+F-1:0] OUT5_r_tb;
	wire [I+F-1:0] OUT6_i_tb;
	wire [I+F-1:0] OUT6_r_tb;
	wire [I+F-1:0] OUT7_i_tb;
	wire [I+F-1:0] OUT7_r_tb;
	wire [I+F-1:0] OUT8_i_tb;
	wire [I+F-1:0] OUT8_r_tb;
	wire [I+F-1:0] OUT9_i_tb;
	wire [I+F-1:0] OUT9_r_tb;
	wire [I+F-1:0] OUT10_i_tb;
	wire [I+F-1:0] OUT10_r_tb;
	wire [I+F-1:0] OUT11_i_tb;
	wire [I+F-1:0] OUT11_r_tb;
	wire [I+F-1:0] OUT12_i_tb;
	wire [I+F-1:0] OUT12_r_tb;
	wire [I+F-1:0] OUT13_i_tb;
	wire [I+F-1:0] OUT13_r_tb;
	wire [I+F-1:0] OUT14_i_tb;
	wire [I+F-1:0] OUT14_r_tb;
	wire [I+F-1:0] OUT15_i_tb;
	wire [I+F-1:0] OUT15_r_tb;
	wire [I+F-1:0] OUT16_i_tb;
	wire [I+F-1:0] OUT16_r_tb;
	wire [I+F-1:0] OUT17_i_tb;
	wire [I+F-1:0] OUT17_r_tb;
	wire [I+F-1:0] OUT18_i_tb;
	wire [I+F-1:0] OUT18_r_tb;
	wire [I+F-1:0] OUT19_r_tb;
	wire [I+F-1:0] OUT19_i_tb;
	wire [I+F-1:0] OUT20_r_tb;
	wire [I+F-1:0] OUT20_i_tb;
	wire [I+F-1:0] OUT21_r_tb;
	wire [I+F-1:0] OUT21_i_tb;
	wire [I+F-1:0] OUT22_r_tb;
	wire [I+F-1:0] OUT22_i_tb;
	wire [I+F-1:0] OUT23_i_tb;
	wire [I+F-1:0] OUT23_r_tb;
	wire [I+F-1:0] OUT24_i_tb;
	wire [I+F-1:0] OUT24_r_tb;
	wire [I+F-1:0] OUT25_i_tb;
	wire [I+F-1:0] OUT25_r_tb;
	wire [I+F-1:0] OUT26_i_tb;
	wire [I+F-1:0] OUT26_r_tb;
	wire [I+F-1:0] OUT27_i_tb;
	wire [I+F-1:0] OUT27_r_tb;
	wire [I+F-1:0] OUT28_i_tb;
	wire [I+F-1:0] OUT28_r_tb;
	wire [I+F-1:0] OUT29_i_tb;
	wire [I+F-1:0] OUT29_r_tb;
	wire [I+F-1:0] OUT30_i_tb;
	wire [I+F-1:0] OUT30_r_tb;
	wire [I+F-1:0] OUT31_i_tb;
	wire [I+F-1:0] OUT31_r_tb;

always #5 CLK_tb=~CLK_tb;

	
	initial 
		begin
				
				CLK_tb=0;
				RST_tb=1;
				EN_tb=0;
				
				
				#40
				RST_tb=0;
				#5
				RST_tb=1;
				#5
				EN_tb=1;
				#10
	  IN0_tb=30'b111111111111111111100000000000;
	  IN1_tb=30'b111111111111111111100010000100;
	  IN2_tb=30'b111111111111111111100100001000;
	  IN3_tb=30'b111111111111111111100110001100;
	  IN4_tb=30'b111111111111111111101000010001;
	  IN5_tb=30'b111111111111111111101010010101;
	  IN6_tb=30'b111111111111111111101100011001;
	  IN7_tb=30'b111111111111111111101110011101;
	  IN8_tb=30'b111111111111111111110000100001;
	  IN9_tb=30'b111111111111111111110010100101;
	  IN10_tb=30'b111111111111111111110100101001;
	  IN11_tb=30'b111111111111111111110110101101;
	  IN12_tb=30'b111111111111111111111000110010;
	  IN13_tb=30'b111111111111111111111010110110;
	  IN14_tb=30'b111111111111111111111100111010;
	  IN15_tb=30'b111111111111111111111110111110;
	  IN16_tb=30'b000000000000000000000001000010;
	  IN17_tb=30'b000000000000000000000011000110;
	  IN18_tb=30'b000000000000000000000101001010;
	  IN19_tb=30'b000000000000000000000111001110;
	  IN20_tb=30'b000000000000000000001001010011;
	  IN21_tb=30'b000000000000000000001011010111;
	  IN22_tb=30'b000000000000000000001101011011;
	  IN23_tb=30'b000000000000000000001111011111;
	  IN24_tb=30'b000000000000000000010001100011;
	  IN25_tb=30'b000000000000000000010011100111;
	  IN26_tb=30'b000000000000000000010101101011;
	  IN27_tb=30'b000000000000000000010111101111;
	  IN28_tb=30'b000000000000000000011001110100;
	  IN29_tb=30'b000000000000000000011011111000;
	  IN30_tb=30'b000000000000000000011101111100;
	  IN31_tb=30'b000000000000000000100000000000;

	  #10
	  IN0_tb=0;
	  IN1_tb=0;
	  IN2_tb=0;
	  IN3_tb=0;
	  IN4_tb=0;
	  IN5_tb=0;
	  IN6_tb=0;
	  IN7_tb=0;
	  IN8_tb=0;
	  IN9_tb=0;
	  IN10_tb=0;
	  IN11_tb=0;
	  IN12_tb=0;
	  IN13_tb=0;
	  IN14_tb=0;
	  IN15_tb=0;
	  IN16_tb=0;
	  IN17_tb=0;
	  IN18_tb=0;
	  IN19_tb=0;
	  IN20_tb=0;
	  IN21_tb=0;
	  IN22_tb=0;
	  IN23_tb=0;
	  IN24_tb=0;
	  IN25_tb=0;
	  IN26_tb=0;
	  IN27_tb=0;
	  IN28_tb=0;
	  IN29_tb=0;
	  IN30_tb=0;
	  IN31_tb=0;
	  
	  #300
	  
				$finish;

		end



TOP # (.I(I) , .F(F)) DUT 
(
	. CLK(CLK_tb),
	. RST(RST_tb), 
	. EN(EN_tb),
	
	.  IN0(IN0_tb),
	.  IN1(IN1_tb),
	.  IN2(IN2_tb),
	.  IN3(IN3_tb),
	.  IN4(IN4_tb),
	.  IN5(IN5_tb),
	.  IN6(IN6_tb),
	.  IN7(IN7_tb),
	.  IN8(IN8_tb),
	.  IN9(IN9_tb),
	.  IN10(IN10_tb),
	.  IN11(IN11_tb),
	.  IN12(IN12_tb),
	.  IN13(IN13_tb),
	.  IN14(IN14_tb),
	.  IN15(IN15_tb),
	.  IN16(IN16_tb),
	.  IN17(IN17_tb),
	.  IN18(IN18_tb),
	.  IN19(IN19_tb),
	.  IN20(IN20_tb),
	.  IN21(IN21_tb),
	.  IN22(IN22_tb),
	.  IN23(IN23_tb),
	.  IN24(IN24_tb),
	.  IN25(IN25_tb),
	.  IN26(IN26_tb),
	.  IN27(IN27_tb),
	.  IN28(IN28_tb),
	.  IN29(IN29_tb),
	.  IN30(IN30_tb),
	.  IN31(IN31_tb),
	
	.  OUT0_r(OUT0_r_tb),
	.  OUT0_i(OUT0_i_tb),
	.  OUT1_r(OUT1_r_tb),
	.  OUT1_i(OUT1_i_tb),
	.  OUT2_r(OUT2_r_tb),
	.  OUT2_i(OUT2_i_tb),
	.  OUT3_r(OUT3_r_tb),
	.  OUT3_i(OUT3_i_tb),
	.  OUT4_i(OUT4_i_tb),
	.  OUT4_r(OUT4_r_tb),
	.  OUT5_i(OUT5_i_tb),
	.  OUT5_r(OUT5_r_tb),
	.  OUT6_i(OUT6_i_tb),
	.  OUT6_r(OUT6_r_tb),
	.  OUT7_i(OUT7_i_tb),
	.  OUT7_r(OUT7_r_tb),
	.  OUT8_i(OUT8_i_tb),
	.  OUT8_r(OUT8_r_tb),
	.  OUT9_i(OUT9_i_tb),
	.  OUT9_r(OUT9_r_tb),
	.  OUT10_i(OUT10_i_tb),
	.  OUT10_r(OUT10_r_tb),
	.  OUT11_i(OUT11_i_tb),
	.  OUT11_r(OUT11_r_tb),
	.  OUT12_i(OUT12_i_tb),
	.  OUT12_r(OUT12_r_tb),
	.  OUT13_i(OUT13_i_tb),
	.  OUT13_r(OUT13_r_tb),
	.  OUT14_i(OUT14_i_tb),
	.  OUT14_r(OUT14_r_tb),
	.  OUT15_i(OUT15_i_tb),
	.  OUT15_r(OUT15_r_tb),
	.  OUT16_i(OUT16_i_tb),
	.  OUT16_r(OUT16_r_tb),
	.  OUT17_i(OUT17_i_tb),
	.  OUT17_r(OUT17_r_tb),
	.  OUT18_i(OUT18_i_tb),
	.  OUT18_r(OUT18_r_tb),
	.  OUT19_r(OUT19_r_tb),
	.  OUT19_i(OUT19_i_tb),
	.  OUT20_r(OUT20_r_tb),
	.  OUT20_i(OUT20_i_tb),
	.  OUT21_r(OUT21_r_tb),
	.  OUT21_i(OUT21_i_tb),
	.  OUT22_r(OUT22_r_tb),
	.  OUT22_i(OUT22_i_tb),
	.  OUT23_i(OUT23_i_tb),
	.  OUT23_r(OUT23_r_tb),
	.  OUT24_i(OUT24_i_tb),
	.  OUT24_r(OUT24_r_tb),
	.  OUT25_i(OUT25_i_tb),
	.  OUT25_r(OUT25_r_tb),
	.  OUT26_i(OUT26_i_tb),
	.  OUT26_r(OUT26_r_tb),
	.  OUT27_i(OUT27_i_tb),
	.  OUT27_r(OUT27_r_tb),
	.  OUT28_i(OUT28_i_tb),
	.  OUT28_r(OUT28_r_tb),
	.  OUT29_i(OUT29_i_tb),
	.  OUT29_r(OUT29_r_tb),
	.  OUT30_i(OUT30_i_tb),
	.  OUT30_r(OUT30_r_tb),
	.  OUT31_i(OUT31_i_tb),
	.  OUT31_r(OUT31_r_tb)
	);
	
endmodule
