// 4bit Carry Look Adder
`timescale 1ps/1ps
module cla_4bit (
    input [3:0] A,
    input [3:0] B,
    input c_in,
    output [3:0] sum,
    output c_out
);
    wire [2:0] c_cla4;

    full_adder f00(.A(), .B(), .c_in(), .sum(), .c_out());
    full_adder f01(.A(), .B(), .c_in(), .sum(), .c_out());
    full_adder f02(.A(), .B(), .c_in(), .sum(), .c_out());
    full_adder f03(.A(), .B(), .c_in(), .sum(), .c_out());

endmodule