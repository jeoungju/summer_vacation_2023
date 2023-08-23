//Uart rx module
`timescale 1ps/1ps
module rx(
    input clk,
    input n_rst,
    input rxen,
    input rxd,
    output [7:0] rx_data,
    output valid
);

localparam IDLE = 2'h0; 
localparam DATA = 2'h1;
localparam STOP = 2'h2;

localparam CYCLE = 4'ha;

wire start_sig; //RXD 1 -> 0

reg [2:0] rx_state, rx_next_state;

reg [3:0] rx_cnt; //for 10count (start + data(8) + stop)
reg [3:0] rx_n_cnt;

reg [7:0] fnd_rxd;

reg valid_sig;

always @(posedge clk or negedge n_rst)
	if(!n_rst) begin
		rx_state <= IDLE;
		rx_cnt <= 4'h0;
	end
	else begin
		rx_state <= rx_next_state;
		rx_cnt <= rx_n_cnt;
	end


assign start_sig = ((rx_state == IDLE) && (rxd == 1'b0) && (rxen == 1'b1)) ? 1'b1 : 1'b0;	

always @(*)
    case(rx_state)
        IDLE : rx_next_state = (start_sig == 1'b1) ? DATA : rx_state;
        DATA : rx_next_state = (rx_n_cnt == 4'h8) ? STOP : rx_state;
        STOP : rx_next_state = (rx_n_cnt == 4'h9) ? IDLE : rx_state;
        default : rx_next_state = IDLE;
    endcase

always @(*)
    case(rx_state)
        IDLE : rx_n_cnt = 4'h0;
        default : rx_n_cnt = (rxen == 1'b1) ? rx_cnt + 4'h1 : (rx_cnt == CYCLE) ? 4'h0 : rx_cnt;
    endcase
    
//rxd
always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        fnd_rxd <= 8'h00; //fnd default data
    end
    else if (rx_state == DATA && rxen == 1'b1) begin
        fnd_rxd <= {rxd,fnd_rxd[7:1]};
    end
    else if (rx_state == IDLE) begin
        fnd_rxd <= 8'h00;
    end
    else begin
        fnd_rxd <= fnd_rxd;
    end 
    
    reg valid_sig_d;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            valid_sig <= 1'b0;
            valid_sig_d <= 1'b0;
        end
        else begin
            valid_sig <= (rx_state == STOP) ? 1'b1 : 1'b0;
            valid_sig_d <= valid_sig;
        end
    end

    wire valid_d_ff;
    assign valid_d_ff = ((valid_sig == 1'b1) && (valid_sig_d == 1'b0)) ? 1'b1 : 1'b0;

    assign rx_data = fnd_rxd;
    assign valid = valid_d_ff;

endmodule