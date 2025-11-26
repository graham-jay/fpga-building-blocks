`include "../rtl/mux2.sv"

module mux2_tb ();
    
    reg in1, in2, sel;
    wire out;

    mux2 DUT (
        .in1(in1),
        .in2(in2),
        .sel(sel),
        .out(out)
    );

    initial begin
        $display("Starting Tests");
        $display("--------------")
        in1 = 0; in2 = 0; sel = 0;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(0);
        in1 = 0; in2 = 0; sel = 1;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(0);
        in1 = 0; in2 = 1; sel = 0;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(0);
        in1 = 0; in2 = 1; sel = 1;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(1);
        in1 = 1; in2 = 0; sel = 0;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(1);
        in1 = 1; in2 = 0; sel = 1;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(0);
        in1 = 1; in2 = 1; sel = 0;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(1);
        in1 = 1; in2 = 1; sel = 1;
        %display("in1 = %b, in2 = %b, sel = %b, out = %b", in1, in2, sel, out)
        #1 check_output(1);
        $display("All tests PASSED");
        $finish;
    end

    task check_output(input reg value);
        begin
            if (out !== value) begin
                $display("FAIL : Output should be equal to %b but was equal to %b", value, out);
                $finish;
            end
        end
    endtask

endmodule
