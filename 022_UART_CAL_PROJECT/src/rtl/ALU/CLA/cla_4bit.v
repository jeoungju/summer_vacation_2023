// 4bit Carry Look Adder
`timescale 1ps/1ps
module cla_4bit (
    input [3:0] A,
    input [3:0] B,
    input c_in,
    output [3:0] sum,
    output c_out
);
    wire [3:0] g;
    wire [3:0] p;
    wire [3:0] c;

    cla_unit_4bit CLA(.g(g), .p(p), .c_in(c_in), .c_out(c));

    full_adder f00(.A(A[0]), .B(B[0]), .c_in(c_in), .g(g[0]), .p(p[0]), .sum(sum[0]));
    full_adder f01(.A(A[1]), .B(B[1]), .c_in(c[0]), .g(g[1]), .p(p[1]), .sum(sum[1]));
    full_adder f02(.A(A[2]), .B(B[2]), .c_in(c[1]), .g(g[2]), .p(p[2]), .sum(sum[2]));
    full_adder f03(.A(A[3]), .B(B[3]), .c_in(c[2]), .g(g[3]), .p(p[3]), .sum(sum[3]));

    assign c_out = c[3];

endmodule