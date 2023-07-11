`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg [31:0] A;
    reg [31:0] B;
    wire [31:0] result;

    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        A = 32'h0000_0008; //8
        B = 32'h0000_0014; //20
        #20;
        A = 32'hffff_fff8; //-8
        B = 32'h0000_0010; //16
        #20;
        A = 32'hffff_ffd5; //-43
        B = 32'h0000_0003; //3
        #20;
        A = 32'hffff_ffd5; //-43
        B = 32'h7000_0003; //3
        #20;
        A = 32'hf000_0005;
        B = 32'h7fff_ffff; 
        #20;
        A = 32'hf000_0004;
        B = 32'h7fff_ffff; 
        #20;
        B = 32'hf000_0004;
        A = 32'h7fff_ffff; 
        #20;

        $stop;
    end

    substraction dut_substraction(
        .clk(clk),
        .n_rst(n_rst),
        .A(A),
        .B(B),
        .result(result)
    );

endmodule