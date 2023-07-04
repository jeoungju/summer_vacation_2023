module sr (
    input clk,
    input n_rst,
    input R,
    input S,
    output Q
);
    reg y;
    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            y <= 1'b0;
        end
        else begin
            y <= ((R == 1'b0) && (S == 1'b0)) ? y :
                ((R == 1'b0) && (S == 1'b1)) ? 1'b1 :
                ((R == 1'b1) && (S == 1'b0)) ? 1'b0 :
                1'bz;
        end
    end

    assign Q = y;
endmodule