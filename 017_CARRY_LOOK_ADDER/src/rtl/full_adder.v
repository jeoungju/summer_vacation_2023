//Full Adder
// Gen enable Gi , Pi
`timescale 1ps/1ps
module full_adder (
    input A,
    input B,
    input c_in,
    output sum,
    output p,
    output g
);
    //wire sum_f;
    wire c_f0, c_f1;

    half_adder h01(
        .A(A), .B(B), .c_out(c_f0)
    );
    half_adder h02(
        .A(sum_f), .B(c_in), .c_out(c_f1)
    );

endmodule