`timescale 1ps/1ps
//Half Adder
module H_A (
    input A,
    input B,
    output sum,
    output c_out
);
    assign sum = A ^ B;
    assign c_out = A & B;
endmodule