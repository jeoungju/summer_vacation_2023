module d_ff (
    input clk,
    input n_rst,
    input d,
    output Q
);
    reg y;

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            y <= 1'b0;
        end
        else begin
            y <= (d == 1'b0) ? 1'b0 : 1'b1;
        end
    end

    assign Q = y;
endmodule