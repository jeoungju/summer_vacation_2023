`timescale 1ps/1ps
module testbench();

    reg clk;
    reg n_rst;
    reg [4:0] data;
    reg start;
    wire [5:0] even_parity;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        start = 1'b0;
        data = 5'h01;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;

        #70;
        data = 5'h17;
        #10;
        start = 1'b1;
        #10;
        start = 1'b0;

        #70;
        data = 5'h0e;
        #10;
        start = 1'b1;
        #10;
        start = 1'b0;

        #100;

        $stop;
    end

    parity dut_parity(
        .clk(clk),
        .n_rst(n_rst),
        .data(data),
        .start(start),
        .even_parity(even_parity)
    );

    endmodule