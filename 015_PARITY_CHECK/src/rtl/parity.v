//5bit even parity check
//odd = 1, even 0
module parity (
    input clk,
    input n_rst,
    input [4:0] data,
    input start,
    output [5:0] even_parity
);
    reg [5:0] data_p; //data + parity(even)
    reg even;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            even <= 1'b0;
        end
        else begin
            even <= data[0] ^ data[1] ^ data[2] ^ data[3] ^ data[4];
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            data_p <= 6'h00;
        end
        else begin
            data_p <= (start == 1'b1) ? {data,even} : data_p;
        end
    end

    assign even_parity = data_p;
    
endmodule