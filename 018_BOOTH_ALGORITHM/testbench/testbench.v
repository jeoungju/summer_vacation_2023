`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg [5:0] M;
    reg [5:0] Q;
    reg start;
    wire [11:0] result;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        M = 6'b110_100; //-12
        Q = 6'b011_110; //30
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #500;


        $stop;
    end

    booth dut_booth(
        .clk(clk),
        .n_rst(n_rst),
        .M(M),
        .Q(Q),
        .start(start),
        .result(result)
    );

endmodule