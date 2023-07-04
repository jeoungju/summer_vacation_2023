//2x4 Demux
module demux (
    input enable,
    input [1:0] A,
    output [3:0] out
);

    reg [3:0] y;

    always @(*) begin
        if (enable == 1'b1) begin
            case (A)
                2'b00 : y = 4'b0001;
                2'b01 : y = 4'b0010;
                2'b10 : y = 4'b0100;
                2'b11 : y = 4'b1000;  
                default : y = 4'b0000;
            endcase
        end
        else begin
            y = 4'bzzzz;
        end
    end

    assign out = y;
endmodule 