`timescale 1ps/1ps
module testbench();

    reg clk;
    reg n_rst;
    reg d;
    wire Q;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        d = 1'b0;
        #21;
        d = 1'b1;
        #42;
        d = 1'b0;
        #21;
        d = 1'b1;
        #21;

        $stop;
    end


    d_ff dut_d_ff(
        .clk(clk),
        .n_rst(n_rst),
        .d(d),
        .Q(Q)
    );

    endmodule