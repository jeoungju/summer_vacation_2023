`timescale 1ps/1ps

//Hz = bps
//50MHz -> 9600bps
//count 50*10^6 / 9600 = 5208.33 => 5208
//50MHz -> 19200bps
//count 50*10^6 / 19200 = 2604.17 => 2604;
module gen_en(
    input clk,
    input n_rst,
    output txen,
    output rxen
);

//9600
localparam MAX_9600 = 13'h1458; //5208
//19200
localparam MAX_19200 = 12'ha2c; //2604
//115_200
localparam MAX_115200 = 9'h1b2; //115_200

localparam HALF_9600 = 13'h0a2c;
localparam HALF_19200 = 12'h516;
localparam HALF_115200 = 9'h0d9;

/*
reg [8:0] cnt; //115_200

always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        cnt <= 9'h000;
    end
    else begin
        cnt <= (cnt == MAX_115200) ? 9'h000 : cnt + 9'h001;
    
    end 

assign txen = (cnt == MAX_115200) ? 1'b1 : 1'b0;
assign rxen = (cnt == HALF_115200) ? 1'b1 : 1'b0;

*/
localparam mix = 4'hf;
localparam mix_h = 4'h7;
reg [3:0] cnt;

always @(posedge clk or negedge n_rst)
    if(!n_rst) begin
        cnt <= 4'h0;
    end
    else begin
        cnt <= (cnt == mix) ? 4'h0 : cnt + 4'h1;
    
    end 

assign txen = (cnt == mix) ? 1'b1 : 1'b0;
assign rxen = (cnt == mix_h) ? 1'b1 : 1'b0;


endmodule