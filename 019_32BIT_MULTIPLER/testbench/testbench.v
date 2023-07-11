`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg [31:0] M;
    reg [31:0] Q;
    reg start;
    wire [63:0] result;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        M = 32'h0000_0008; //8
        Q = 32'h0000_0014; //20
        start = 1'b0;
        #21;
        start = 1'b1;
        #10;
        start = 1'b0;
        #350;

        M = 32'hffff_fff8; //-8
        Q = 32'h0000_0010; //16
        #20;
        start = 1'b1;
        #10;
        start = 1'b0;
        #350;

        M = 32'hffff_ffd5; //-43
        Q = 32'h0000_0003; //3
        #20;
        start = 1'b1;
        #10;
        start = 1'b0;
        #350;


        $stop;
    end

    booth_32 dut_booth_32(
        .clk(clk),
        .n_rst(n_rst),
        .M(M),
        .Q(Q),
        .start(start),
        .result(result)
    );

endmodule