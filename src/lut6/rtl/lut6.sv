module lut6 (
    input  in1,
    input  in2,
    input  in3, 
    input  in4,
    input  in5,
    input  in6,
    input  [63:0] sram,
    output out
);
    assign out = sram[{in1,in2,in3,in4,in5,in6}]
endmodule