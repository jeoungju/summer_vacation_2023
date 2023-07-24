// Uart decorder module
`timescale 1ps/1ps
module decorder (
    input clk,
    input n_rst,
    input [7:0] data,
    input valid,
    output [3:0] dtype,
    output [4:0] op, //operator
    output [15:0] src1, // lsb first 4shift
    output [15:0] src2, // lsb first 4shift
    output done
);
    localparam IDLE = 3'h0;
    localparam FORMAT = 3'h1;
    localparam TYPE = 3'h2;
    localparam DATA_1 = 3'h3;
    localparam OPERATION = 3'h4;
    localparam DATA_2 = 3'h5;
    localparam EQUAL = 3'h6;
    localparam END_DATA = 3'h7;

    reg [2:0] state, n_state;

    reg done_sig;
    reg [2:0] cnt_1, cnt_2;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            state <= IDLE;
        end
        else begin
            state <= n_state;
        end
    end

    always @(*)
        case (state)
            IDLE : n_state = ((data == 8'h49) && (valid == 1'b1)) ? FORMAT : state;
            FORMAT : n_state = ((data == 8'h20) && (valid == 1'b1)) ? TYPE : state;
            TYPE : n_state = (valid == 1'b1) ? DATA_1 : state;
            DATA_1 : n_state = (cnt_1 == 3'h0) ? OPERATION : state;
            OPERATION : n_state = (valid == 1'b1) ? DATA_2 : state;
            DATA_2 : n_state = (cnt_2 == 3'h0) ? EQUAL : state;
            EQUAL : n_state = ((data == 8'h3d) && (valid == 1'b1)) ? END_DATA : state;
            END_DATA : n_state = IDLE;
            default: n_state = IDLE;
        endcase

    //done signal
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            done_sig <= 1'b0;
        end
        else begin
            done_sig <= (state == END_DATA) ? 1'b1 : 1'b0;
        end
    end

    //src1 ,src2 with count
    reg [15:0] src1_d, src2_d;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            cnt_1 <= 3'h0;
            src1_d <= 16'h0000;
        end
        else if (state == IDLE) begin
            cnt_1 <= 3'h5;
        end
        else if (state == DATA_1) begin
            cnt_1 <= (valid == 1'b1) ? cnt_1 - 3'h1 : cnt_1;
            src1_d <= (valid == 1'b1) ? {src1_d[11:0],data[3:0]} : src1_d;
        end
        else begin
            cnt_1 <= cnt_1;
            src1_d <= src1_d;
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            cnt_2 <= 3'h0;
            src2_d <= 16'h0000;
        end
        else if (state == IDLE) begin
            cnt_2 <= 3'h4;
        end
        else if (state == DATA_2) begin
            cnt_2 <= (valid == 1'b1) ? cnt_2 - 3'h1 : cnt_2;
            src2_d <= (valid == 1'b1) ? {src2_d[11:0],data[3:0]} : src2_d;
        end
        else begin
            cnt_2 <= cnt_2;
            src2_d <= src2_d;
        end
    end

    //data_type
    reg [3:0] dtype_d;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            dtype_d <= 4'h0;
        end
        else if (state == TYPE) begin
            dtype_d <= (data == 8'h57) ? 4'h1 : 4'h2; // 8'h57 = Unsigned,4'h1  8'h53 = Signed,4'h2;
        end
        else begin
            dtype_d <= dtype_d;
        end
    end

    //operator
    //* 2A/ + 2B/ - 2D/  / 2F divide 
    // add 5'h01, sub 5'h02, mul 5'h04, divide 5'h08
    reg [4:0] op_d;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            op_d <= 5'h00;
        end
        else if (state == OPERATION) begin
            op_d <= (data == 8'h2b) ? 5'h01 : 
                    (data == 8'h2d) ? 5'h02 :
                    (data == 8'h2a) ? 5'h04 :
                    (data == 8'h2f) ? 5'h08 : op_d;
        end
        else begin
            op_d <= op_d;
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            done_sig <= 1'b0;
        end
        else begin
            done_sig <= (state == END_DATA) ? 1'b1 : 1'b0;
        end
    end

    assign src1 = src1_d;
    assign src2 = src2_d;
    assign dtype = dtype_d;
    assign op = op_d;
    assign done = done_sig;

endmodule
/*
space 20
I 49
1 31
2 32
3 33
4 34
5 35
6 36
7 37
8 38
9 39
0 30
U 57
S 53
= 3D
* 2A
+ 2B
- 2D
/ 2F
*/