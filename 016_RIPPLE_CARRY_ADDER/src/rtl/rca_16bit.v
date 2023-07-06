`timescale 1ps/1ps
//16bit ripple carry adder
module rca_16bit (
    input [15:0] A,
    input [15:0] B,
    input c_in,
    output [15:0] sum,
    output c_out
);  
    wire c_rca_8;
    
    rca_8bit rca_8bit_0(.A(A[7:0]), .B(B[7:0]), .c_in(c_in), .sum(sum[7:0]), .c_out(c_rca_8));
    rca_8bit rca_8bit_1(.A(A[15:8]), .B(B[15:8]), .c_in(c_rca_8), .sum(sum[15:8]), .c_out(c_out));
endmodule
