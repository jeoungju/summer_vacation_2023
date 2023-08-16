`timescale 1ns/1ps

module delay(
    clk,
    n_rst,
    din,
    dout
);

input clk, n_rst, din;
output dout;

parameter N = 2;

localparam S_ZERO  = 1'b0;
localparam S_ONE   = 1'b1;


reg state, next_state;
reg [N-1:0] cnt, next_cnt;

always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        state <= S_ZERO;
        cnt <= 1'b0;
    end
    else begin
        state <= next_state;
        cnt <= next_cnt;
    end

reg led_delay;
always @(state or din or cnt or next_cnt)
    case (state)
		S_ZERO : begin
			next_state = (din == 1'b1)? S_ONE : state;
			next_cnt = {N{1'b1}};
			led_delay = 1'b0;
		end
		S_ONE   : begin
			next_state = (next_cnt == {N{1'b0}})? S_ZERO : state;
			next_cnt   = cnt - {{(N-1){1'b0}},1'b1};
			led_delay = 1'b1;
		end
		default  : begin
			next_state = S_ZERO;
			next_cnt = cnt;
			led_delay = 1'b0;
		end
	endcase

assign dout = led_delay;

endmodule