module decorder (
    input [1:0] D,
    output reg [3:0] A
);

    always @(D) begin
        case (D)
            2'b00 : A = 4'b0001;
            2'b01 : A = 4'b0010;
            2'b10 : A = 4'b0100;
            2'b11 : A = 4'b1000;
            default: A = 4'b0000;
        endcase
    end
endmodule