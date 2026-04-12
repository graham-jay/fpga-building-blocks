module clb (
    input  clk,
    input  [15:0] in,
    input  [63:0] sram,
    input  [3:0]  sel,
    output [3:0]  out
);

ble u_ble0 (
    .clk(clk),
    .in(in[3:0]),
    .sram(sram[15:0]),
    .sel(sel[0]),
    .out(out[0])
);

ble u_ble1 (
    .clk(clk),
    .in(in[7:4]),
    .sram(sram[31:16]),
    .sel(sel[1]),
    .out(out[1])
);

ble u_ble2 (
    .clk(clk),
    .in(in[11:8]),
    .sram(sram[47:32]),
    .sel(sel[2]),
    .out(out[2])
);

ble u_ble3 (
    .clk(clk),
    .in(in[15:12]),
    .sram(sram[63:48]),
    .sel(sel[3]),
    .out(out[3])
);

endmodule