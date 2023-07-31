// Booth Algorithm multiplier 16bits //signed
`timescale 1ps/1ps
module mul_s (
    input clk,
    input n_rst,
    input [15:0] M,
    input [15:0] Q,
    input start,
    input [3:0] dtype,
    output reg [31:0] result,
    output done
);
    localparam IDLE = 1'h0;
    localparam CHECK = 1'h1; //q[0],q0 compare

    reg [15:0] A;
    reg [4:0] count; //count is M, Q n bits
    reg [15:0] q;
    reg q0;
    wire [15:0] A_m_not;
    wire [15:0] A_m;
    wire [15:0] m_not;
    assign A_m = A + M; //for A + M
    assign A_m_not = A + m_not; //for A - M
    assign m_not = ~M + 16'h0001; //M 2's complement
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
            IDLE : n_state = ((dtype == 4'h1) && (start == 1'b1)) ? CHECK : state;
            CHECK : n_state = (count == 5'h00) ? IDLE : state;
            default : n_state = IDLE;
        endcase

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            A <= 16'h0000;
        end
        else begin
            if (state == IDLE) begin
                A <= 16'h0000;
            end
            else  begin
                A <= (({q[0],q0}) == 2'b10) ? {A_m_not[15],A_m_not[15:1]} : 
                    (({q[0],q0}) == 2'b01) ? {A_m[15],A_m[15:1]} : {A[15],A[15:1]};
            end
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            count <= 5'h10;
        end
        else begin
            if (state == IDLE) begin
                count <= 5'h10;
            end
            else begin
                count <= count - 5'h01;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            q <= 16'h0000;
        end
        else begin
            if (state == IDLE) begin
                q <= Q;
            end
            else begin
                q <= (({q[0],q0}) == 2'b10) ? {A_m_not[0],q[15:1]} : 
                    (({q[0],q0}) == 2'b01) ? {A_m[0],q[15:1]} : {A[0],q[15:1]};
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
            result <= 32'h0000_0000;
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

    wire done_sig;
    assign done_sig = (count == 5'h1f) ? 1'b1 : 1'b0;
    reg done_edge;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            done_edge <= 1'b0;
        end
        else begin
            done_edge <= done_sig;
        end
    end

    assign done = ((done_sig == 1'b1) && (done_edge == 1'b0)) ? 1'b1 : 1'b0;
endmodule