// Hex cal encorder module
`timescale 1ps/1ps
module encorder (
    input clk,
    input n_rst,
    input alu_done,
    input [31:0] result,
    input tx_done,

    output [7:0] uart_out,
    output uart_valid
);
    wire txen;
    wire rxen;
    gen_en dut_gen_en (
        .clk(clk),
        .n_rst(n_rst),
        .txen(txen),
        .rxen(rxen)
    );

    localparam IDLE = 3'h0;
    localparam UART_SHIFT = 3'h1;
    localparam UART_DATA = 3'h2;
    localparam UART_END = 3'h3;
    localparam UART_VALID = 3'h4;

    reg [2:0] state, n_state;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            state <= IDLE;
        end
        else begin
            state <= n_state;
        end
    end

    reg [3:0] cnt;
    reg [3:0] cnt_txen;
    always @(*)
        case(state)
            IDLE : n_state = (alu_done == 1'b1) ? UART_SHIFT : state;
            UART_SHIFT : n_state = UART_DATA;
            UART_DATA : n_state = UART_END;
            UART_END : n_state = (cnt == 4'h0) ? IDLE : UART_VALID;
            UART_VALID : n_state = (tx_done == 1'b1) ? UART_SHIFT : state;
            default : n_state = IDLE;
        endcase

    reg [31:0] shift_result;
    reg [3:0] data;
    reg [7:0] uart_out_d; //ASCII data
    reg uart_valid_d;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            data <= 4'h0;
            shift_result <= 32'h0000_0000;
        end
        else if (state == IDLE) begin
            shift_result <= result;
        end
        else if (state == UART_SHIFT) begin
            shift_result <= {shift_result[27:0],4'h0};
            data <= {shift_result[31:28]};
        end
        else begin
            data <= data;
            shift_result <= shift_result;
        end
    end

    //Uart out = tx_data ASCII encorder
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            uart_out_d <= 8'h00;
        end
        else if (state == UART_DATA) begin
            if (data == 4'h0) begin
                uart_out_d <= 8'h30;
            end
            else if (data == 4'h1) begin
                uart_out_d <= 8'h31;
            end
            else if (data == 4'h2) begin
                uart_out_d <= 8'h32;
            end
            else if (data == 4'h3) begin
                uart_out_d <= 8'h33;
            end
            else if (data == 4'h4) begin
                uart_out_d <= 8'h34;
            end
            else if (data == 4'h5) begin
                uart_out_d <= 8'h35;
            end
            else if (data == 4'h6) begin
                uart_out_d <= 8'h36;
            end
            else if (data == 4'h7) begin
                uart_out_d <= 8'h37;
            end
            else if (data == 4'h8) begin
                uart_out_d <= 8'h38;
            end
            else if (data == 4'h9) begin
                uart_out_d <= 8'h39;
            end
            else if (data == 4'ha) begin
                uart_out_d <= 8'h61;
            end
            else if (data == 4'hb) begin
                uart_out_d <= 8'h62;
            end
            else if (data == 4'hc) begin
                uart_out_d <= 8'h63;
            end
            else if (data == 4'hd) begin
                uart_out_d <= 8'h64;
            end
            else if (data == 4'he) begin
                uart_out_d <= 8'h65;
            end
            else if (data == 4'hf) begin
                uart_out_d <= 8'h66;
            end
            else begin
                uart_out_d <= uart_out_d;
            end
        end
    end

    //cnt for 8times
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            cnt <= 4'h8;
        end
        else if (state == IDLE) begin
            cnt <= 4'h8;
        end
        else if (state == UART_END) begin
            cnt <= cnt - 4'h1;
        end
        else begin
            cnt <= cnt;
        end
    end
    /*
    //cnt_txen for 8times
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            cnt_txen <= 4'h9;
        end
        else if (state == UART_SHIFT) begin
            cnt_txen <= 4'h9;
        end
        else if (state == UART_END) begin
            cnt_txen <= (txen == 1'b1) ? cnt_txen - 4'h1 : cnt_txen;
        end
        else begin
            cnt_txen <= cnt_txen;
        end
    end
    */

    //Uart valid signal
    //1clock valid signal
    reg uart_valid_dd;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            uart_valid_d <= 1'b0;
            uart_valid_dd <= 1'b0;
        end
        else begin
            uart_valid_d <= ((state == UART_END) && (cnt != 4'h0)) ? 1'b1 : 1'b0;
            uart_valid_dd <= uart_valid_d;
        end
    end

    assign uart_out = uart_out_d;
    assign uart_valid = ((uart_valid_d == 1'b1) && (uart_valid_dd == 1'b0)) ? 1'b1 : 1'b0;
endmodule