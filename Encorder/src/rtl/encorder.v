module encorder(
    input [3:0] D,
    output reg [1:0] A
);

always @(D) begin
    case(D)
        4'b0001 : A = 2'b00;
        4'b0010 : A = 2'b01;
        4'b0100 : A = 2'b10;
        4'b1000 : A = 2'b11;
        default : A = 2'b00;
    endcase
    
end

endmodule



