module ADDER #(parameter I=19, parameter F=11)
(  
    input wire signed [I+2*F-1:0] IN1,
    input wire signed [I+2*F-1:0] IN2,
    output wire signed [I+2*F-1:0] OUT

    );
    
    assign OUT = IN1+IN2;
    
endmodule
