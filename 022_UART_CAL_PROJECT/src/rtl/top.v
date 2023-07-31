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
    wire alu_done;
    wire [31:0] result;

    uart dut_uart (
        .clk(clk),
        .n_rst(n_rst),
        .rxd(rxd),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .tx_data(result),
        .txd(txd),
        .tx_valid(alu_done)
    );

    decorder dut_decorder (
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

endmodule