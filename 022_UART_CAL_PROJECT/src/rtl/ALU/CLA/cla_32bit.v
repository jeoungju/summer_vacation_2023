//32bit carry look adder
`timescale 1ps/1ps
module cla_32bit (
    input [31:0] A,
    input [31:0] B,
    input c_in,
    output [31:0] sum,
    output c_out
);
    wire c; //c is c_out

    cla_16bit CLA00(.A(A[15:0]), .B(B[15:0]), .c_in(c_in), .sum(sum[15:0]), .c_out(c));
    cla_16bit CLA01(.A(A[31:16]), .B(B[31:16]), .c_in(c), .sum(sum[31:16]), .c_out(c_out));

endmodule