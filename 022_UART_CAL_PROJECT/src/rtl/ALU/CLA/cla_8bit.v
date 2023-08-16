//8bit carry look adder
`timescale 1ps/1ps
module cla_8bit (
    input [7:0] A,
    input [7:0] B,
    input c_in,
    output [7:0] sum,
    output c_out
);
    wire c; //c is c_out

    cla_4bit CLA00(.A(A[3:0]), .B(B[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(c));
    cla_4bit CLA01(.A(A[7:4]), .B(B[7:4]), .c_in(c), .sum(sum[7:4]), .c_out(c_out));

endmodule