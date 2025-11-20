module dff (
    input  clk, rst,
    input  D,
    output Q,
);
    always @(posedge clk)
        if (rst)
            assign Q = 0;
        else
            assign Q = D;
endmodule