//Full Adder
`timescale 1ps/1ps
module full_adder (
    input A,
    input B,
    input c_in,
    output sum,
    output c_out
);
    wire sum_f;
    wire c_f0, c_f1;

    half_adder h01(
        .A(A), .B(B), .sum(sum_f), .c_out(c_f0)
    );
    half_adder h02(
        .A(sum_f), .B(c_in), .sum(sum), .c_out(c_f1)
    );

    assign c_out = c_f0 | c_f1;
endmodule