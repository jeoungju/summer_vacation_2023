`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    wire Q0;
    wire Q1;
    wire Q2;
    wire Q3;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
        #100;

        $stop;
    end

    ring_counter dut_ring_counter(
        .clk(clk),
        .n_rst(n_rst),
        .Q0(Q0),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3)
    );
endmodule