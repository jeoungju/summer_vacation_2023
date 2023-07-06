//Gen enable Gi, Pi
`timescale 1ps/1ps
module gen_gp (
    input A,
    input B,
    input c_in,
    output sum,
    output g,
    output p
);
    wire c_in_gp;

    full_adder f_gp (.A(A), .B(B), .c_in(c_in_gp), .c_out(c_in));
    
    assign sum = A ^ B ^ c_in;
    assign g = A & B;
    assign p = A | B;
endmodule