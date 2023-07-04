`timescale 1ps/1ps
module testbench();

    reg clk;
    reg n_rst;
    reg R;
    reg S;
    wire Q;


    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #3 n_rst = 1'b1;
    end
    
    initial begin
        R = 1'b0;
        S = 1'b0;
        #21;
        R = 1'b1;
        S = 1'b0;
        #21;
        R = 1'b0;
        S = 1'b1;
        #21;
        R = 1'b1;
        S = 1'b0;
        #21;
        R = 1'b1;
        S = 1'b1;
        #21;

        $stop;
    end

    sr dut_sr(
        .clk(clk),
        .n_rst(n_rst),
        .R(R),
        .S(S),
        .Q(Q)
    );

endmodule