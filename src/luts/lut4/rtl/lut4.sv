module lut4 (
    input  in1, in2, in3, in4,
    input  [15:0] sram,
    output out
);
    assign out = sram[{in1,in2,in3,in4}];
endmodule