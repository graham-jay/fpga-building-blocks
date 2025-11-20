`include "../../rtl/lut4.sv"

module lut4_tb ();

    reg in1, in2, in3, in4;
    reg [15:0] sram;
    wire out;

    lut4 DUT (
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .sram(sram),
        .out(out)
    );

    initial begin
        $display("Test 1 - AND Gate");
        sram = 16'b1000000000000000;
        in1 = 0; in2 = 0, in3 = 0, in4 = 0; #1 check_output(0);
        in1 = 0; in2 = 0, in3 = 0, in4 = 1; #1 check_output(0);
        in1 = 0; in2 = 0, in3 = 1, in4 = 0; #1 check_output(0);
        in1 = 0; in2 = 0, in3 = 1, in4 = 1; #1 check_output(0);
        in1 = 0; in2 = 1, in3 = 0, in4 = 0; #1 check_output(0);
        in1 = 0; in2 = 1, in3 = 0, in4 = 1; #1 check_output(0);
        in1 = 0; in2 = 1, in3 = 1, in4 = 0; #1 check_output(0);
        in1 = 0; in2 = 1, in3 = 1, in4 = 1; #1 check_output(0);
        in1 = 1; in2 = 0, in3 = 0, in4 = 0; #1 check_output(0);
        in1 = 1; in2 = 0, in3 = 0, in4 = 1; #1 check_output(0);
        in1 = 1; in2 = 0, in3 = 1, in4 = 0; #1 check_output(0);
        in1 = 1; in2 = 0, in3 = 1, in4 = 1; #1 check_output(0);
        in1 = 1; in2 = 1, in3 = 0, in4 = 0; #1 check_output(0);
        in1 = 1; in2 = 1, in3 = 0, in4 = 1; #1 check_output(0);
        in1 = 1; in2 = 1, in3 = 1, in4 = 0; #1 check_output(0);
        in1 = 1; in2 = 1, in3 = 1, in4 = 1; #1 check_output(1);
        $display("Test 1 - AND Gate - PASSED");

        $display("Test 2 - NAND Gate");
        sram = 16'b0111111111111111;
        in1 = 0; in2 = 0, in3 = 0, in4 = 0; #1 check_output(1);
        in1 = 0; in2 = 0, in3 = 0, in4 = 1; #1 check_output(1);
        in1 = 0; in2 = 0, in3 = 1, in4 = 0; #1 check_output(1);
        in1 = 0; in2 = 0, in3 = 1, in4 = 1; #1 check_output(1);
        in1 = 0; in2 = 1, in3 = 0, in4 = 0; #1 check_output(1);
        in1 = 0; in2 = 1, in3 = 0, in4 = 1; #1 check_output(1);
        in1 = 0; in2 = 1, in3 = 1, in4 = 0; #1 check_output(1);
        in1 = 0; in2 = 1, in3 = 1, in4 = 1; #1 check_output(1);
        in1 = 1; in2 = 0, in3 = 0, in4 = 0; #1 check_output(1);
        in1 = 1; in2 = 0, in3 = 0, in4 = 1; #1 check_output(1);
        in1 = 1; in2 = 0, in3 = 1, in4 = 0; #1 check_output(1);
        in1 = 1; in2 = 0, in3 = 1, in4 = 1; #1 check_output(1);
        in1 = 1; in2 = 1, in3 = 0, in4 = 0; #1 check_output(1);
        in1 = 1; in2 = 1, in3 = 0, in4 = 1; #1 check_output(1);
        in1 = 1; in2 = 1, in3 = 1, in4 = 0; #1 check_output(1);
        in1 = 1; in2 = 1, in3 = 1, in4 = 1; #1 check_output(0);
        $display("Test 2 - NAND Gate - PASSED");
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
