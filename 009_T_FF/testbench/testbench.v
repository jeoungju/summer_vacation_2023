`timescale 1ps/1ps
module testbench();

    reg clk;
    reg n_rst;
    reg t;
    wire Q;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        t = 1'b0;
        #21;
        t = 1'b1;
        #42;
        t = 1'b0;
        #21;
        t = 1'b1;
        #21;

        $stop;
    end


    t_ff dut_t_ff(
        .clk(clk),
        .n_rst(n_rst),
        .t(t),
        .Q(Q)
    );

    endmodule