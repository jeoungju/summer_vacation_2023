//3bit binary counter
module binary_counter (
    input clk,
    input n_rst,
    output [2:0] Q
);
    reg [2:0] y;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            y <= 3'b000;
        end
        else begin
            y <= (y == 3'b111) ? 3'b000 : y + 3'b001;
        end
    end

    assign Q = y;
endmodule