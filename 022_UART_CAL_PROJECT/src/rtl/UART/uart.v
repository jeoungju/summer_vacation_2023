`timescale 1ps/1ps
module uart (
    input clk,
    input n_rst,

    input rxd,
    output [7:0] rx_data,
    output rx_valid,

    input [7:0] tx_data,
    output txd,
    input tx_valid
);

    wire txen;
    wire rxen;

    gen_en dut_gen_en (
        .clk(clk),
        .n_rst(n_rst),
        .txen(txen),
        .rxen(rxen)
    );

    rx dut_rx (
        .clk(clk),
        .n_rst(n_rst),
        .rxen(rxen),
        .rxd(rxd),
        .rx_data(rx_data),
        .valid(rx_valid)
    );

    tx dut_tx (
        .clk(clk),
        .n_rst(n_rst),
        .txen(txen),
        .tx_data(tx_data),
        .txd(txd),
        .valid(tx_valid)
    );

endmodule

