//3bit gray code counter
module gray_counter (
    input clk,
    input n_rst,
    output [2:0] Q
    
);
    reg [2:0] y;
    reg [3:0] counter;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            counter <= 4'b0000;
        end
        else begin
            counter <= (counter == 4'b0111) ? 4'b0000 : counter + 4'b0001;
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            y <= 3'b000;
        end
        else begin
            y[2] <= (counter[2] == 1'b1) ? 1'b1 : 1'b0;
            y[1] <= ((counter[2] == 1'b1) && (counter[1] == 1'b1)) ? 1'b0 : 
                ((counter[2] == 1'b0) && (counter[1] == 1'b0)) ? 1'b0 : 1'b1;
            y[0] <= ((counter[1] == 1'b1) && (counter[0] == 1'b1)) ? 1'b0 : 
                ((counter[1] == 1'b0) && (counter[0] == 1'b0)) ? 1'b0 : 1'b1;
        end
    end

    assign Q = y;
endmodule