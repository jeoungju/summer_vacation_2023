//16bit carry look adder
`timescale 1ps/1ps
module cla_16bit (
    input [15:0] A,
    input [15:0] B,
    input c_in,
    output [15:0] sum,
    output c_out
);
    wire c; //c is c_out

    cla_8bit CLA00(.A(A[7:0]), .B(B[7:0]), .c_in(c_in), .sum(sum[7:0]), .c_out(c));
    cla_8bit CLA01(.A(A[15:8]), .B(B[15:8]), .c_in(c), .sum(sum[15:8]), .c_out(c_out));

endmodule