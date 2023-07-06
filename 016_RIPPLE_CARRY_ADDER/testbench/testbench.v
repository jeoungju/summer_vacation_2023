`timescale 1ps/1ps
module testbench();
    reg [31:0] A;
    reg [31:0] B;
    reg c_in;
    wire [31:0] sum;
    //reg [3:0] A;
    //reg [3:0] B;
    //wire [3:0] sum;
    wire c_out;

    initial begin
        A=32'h0000ffff;
        B=32'h0000ffff;
        c_in=1'b0;
        
        #20;
        A = 32'hf000ffff;
        B = 32'h1000ffff;
        #20;
        $stop;
    end

    /*rca_4bit rca4(
        .A(A),
        .B(B),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );*/


    rca_32bit dut_rca_32bit(
        .A(A),
        .B(B),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );
endmodule