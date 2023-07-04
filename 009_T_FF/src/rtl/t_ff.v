module t_ff (
    input clk,
    input n_rst,
    input t,
    output Q
);
    reg y;

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            y = 1'b0;
        end
        else begin
            y = (t == 1'b0) ? 1'b0 : ~y;
        end
    end

    assign Q = y;
endmodule
