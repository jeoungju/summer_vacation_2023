`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg x;
    wire Q0;
    wire Q1;
    wire Q2;
    wire Q3;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        x = 1'b0;
        #12;
        x = 1'b1;
        #12;
        x = 1'b0;
        #12;
        x = 1'b1;
        #36;
        x = 1'b0;
        #24;
        x = 1'b1;
        #50;

        $stop;
    end

    shift_register dut_shift_register(
        .clk(clk),
        .n_rst(n_rst),
        .x(x),
        .Q0(Q0),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3)
    );
endmodule