`timescale 1ps/1ps
module tx(
    input clk,
    input n_rst,
    input txen,
    input [7:0] tx_data,
    input valid,
    output reg txd,
    output reg tx_done
);

localparam IDLE = 2'h0; 
localparam START = 2'h1;
localparam DATA = 2'h2;
localparam STOP = 2'h3;

localparam CYCLE = 4'hb;

reg [2:0] tx_state, tx_next_state;

reg [3:0] tx_cnt; //for 10count (start + data(8) + stop)
reg [3:0] tx_n_cnt;

//reg [2:0] cnt_4;

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
        STOP : tx_next_state = (tx_cnt == 4'ha) ? IDLE : tx_state;
        default : tx_next_state = IDLE;
    endcase

always @(*)
    case(tx_state)
        IDLE : tx_n_cnt = 4'h0;
        default : tx_n_cnt = (txen == 1'b1) ? tx_cnt + 4'h1 : (tx_cnt == CYCLE) ? 4'h1 : tx_cnt;
    endcase
    
//txd
reg [7:0] shift_data;
//reg [31:0] data_32;
always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        txd <= 1'b1;
        shift_data <= 8'h00;
        //data_32 <= 32'h0000_0000;
    end
    else begin
        if (tx_state == START && txen == 1'b1) begin
            shift_data <= tx_data;
            txd <= 1'b0;

        end
        if ((tx_state == DATA) && (txen == 1'b1)) begin
            txd <= shift_data[0];
            shift_data <= {1'b1,shift_data[7:1]};
        end
        if (tx_state == STOP) begin
            shift_data <= 8'h00;
            txd <= 1'b1;
            //data_32 <= {8'h00,data_32[31:8]};
        end
    end
    
always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        tx_done <= 1'b0;
    end
    else if (tx_state == STOP) begin
        tx_done <= 1'b1;
    end
    else begin
        tx_done <= 1'b0;
    end
end

// cnt_4 
/*
always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        cnt_4 <= 3'h0;
    end
    else if (tx_state == IDLE) begin
        cnt_4 <= 3'h0;
    end
    else if (tx_state == STOP) begin
        cnt_4 <= cnt_4 + 3'h1;
    end
    else begin
        cnt_4 <= cnt_4;
    end
end
*/


endmodule