`include "../rtl/ble.sv"

module ble_tb ();

    ble DUT (
        .clk(clk),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .sram(sram),
        .sel(sel),
        .out(out)
    );

    initial begin

    end

    task check_output(input reg value);

    endtask

endmodule
