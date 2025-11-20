module mux2 (
    input  in1, in2, sel,
    output out
);
    if (sel) begin
        assign out = in2;
    end else begin
        assign out = in1;
    end
endmodule