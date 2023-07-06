`timescale 1ps/1ps
//32 bit ripple carry counter

/*
//Half Adder
module H_A (
    input A,
    input B,
    output sum,
    output carry
);
    assign sum = A ^ B;
    assign carry = A & B;
endmodule

//Full Adder
module F_A (
    input A,
    input B,
    input c_in,
    output sum,
    output c_out
);
    wire sum_h;
    wire c_h1;
    wire c_h2;

    H_A H_A01(.A(A), .B(B), .sum(sum_h), .carry(c_h1));
    H_A H_A02(.A(sum_h), .B(c_in), .sum(sum), .carry(c_h2));

    assign c_out = c_h1 | c_h2;
endmodule

//4bit ripple carry adder
module rca_4bit (
    input [3:0] A,
    input [3:0] B,
    input c_in,
    output [3:0] sum,
    output c_out
);
    wire [3:0] sum_f;
    wire c_f1, c_f2, c_f3;

    F_A F_A0(.A(A[0]), .B(B[0]), .c_in(c_in), .sum(sum[0]), .c_out(c_f1));
    F_A F_A1(.A(A[1]), .B(B[1]), .c_in(c_f1), .sum(sum[1]), .c_out(c_f2));
    F_A F_A2(.A(A[2]), .B(B[2]), .c_in(c_f2), .sum(sum[2]), .c_out(c_f3));
    F_A F_A3(.A(A[3]), .B(B[3]), .c_in(c_f3), .sum(sum[3]), .c_out(c_out));
endmodule

module rca_8bit (
    input [7:0] A,
    input [7:0] B,
    input c_in,
    output [7:0] sum,
    output c_out
);  
    wire [7:0] sum_rca_4;
    wire c_rca_4;
    
    rca_4bit rca_4bit_0(.A(A[3:0]), .B(B[3:0]), .c_in(c_in), .sum(sum_rca_4[3:0]), .c_out(c_rca_4));
    rca_4bit rca_4bit_1(.A(A[7:4]), .B(B[7:4]), .c_in(c_rca_4), .sum(sum_rca_4[7:4]), .c_out(c_out));
endmodule

module rca_16bit (
    input [15:0] A,
    input [15:0] B,
    input c_in,
    output [15:0] sum,
    output c_out
);  
    wire [15:0] sum_rca_8;
    wire c_rca_8;
    
    rca_8bit rca_8bit_0(.A(A[7:0]), .B(B[7:0]), .c_in(c_in), .sum(sum_rca_8[7:0]), .c_out(c_rca_8));
    rca_8bit rca_8bit_1(.A(A[15:8]), .B(B[15:8]), .c_in(c_rca_8), .sum(sum_rca_8[15:8]), .c_out(c_out));
endmodule

*/

module rca_32bit (
    input [31:0] A,
    input [31:0] B,
    input c_in,
    output [31:0] sum,
    output c_out
);  
    wire c_rca_16;
    
    rca_16bit rca_16bit_0(.A(A[15:0]), .B(B[15:0]), .c_in(c_in), .sum(sum[15:0]), .c_out(c_rca_16));
    rca_16bit rca_16bit_1(.A(A[31:16]), .B(B[31:16]), .c_in(c_rca_16), .sum(sum[31:16]), .c_out(c_out));
endmodule