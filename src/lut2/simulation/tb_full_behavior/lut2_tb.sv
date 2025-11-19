`include "../../rtl/lut2.sv"

module lut2_tb ();

    reg in1, in2;
    reg [3:0] sram;
    wire out;

    lut2 DUT (
        .in1(in1),
        .in2(in2),
        .sram(sram),
        .out(out)
    );

    initial begin
        $display("Test 1 - AND Gate");
        sram = 4'b1000;
        in1 = 0; in2 = 0;
        #1 check_output(0);
        in1 = 0; in2 = 1;
        #1 check_output(0);
        in1 = 1; in2 = 0;
        #1 check_output(0);
        in1 = 1; in2 = 1;
        #1 check_output(1);
        $display("Test 1 - AND Gate - PASSED");

        $display("Test 2 - NAND Gate");
        sram = 4'b0111;
        in1 = 0; in2 = 0;
        #1 check_output(1);
        in1 = 0; in2 = 1;
        #1 check_output(1);
        in1 = 1; in2 = 0;
        #1 check_output(1);
        in1 = 1; in2 = 1;
        #1 check_output(0);
        $display("Test 2 - NAND Gate - PASSED");

        $display("Test 3 - OR Gate");
        sram = 4'b1110;
        in1 = 0; in2 = 0;
        #1 check_output(0);
        in1 = 0; in2 = 1;
        #1 check_output(1);
        in1 = 1; in2 = 0;
        #1 check_output(1);
        in1 = 1; in2 = 1;
        #1 check_output(1);
        $display("Test 3 - OR Gate - PASSED");

        $display("Test 4 - NOR Gate");
        sram = 4'b0001;
        in1 = 0; in2 = 0;
        #1 check_output(1);
        in1 = 0; in2 = 1;
        #1 check_output(0);
        in1 = 1; in2 = 0;
        #1 check_output(0);
        in1 = 1; in2 = 1;
        #1 check_output(0);
        $display("Test 4 - NOR Gate - PASSED");

        $display("Test 5 - XOR Gate");
        sram = 4'b0110;
        in1 = 0; in2 = 0;
        #1 check_output(0);
        in1 = 0; in2 = 1;
        #1 check_output(1);
        in1 = 1; in2 = 0;
        #1 check_output(1);
        in1 = 1; in2 = 1;
        #1 check_output(0);
        $display("Test 5 - XOR Gate - PASSED");

        $display("Test 6 - XNOR Gate");
        sram = 4'b1001;
        in1 = 0; in2 = 0;
        #1 check_output(1);
        in1 = 0; in2 = 1;
        #1 check_output(0);
        in1 = 1; in2 = 0;
        #1 check_output(0);
        in1 = 1; in2 = 1;
        #1 check_output(1);
        $display("Test 6 - XNOR Gate - PASSED");
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
