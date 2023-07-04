module jk (
    input clk,
    input n_rst,
    input J,
    input K,
    output Q
);
    reg y;

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            y <= 1'b0;
        end
        else begin
            y <= ((K == 1'b0) && (J == 1'b0)) ? y :
                ((K == 1'b0) && (J == 1'b1)) ? 1'b1 :
                ((K == 1'b1) && (J == 1'b0)) ? 1'b0 :
                ~y;
        end
    end

    assign Q = y;
endmodule