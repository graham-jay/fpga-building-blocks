module lut2 (
    input  in1, in2,
    input  [3:0] sram,
    output out
);
    assign out = sram[{in1,in2}];
endmodule