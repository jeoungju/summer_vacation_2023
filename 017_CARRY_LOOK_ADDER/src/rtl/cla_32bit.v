//32bit carry look adder
`timescale 1ps/1ps
module cla_32bit (
    input [31:0] A,
    input [31:0] B,
    input c_in,
    output [31:0] sum,
    output c_out
);
    wire [6:0] c;

    cla_4bit CLA00(.A(A[3:0]), .B(B[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(c[0]));
    cla_4bit CLA01(.A(A[7:4]), .B(B[7:4]), .c_in(c[0]), .sum(sum[7:4]), .c_out(c[1]));
    cla_4bit CLA02(.A(A[11:8]), .B(B[11:8]), .c_in(c[1]), .sum(sum[11:8]), .c_out(c[2]));
    cla_4bit CLA03(.A(A[15:12]), .B(B[15:12]), .c_in(c[2]), .sum(sum[15:12]), .c_out(c[3]));
    cla_4bit CLA04(.A(A[19:16]), .B(B[19:16]), .c_in(c[3]), .sum(sum[19:16]), .c_out(c[4]));
    cla_4bit CLA05(.A(A[23:20]), .B(B[23:20]), .c_in(c[4]), .sum(sum[23:20]), .c_out(c[5]));
    cla_4bit CLA06(.A(A[27:24]), .B(B[27:24]), .c_in(c[5]), .sum(sum[27:24]), .c_out(c[6]));
    cla_4bit CLA07(.A(A[31:28]), .B(B[31:28]), .c_in(c[6]), .sum(sum[31:28]), .c_out(c_out));

endmodule