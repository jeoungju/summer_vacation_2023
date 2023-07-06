`timescale 1ps/1ps
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

    H_A H_A01(.A(A), .B(B), .sum(sum_h), .c_out(c_h1));
    H_A H_A02(.A(sum_h), .B(c_in), .sum(sum), .c_out(c_h2));

    assign c_out = c_h1 | c_h2;
endmodule