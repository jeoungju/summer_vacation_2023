`timescale 1ps/1ps
//4bit ripple carry adder
module rca_4bit (
    input [3:0] A,
    input [3:0] B,
    input c_in,
    output [3:0] sum,
    output c_out
);

    wire [2:0] c_f;

    F_A F_A0(.A(A[0]), .B(B[0]), .c_in(c_in), .sum(sum[0]), .c_out(c_f[0]));
    F_A F_A1(.A(A[1]), .B(B[1]), .c_in(c_f[0]), .sum(sum[1]), .c_out(c_f[1]));
    F_A F_A2(.A(A[2]), .B(B[2]), .c_in(c_f[1]), .sum(sum[2]), .c_out(c_f[2]));
    F_A F_A3(.A(A[3]), .B(B[3]), .c_in(c_f[2]), .sum(sum[3]), .c_out(c_out));
endmodule