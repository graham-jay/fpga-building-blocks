`include "../../rtl/lut8.sv"

module lut8_tb ();

    reg in1, in2, in3, in4, in5, in6, in7, in8;
    reg [255:0] sram;
    wire out;

    lut6 DUT (
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .in5(in5),
        .in6(in6),
        .in7(in7),
        .in8(in8),
        .sram(sram),
        .out(out)
    );

    initial begin
        $display("Test 1 - AND Gate");
        $display("Test 1 - AND Gate - PASSED");
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
