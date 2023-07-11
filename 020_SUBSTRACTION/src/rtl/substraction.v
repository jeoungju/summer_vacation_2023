//32bit substraction
`timescale 1ps/1ps
module substraction (
    input clk,
    input n_rst,
    input [31:0] A,
    input [31:0] B,
    output [31:0] result,
    output over_flow
);
    
    //reg [31:0] result_y;
    //reg over_flow_y;
    wire [31:0] B_not; //B 2's complement
    assign B_not = ~B + 32'h0000_0001;

    /*
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            result_y <= 32'h0000_0000;
        end
        else begin
            result_y <= A + B_not;
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            over_flow_y <= 1'b0;
        end
        else begin
            over_flow_y <= ((A[31] == B_not[31]) && (result_y[31] != A[31])) ? 1'b1 : 1'b0;
        end
    end
    */

    assign result = A + B_not;
    assign over_flow = ((A[31] == B_not[31]) && (result[31] != A[31])) ? 1'b1 : 1'b0;

endmodule