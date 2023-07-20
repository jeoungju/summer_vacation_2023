`timescale 1ps/1ps
module tx(
    clk,
    n_rst,
    txen,
    tx_data,
    valid,
    txd
);

input clk, n_rst;
input txen;
input [7:0] tx_data;
input valid;

output reg txd;

localparam IDLE = 2'h0; 
localparam START = 2'h1;
localparam DATA = 2'h2;
localparam STOP = 2'h3;

localparam CYCLE = 4'hb;

reg [2:0] tx_state, tx_next_state;

reg [3:0] tx_cnt; //for 10count (start + data(8) + stop)
reg [3:0] tx_n_cnt;

always @(posedge clk or negedge n_rst)
	if(!n_rst) begin
		tx_state <= IDLE;
		tx_cnt <= 4'h0;
	end
	else begin
		tx_state <= tx_next_state;
		tx_cnt <= tx_n_cnt;
	end

always @(*)
    case(tx_state)
        IDLE : tx_next_state = (valid == 1'b1) ? START : tx_state;
        START : tx_next_state = (tx_n_cnt == 4'h1) ? DATA : tx_state;
        DATA : tx_next_state = (tx_n_cnt == 4'ha) ? STOP : tx_state;
        STOP : tx_next_state = (tx_n_cnt == 4'hb) ? IDLE : tx_state;
        default : tx_next_state = IDLE;
    endcase

always @(*)
    case(tx_state)
        IDLE : tx_n_cnt = 4'h0;
        default : tx_n_cnt = (txen == 1'b1) ? tx_cnt + 4'h1 : (tx_cnt == CYCLE) ? 4'h0 : tx_cnt;
    endcase
    
//txd
reg [7:0] shift_data;
always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        txd <= 1'b1;
        shift_data <= 8'h00;
    end
    else begin
        if(tx_state == START && txen == 1'b1) begin
            shift_data <= tx_data;
            txd <= 1'b0;
        end
        if(tx_state == DATA) begin
            if(txen == 1'b1) begin
            txd <= shift_data[0];
            shift_data <= {1'b1,shift_data[7:1]}; //0??? 1??? ???? ??
        end
        end
        if(tx_state == STOP) begin
            shift_data <= 8'h00;
            txd <= 1'b1;
        end
    end
    


endmodule