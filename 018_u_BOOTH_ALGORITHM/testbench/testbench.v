`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg [31:0] M;
    reg [31:0] Q;
    reg start;
    wire [63:0] result;
    wire done;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin //테스트 벡터
    /*
        M = 32'h0000_0008; //8
        Q = 32'h0000_0014; //20
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #350;

        M = 32'h0000_fff8; //-8
        Q = 32'h0000_0010; //16
        #20;
        start = 1'b1;
        #10;
        start = 1'b0;
        #350;
        */

        M = 32'h0000_0005; //-43
        Q = 32'h0000_000f; //3
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #350;


        $stop;
    end

    booth_u dut_booth_u(
        .clk(clk),
        .n_rst(n_rst),
        .M(M),
        .Q(Q),
        .start(start),
        .result(result),
        .done(done)
    );

endmodule