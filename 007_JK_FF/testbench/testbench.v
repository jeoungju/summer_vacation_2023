`timescale 1ps/1ps
module testbench();

    reg clk;
    reg n_rst;
    reg K;
    reg J;
    wire Q;


    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #3 n_rst = 1'b1;
    end
    
    initial begin
        K = 1'b0;
        J = 1'b0;
        #21;
        K = 1'b1;
        J = 1'b0;
        #21;
        K = 1'b0;
        J = 1'b1;
        #21;
        K = 1'b1;
        J = 1'b0;
        #21;
        K = 1'b1;
        J = 1'b1;
        #21;

        $stop;
    end

    jk dut_jk(
        .clk(clk),
        .n_rst(n_rst),
        .K(K),
        .J(J),
        .Q(Q)
    );

endmodule