`timescale 1ps/1ps
module top (
    input clk,
    input n_rst,

    input rxd,
    output txd
);
    wire [7:0] rx_data;
    wire rx_valid;
    wire [3:0] dtype;
    wire [4:0] op;
    wire [15:0] src1;
    wire [15:0] src2;
    wire done;

    //alu sig
    wire alu_done;
    wire [31:0] result;

    //encorder sig
    wire [7:0] uart_out;
    wire uart_valid;
    wire tx_done;

    uart dut_uart (
        .clk(clk),
        .n_rst(n_rst),
        .rxd(rxd),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .tx_data(uart_out),
        .txd(txd),
        .tx_valid(uart_valid),
        .tx_done(tx_done)
    );

    decorder d1 (
        .clk(clk),
        .n_rst(n_rst),
        .data(rx_data),
        .valid(rx_valid),
        .dtype(dtype),
        .op(op),
        .src1(src1),
        .src2(src2),
        .done(done)
    );

    alu dut_alu (
        .clk(clk),
        .n_rst(n_rst),
        .dtype(dtype),
        .op(op),
        .src1(src1),
        .src2(src2),
        .start(done),
        .alu_done(alu_done),
        .result(result)
    );

    encorder dut_encorder (
        .clk(clk),
        .n_rst(n_rst),
        .alu_done(alu_done),
        .result(result),
        .uart_out(uart_out),
        .uart_valid(uart_valid),
        .tx_done(tx_done)
    );



endmodule