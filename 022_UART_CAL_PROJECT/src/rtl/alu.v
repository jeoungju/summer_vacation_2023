`timescale 1ps/1ps
module alu (
    input clk,
    input n_rst,
    input [3:0] dtype,
    input [4:0] op,
    input [15:0] src1,
    input [15:0] src2,
    input done,
    output alu_done,
    output [31:0] result
);
    wire [31:0] res_d_u; //result divider unsigned
    wire [31:0] res_m_u; //result multiplier unsigned
    wire [31:0] res_m_s; //result multiplier signed
    //wire [31:0] res_a_u; //result adder unsigned
    //wire [31:0] res_a_s; //result adder signed
    //wire [31:0] res_s_u; //result sub unsigned
    //wire [31:0] res_s_s; //result sub signed

    wire done_d_u;
    wire done_m_u;
    wire done_m_s;

    divider_u dut_divider_u (
        .clk(clk),
        .n_rst(n_rst),
        .M(src2),
        .Q(src1),
        .start(op[3]), // division
        .remain(res_d_u[15:0]),
        .quotient(res_d_u[31:16]),
        .done(done_d_u)
    );

    mul_s dut_mul_s (
        .clk(clk),
        .n_rst(n_rst),
        .M(src1),
        .Q(src2),
        .start(op[2]),
        .dtype(dtype),
        .result(res_m_s),
        .done(done_m_s)
    );

    mul_u dut_mul_u (
        .clk(clk),
        .n_rst(n_rst),
        .M(src1),
        .Q(src2),
        .start(op[2]),
        .dtype(dtype),
        .result(res_m_u),
        .done(done_m_u)
    );

    assign result = ((res_d_u) | (res_m_s) | (res_m_u));
    assign alu_done = ((done_d_u) | (done_m_s) | (done_m_u));

endmodule