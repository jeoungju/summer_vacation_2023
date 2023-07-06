//Half Adder
`timescale 1ps/1ps
module half_adder (
    input A,
    input B,
    output sum,
    output c_out
);
    assign sum = A ^ B;
    assign c_out = A & B;
endmodule