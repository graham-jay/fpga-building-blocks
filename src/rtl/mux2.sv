module mux2 (
    input  in1, in2, sel,
    output out
);
    assign out = sel ? in2 : in1;
endmodule