module negative #(parameter I=19, parameter F=11)
(
    input [I+2*F-1:0] IN,
    output [I+2*F-1:0] OUT

    );
    
    assign OUT = ~IN+1'b1;
endmodule
