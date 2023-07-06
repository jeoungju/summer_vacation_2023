`timescale 1ps/1ps
// 8bit ripple carry adder
module rca_8bit (
    input [7:0] A,
    input [7:0] B,
    input c_in,
    output [7:0] sum,
    output c_out
);  
    wire c_rca_4;
    
    rca_4bit rca_4bit_0(.A(A[3:0]), .B(B[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(c_rca_4));
    rca_4bit rca_4bit_1(.A(A[7:4]), .B(B[7:4]), .c_in(c_rca_4), .sum(sum[7:4]), .c_out(c_out));
endmodule