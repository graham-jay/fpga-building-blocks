`include "../rtl/dff.sv"

module dff_tb ();

    reg clk, D, Q;

    dff DUT (
        .clk(clk),
        .D(D),
        .Q(Q)
    );

    initial begin

    end

    task check_output(input reg value);

    endtask

endmodule
