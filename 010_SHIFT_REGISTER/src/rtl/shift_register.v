//Serial in serial out
module shift_register (
    input clk,
    input n_rst,
    input x,
    output Q0,
    output Q1,
    output Q2,
    output Q3
);
    reg y0, y1, y2, y3;

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            y0 <= 1'b0;
            y1 <= 1'b0;
            y2 <= 1'b0;
            y3 <= 1'b0;
        end
        else begin
            y0 <= x;
            y1 <= y0;
            y2 <= y1;
            y3 <= y2;
        end
    end

    assign Q0 = y0;
    assign Q1 = y1;
    assign Q2 = y2;
    assign Q3 = y3;
endmodule