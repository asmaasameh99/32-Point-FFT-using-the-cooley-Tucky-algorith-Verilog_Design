module Regfile #(parameter I=19, parameter F=11)
(
	input wire CLK,
	input wire RST,
	input wire EN,
	
	input wire signed [I+F-1:0] IN_0_r,
	input wire signed [I+F-1:0] IN_1_r,
	input wire signed [I+F-1:0] IN_2_r,
	input wire signed [I+F-1:0] IN_3_r,
	input wire signed [I+F-1:0] IN_4_r,
	input wire signed [I+F-1:0] IN_5_r,
	input wire signed [I+F-1:0] IN_6_r,
	input wire signed [I+F-1:0] IN_7_r,
	input wire signed [I+F-1:0] IN_8_r,
	input wire signed [I+F-1:0] IN_9_r,
	input wire signed [I+F-1:0] IN_10_r,
	input wire signed [I+F-1:0] IN_11_r,
	input wire signed [I+F-1:0] IN_12_r,
	input wire signed [I+F-1:0] IN_13_r,
	input wire signed [I+F-1:0] IN_14_r,
	input wire signed [I+F-1:0] IN_15_r,
	input wire signed [I+F-1:0] IN_16_r,
	input wire signed [I+F-1:0] IN_17_r,
	input wire signed [I+F-1:0] IN_18_r,
	input wire signed [I+F-1:0] IN_19_r,
	input wire signed [I+F-1:0] IN_20_r,
	input wire signed [I+F-1:0] IN_21_r,
	input wire signed [I+F-1:0] IN_22_r,
	input wire signed [I+F-1:0] IN_23_r,
	input wire signed [I+F-1:0] IN_24_r,
	input wire signed [I+F-1:0] IN_25_r,
	input wire signed [I+F-1:0] IN_26_r,
	input wire signed [I+F-1:0] IN_27_r,
	input wire signed [I+F-1:0] IN_28_r,
	input wire signed [I+F-1:0] IN_29_r,
	input wire signed [I+F-1:0] IN_30_r,
	input wire signed [I+F-1:0] IN_31_r,
	
	input wire signed [I+F-1:0] IN_0_i,
	input wire signed [I+F-1:0] IN_1_i,
	input wire signed [I+F-1:0] IN_2_i,
	input wire signed [I+F-1:0] IN_3_i,
	input wire signed [I+F-1:0] IN_4_i,
	input wire signed [I+F-1:0] IN_5_i,
	input wire signed [I+F-1:0] IN_6_i,
	input wire signed [I+F-1:0] IN_7_i,
	input wire signed [I+F-1:0] IN_8_i,
	input wire signed [I+F-1:0] IN_9_i,
	input wire signed [I+F-1:0] IN_10_i,
	input wire signed [I+F-1:0] IN_11_i,
	input wire signed [I+F-1:0] IN_12_i,
	input wire signed [I+F-1:0] IN_13_i,
	input wire signed [I+F-1:0] IN_14_i,
	input wire signed [I+F-1:0] IN_15_i,
	input wire signed [I+F-1:0] IN_16_i,
	input wire signed [I+F-1:0] IN_17_i,
	input wire signed [I+F-1:0] IN_18_i,
	input wire signed [I+F-1:0] IN_19_i,
	input wire signed [I+F-1:0] IN_20_i,
	input wire signed [I+F-1:0] IN_21_i,
	input wire signed [I+F-1:0] IN_22_i,
	input wire signed [I+F-1:0] IN_23_i,
	input wire signed [I+F-1:0] IN_24_i,
	input wire signed [I+F-1:0] IN_25_i,
	input wire signed [I+F-1:0] IN_26_i,
	input wire signed [I+F-1:0] IN_27_i,
	input wire signed [I+F-1:0] IN_28_i,
	input wire signed [I+F-1:0] IN_29_i,
	input wire signed [I+F-1:0] IN_30_i,
	input wire signed [I+F-1:0] IN_31_i,
	
	
	output reg signed [I+F-1:0] OUT_0_r,
	output reg signed [I+F-1:0] OUT_1_r,
	output reg signed [I+F-1:0] OUT_2_r,
	output reg signed [I+F-1:0] OUT_3_r,
	output reg signed [I+F-1:0] OUT_4_r,
	output reg signed [I+F-1:0] OUT_5_r,
	output reg signed [I+F-1:0] OUT_6_r,
	output reg signed [I+F-1:0] OUT_7_r,
	output reg signed [I+F-1:0] OUT_8_r,
	output reg signed [I+F-1:0] OUT_9_r,
	output reg signed [I+F-1:0] OUT_10_r,
	output reg signed [I+F-1:0] OUT_11_r,
	output reg signed [I+F-1:0] OUT_12_r,
	output reg signed [I+F-1:0] OUT_13_r,
	output reg signed [I+F-1:0] OUT_14_r,
	output reg signed [I+F-1:0] OUT_15_r,
	output reg signed [I+F-1:0] OUT_16_r,
	output reg signed [I+F-1:0] OUT_17_r,
	output reg signed [I+F-1:0] OUT_18_r,
	output reg signed [I+F-1:0] OUT_19_r,
	output reg signed [I+F-1:0] OUT_20_r,
	output reg signed [I+F-1:0] OUT_21_r,
	output reg signed [I+F-1:0] OUT_22_r,
	output reg signed [I+F-1:0] OUT_23_r,
	output reg signed [I+F-1:0] OUT_24_r,
	output reg signed [I+F-1:0] OUT_25_r,
	output reg signed [I+F-1:0] OUT_26_r,
	output reg signed [I+F-1:0] OUT_27_r,
	output reg signed [I+F-1:0] OUT_28_r,
	output reg signed [I+F-1:0] OUT_29_r,
	output reg signed [I+F-1:0] OUT_30_r,
	output reg signed [I+F-1:0] OUT_31_r,
	
	output reg signed [I+F-1:0] OUT_0_i,
	output reg signed [I+F-1:0] OUT_1_i,
	output reg signed [I+F-1:0] OUT_2_i,
	output reg signed [I+F-1:0] OUT_3_i,
	output reg signed [I+F-1:0] OUT_4_i,
	output reg signed [I+F-1:0] OUT_5_i,
	output reg signed [I+F-1:0] OUT_6_i,
	output reg signed [I+F-1:0] OUT_7_i,
	output reg signed [I+F-1:0] OUT_8_i,
	output reg signed [I+F-1:0] OUT_9_i,
	output reg signed [I+F-1:0] OUT_10_i,
	output reg signed [I+F-1:0] OUT_11_i,
	output reg signed [I+F-1:0] OUT_12_i,
	output reg signed [I+F-1:0] OUT_13_i,
	output reg signed [I+F-1:0] OUT_14_i,
	output reg signed [I+F-1:0] OUT_15_i,
	output reg signed [I+F-1:0] OUT_16_i,
	output reg signed [I+F-1:0] OUT_17_i,
	output reg signed [I+F-1:0] OUT_18_i,
	output reg signed [I+F-1:0] OUT_19_i,
	output reg signed [I+F-1:0] OUT_20_i,
	output reg signed [I+F-1:0] OUT_21_i,
	output reg signed [I+F-1:0] OUT_22_i,
	output reg signed [I+F-1:0] OUT_23_i,
	output reg signed [I+F-1:0] OUT_24_i,
	output reg signed [I+F-1:0] OUT_25_i,
	output reg signed [I+F-1:0] OUT_26_i,
	output reg signed [I+F-1:0] OUT_27_i,
	output reg signed [I+F-1:0] OUT_28_i,
	output reg signed [I+F-1:0] OUT_29_i,
	output reg signed [I+F-1:0] OUT_30_i,
	output reg signed [I+F-1:0] OUT_31_i
	
);



always @(posedge CLK or negedge RST)
begin 
	if(!RST)
		begin
			OUT_0_r <= 0;
			OUT_1_r <= 0;
			OUT_2_r <= 0;
			OUT_3_r <= 0;
			OUT_4_r <= 0;
			OUT_5_r <= 0;
			OUT_6_r <= 0;
			OUT_7_r <= 0;
			OUT_8_r <= 0;
			OUT_9_r <= 0;
			OUT_10_r <= 0;
			OUT_11_r <= 0;
			OUT_12_r <= 0;
			OUT_13_r <= 0;
			OUT_14_r <= 0;
			OUT_15_r <= 0;
			OUT_16_r <= 0;
			OUT_17_r <= 0;
			OUT_18_r <= 0;
			OUT_19_r <= 0;
			OUT_20_r <= 0;
			OUT_21_r <= 0;
			OUT_22_r<= 0;
			OUT_23_r <= 0;
			OUT_24_r <= 0;
			OUT_25_r <= 0;
			OUT_26_r <= 0;
			OUT_27_r<= 0;
			OUT_28_r <= 0;
			OUT_29_r <= 0;
			OUT_30_r <= 0;
			OUT_31_r <= 0;
			
			OUT_0_i <= 0;
			OUT_1_i <= 0;
			OUT_2_i <= 0;
			OUT_3_i <= 0;
			OUT_4_i <= 0;
			OUT_5_i <= 0;
			OUT_6_i <= 0;
			OUT_7_i <= 0;
			OUT_8_i <= 0;
			OUT_9_i <= 0;
			OUT_10_i <= 0;
			OUT_11_i <= 0;
			OUT_12_i <= 0;
			OUT_13_i <= 0;
			OUT_14_i <= 0;
			OUT_15_i <= 0;
			OUT_16_i <= 0;
			OUT_17_i <= 0;
			OUT_18_i <= 0;
			OUT_19_i <= 0;
			OUT_20_i <= 0;
			OUT_21_i <= 0;
			OUT_22_i<= 0;
			OUT_23_i <= 0;
			OUT_24_i <= 0;
			OUT_25_i <= 0;
			OUT_26_i <= 0;
			OUT_27_i<= 0;
			OUT_28_i <= 0;
			OUT_29_i <= 0;
			OUT_30_i <= 0;
			OUT_31_i <= 0;
		end
	else
		begin
			if ( EN )
				begin
					OUT_0_r <= IN_0_r;
					OUT_1_r <= IN_1_r;
					OUT_2_r <= IN_2_r;
					OUT_3_r <= IN_3_r;
					OUT_4_r <= IN_4_r;
					OUT_5_r <= IN_5_r;
					OUT_6_r <= IN_6_r;
					OUT_7_r <= IN_7_r;
					OUT_8_r <= IN_8_r;
					OUT_9_r  <= IN_9_r;
					OUT_10_r <= IN_10_r;
					OUT_11_r <= IN_11_r;
					OUT_12_r <= IN_12_r;
					OUT_13_r <= IN_13_r;
					OUT_14_r <= IN_14_r;
					OUT_15_r <= IN_15_r;
					OUT_16_r <= IN_16_r;
					OUT_17_r <= IN_17_r;
					OUT_18_r <= IN_18_r;
					OUT_19_r <= IN_19_r;
					OUT_20_r <= IN_20_r;
					OUT_21_r <= IN_21_r;
					OUT_22_r <= IN_22_r;
					OUT_23_r <= IN_23_r;
					OUT_24_r <= IN_24_r;
					OUT_25_r <= IN_25_r;
					OUT_26_r <= IN_26_r;
					OUT_27_r <= IN_27_r;
					OUT_28_r <= IN_28_r;
					OUT_29_r <= IN_29_r;
					OUT_30_r <= IN_30_r;
					OUT_31_r <= IN_31_r;
					
					OUT_0_i <= IN_0_i;
					OUT_1_i <= IN_1_i;
					OUT_2_i <= IN_2_i;
					OUT_3_i <= IN_3_i;
					OUT_4_i <= IN_4_i;
					OUT_5_i <= IN_5_i;
					OUT_6_i <= IN_6_i;
					OUT_7_i <= IN_7_i;
					OUT_8_i <= IN_8_i;
					OUT_9_i  <= IN_9_i;
					OUT_10_i <= IN_10_i;
					OUT_11_i <= IN_11_i;
					OUT_12_i <= IN_12_i;
					OUT_13_i <= IN_13_i;
					OUT_14_i <= IN_14_i;
					OUT_15_i <= IN_15_i;
					OUT_16_i <= IN_16_i;
					OUT_17_i <= IN_17_i;
					OUT_18_i <= IN_18_i;
					OUT_19_i <= IN_19_i;
					OUT_20_i <= IN_20_i;
					OUT_21_i <= IN_21_i;
					OUT_22_i <= IN_22_i;
					OUT_23_i <= IN_23_i;
					OUT_24_i <= IN_24_i;
					OUT_25_i <= IN_25_i;
					OUT_26_i <= IN_26_i;
					OUT_27_i <= IN_27_i;
					OUT_28_i <= IN_28_i;
					OUT_29_i <= IN_29_i;
					OUT_30_i <= IN_30_i;
					OUT_31_i <= IN_31_i;
				end
			else
				begin
					OUT_0_r <= OUT_0_r;
					OUT_1_r <= OUT_1_r;
					OUT_2_r <= OUT_2_r;
					OUT_3_r <= OUT_3_r;
					OUT_4_r <= OUT_4_r;
					OUT_5_r <= OUT_5_r;
					OUT_6_r <= OUT_6_r;
					OUT_7_r <= OUT_7_r;
					OUT_8_r <= OUT_8_r;
					OUT_9_r  <= OUT_9_r;
					OUT_10_r <= OUT_10_r;
					OUT_11_r <= OUT_11_r;
					OUT_12_r <= OUT_12_r;
					OUT_13_r <= OUT_13_r;
					OUT_14_r <= OUT_14_r;
					OUT_15_r <= OUT_15_r;
					OUT_16_r <= OUT_16_r;
					OUT_17_r <= OUT_17_r;
					OUT_18_r <= OUT_18_r;
					OUT_19_r <= OUT_19_r;
					OUT_20_r <= OUT_20_r;
					OUT_21_r <= OUT_21_r;
					OUT_22_r <= OUT_22_r;
					OUT_23_r <= OUT_23_r;
					OUT_24_r <= OUT_24_r;
					OUT_25_r <= OUT_25_r;
					OUT_26_r <= OUT_26_r;
					OUT_27_r <= OUT_27_r;
					OUT_28_r <= OUT_28_r;
					OUT_29_r <= OUT_29_r;
					OUT_30_r <= OUT_30_r;
					OUT_31_r <= OUT_31_r;
					
					OUT_0_i <= OUT_0_i;
					OUT_1_i <= OUT_1_i;
					OUT_2_i <= OUT_2_i;
					OUT_3_i <= OUT_3_i;
					OUT_4_i <= OUT_4_i;
					OUT_5_i <= OUT_5_i;
					OUT_6_i <= OUT_6_i;
					OUT_7_i <= OUT_7_i;
					OUT_8_i <= OUT_8_i;
					OUT_9_i  <= OUT_9_i;
					OUT_10_i <= OUT_10_i;
					OUT_11_i <= OUT_11_i;
					OUT_12_i <= OUT_12_i;
					OUT_13_i <= OUT_13_i;
					OUT_14_i <= OUT_14_i;
					OUT_15_i <= OUT_15_i;
					OUT_16_i <= OUT_16_i;
					OUT_17_i <= OUT_17_i;
					OUT_18_i <= OUT_18_i;
					OUT_19_i <= OUT_19_i;
					OUT_20_i <= OUT_20_i;
					OUT_21_i <= OUT_21_i;
					OUT_22_i <= OUT_22_i;
					OUT_23_i <= OUT_23_i;
					OUT_24_i <= OUT_24_i;
					OUT_25_i <= OUT_25_i;
					OUT_26_i <= OUT_26_i;
					OUT_27_i <= OUT_27_i;
					OUT_28_i <= OUT_28_i;
					OUT_29_i <= OUT_29_i;
					OUT_30_i <= OUT_30_i;
					OUT_31_i <= OUT_31_i;
				end
		end
end

endmodule