//Full Adder
// Gen enable Gi , Pi
`timescale 1ps/1ps
module full_adder (
    input A,
    input B,
    input c_in,
    output sum,
    output g,
    output p
);
    assign sum = A ^ B ^ c_in;
    assign g = A & B;
    assign p = A ^ B;
endmodule