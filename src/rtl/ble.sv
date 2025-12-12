module ble (
    input  clk,
    input  [3:0]  in,
    input  [15:0] sram,
    input  sel,
    output out
);

wire   lut_out;
wire   dff_out;

lut4 u_lut (
    .in(in),
    .sram(sram),
    .out(lut_out)
);

dff u_dff (
    .clk(clk),
    .D(lut_out),
    .Q(dff_out)
);

mux2 u_mux (
    .in1(lut_out),
    .in2(dff_out),
    .sel(sel),
    .out(out)
);

endmodule