module johnson_counter(
    input clk,
    input n_rst,
    output Q0,
    output Q1,
    output Q2,
    output Q3
);
    reg y0, y1, y2, y3;
    reg d0, d1, d2, d3;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            y0 <= 1'b0;
            y1 <= 1'b0;
            y2 <= 1'b0;
            y3 <= 1'b0;
        end
        else begin
            y0 <= ~y3;
            y1 <= y0;
            y2 <= y1;
            y3 <= y2;
        end
    end
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            d0 <= 1'b0;
            d1 <= 1'b0;
            d2 <= 1'b0;
            d3 <= 1'b0;
        end
        else begin
            d0 <= y0;
            d1 <= y1;
            d2 <= y2;
            d3 <= y3;
        end
    end

    assign Q0 = d0;
    assign Q1 = d1;
    assign Q2 = d2;
    assign Q3 = d3;
endmodule