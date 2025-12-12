module lut4 (
    input  [3:0]  in,
    input  [15:0] sram,
    output out
);
    assign out = sram[in];
endmodule