module Control_Unit 
(
	input wire CLK,
	input wire RST,
	input wire EN,
	output reg E0,
	output reg E1,
	output reg E2,
	output reg E3,
	output reg E4,
	output wire [3:0] S
);

reg [3:0] counter;

assign  S = counter;

always@(*)
begin
	if (counter == 4'd0)
		begin
			E0=0;
			E1=0;
			E2=0;
			E3=0;
			E4=0;
		end
	if (counter == 4'd1)
		begin
			E0=1;
			E1=0;
			E2=0;
			E3=0;
			E4=0;
		end
	else if (counter == 4'd2)
		begin
			E0=0;
			E1=1;
			E2=0;
			E3=0;
			E4=0;
		end
	else if (counter ==4'd3)
		begin
			E0=0;
			E1=0;
			E2=1;
			E3=0;
			E4=0;
		end
	else if (counter == 4'd4)
		begin
			E0=0;
			E1=0;
			E2=0;
			E3=1;
			E4=0;
		end
	else if (counter == 4'd5)
		begin
			E0=0;
			E1=0;
			E2=0;
			E3=0;
			E4=1;
		end
end

always @(posedge CLK or negedge RST)
begin 
	if(!RST)
		begin
			counter<=0;
		end
	else
		begin
			if(EN)
				begin
					if (counter == 4'd5)
						begin 
							counter <= 4'd1;
						end
					else
						begin
							counter <= counter + 1;
						end
				end
			else 
				begin
					counter <= counter;
				end
		end
end

endmodule