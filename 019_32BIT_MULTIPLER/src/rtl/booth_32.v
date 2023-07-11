// Booth Algorithm multiplier 12bits //signed
`timescale 1ps/1ps
module booth_32 (
    input clk,
    input n_rst,
    input [31:0] M,
    input [31:0] Q,
    input start,
    output reg [63:0] result
);

    localparam IDLE = 1'h0;
    localparam CHECK = 1'h1; //q[0],q0 compare

    reg [31:0] A;
    reg [5:0] count; //count is M, Q n bits
    reg [31:0] q;
    reg q0;
    wire [31:0] A_m_not;
    wire [31:0] A_m;
    wire [31:0] m_not;
    assign A_m = A + M; //for A + M
    assign A_m_not = A + m_not; //for A - M
    assign m_not = ~M + 32'h0001; //M 2's complement
    reg state, n_state;
    

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            state <= IDLE;
        end
        else begin
            state <= n_state;
        end
    end

    always @(*)
        case(state)
            IDLE : n_state = (start == 1'b1) ? CHECK : state;
            CHECK : n_state = (count == 5'h00) ? IDLE : state;
            default : n_state = IDLE;
        endcase

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            A <= 32'h0000;
        end
        else begin
            if (state == IDLE) begin
                A <= 32'h0000;
            end
            else  begin
                A <= (({q[0],q0}) == 2'b10) ? {A_m_not[31],A_m_not[31:1]} : 
                    (({q[0],q0}) == 2'b01) ? {A_m[31],A_m[31:1]} : {A[31],A[31:1]};
            end
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            count <= 6'h20;
        end
        else begin
            if (state == IDLE) begin
                count <= 6'h20;
            end
            else begin
                count <= count - 6'h01;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            q <= 32'h0000;
        end
        else begin
            if (state == IDLE) begin
                q <= Q;
            end
            else begin
                q <= (({q[0],q0}) == 2'b10) ? {A_m_not[0],q[31:1]} : 
                    (({q[0],q0}) == 2'b01) ? {A_m[0],q[31:1]} : {A[0],q[31:1]};
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            q0 <= 1'b0;
        end
        else begin
            if (state == IDLE) begin
                q0 <= 1'b0;
            end
            else begin
                q0 <= q[0];
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            result <= 64'h0000;
        end
        else begin
            if (state == CHECK) begin
                result <= {A,q};
            end
            else begin
                result <= result;
            end
        end
    end


endmodule