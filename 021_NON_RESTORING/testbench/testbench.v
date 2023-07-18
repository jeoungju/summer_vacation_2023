`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg [3:0] M;
    reg [3:0] Q;
    reg start;
    wire [3:0] remain;
    wire [3:0] quotient;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        M = 4'b1011; //11
        Q = 4'b1111; //15
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #100;

        M = 4'b0011; //3
        Q = 4'b1111; //15
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #100;

        M = 4'b0011; //3
        Q = 4'b1011; //11
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #100;

        M = 4'b0100; //4
        Q = 4'b1100; //12
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #100;
        $stop;
    end

    divider dut_divider(
        .clk(clk),
        .n_rst(n_rst),
        .M(M),
        .Q(Q),
        .start(start),
        .remain(remain),
        .quotient(quotient)
    );

endmodule