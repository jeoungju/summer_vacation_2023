`timescale 1ps/1ps
module testbench();
    reg clk;
    reg n_rst;
    reg rxd;
    reg [7:0] tx_data;
    reg tx_valid;

    wire [7:0] rx_data;
    wire rx_valid;
    wire txd;

    uart dut_uart (
        .clk(clk),
        .n_rst(n_rst),
        .rxd(rxd),
        .tx_data(tx_data),
        .tx_valid(tx_valid),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .txd(txd)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        rxd = 1'b1;
        tx_data = 8'h00;
        tx_valid = 1'b0;
        #102;
        tx_data = 8'h53;
        #10;
        tx_valid = 1'b1;
        #10;
        tx_valid = 1'b0;
        #3000;

        //0x31
        #150 rxd = 1'b0;
        #150 rxd = 1'b1;
        #150 rxd = 1'b0;
        #150 rxd = 1'b0;
        #150 rxd = 1'b0;
        #150 rxd = 1'b1;
        #150 rxd = 1'b1;
        #150 rxd = 1'b0;
        #150 rxd = 1'b0;
        #150 rxd = 1'b1;
        #1300;

        //0x26
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #1300;

        $stop;
    end

endmodule