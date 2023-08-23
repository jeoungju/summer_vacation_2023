//Non-storing 16bits signed divider
`timescale 1ps/1ps
module divider_s (
    input clk,
    input n_rst,
    input [15:0] M,
    input [15:0] Q,
    input start,
    input different,
    output [15:0] remain,
    output [15:0] quotient,
    output done
);
    localparam IDLE = 1'h0;
    localparam CHECK = 1'h1; 

    reg [16:0] A;
    reg [4:0] count; //count is M, Q n bits
    reg [15:0] q;
    reg [15:0] result;

    wire [16:0] M_sign;
    assign M_sign = {1'b0,M}; // M for A bits

    wire [16:0] M_sign_not;
    assign M_sign_not = ~M_sign + 17'h01; //2's complement

    wire [16:0] A_shift;
    assign A_shift = {A[15:0],q[15]};

    wire [15:0] q_shift;
    assign q_shift = {q[14:0],1'b0};

    wire [16:0] A_a_M;
    assign A_a_M = A + M_sign;

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
            CHECK : n_state = (count == 5'h00) ? IDLE : state; //16
            default : n_state = IDLE;
        endcase

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            A <= 17'h00000;
        end
        else begin
            if (state == IDLE) begin
                A <= 17'h00000;
            end
            else  begin
                A <= (A[16] == 1'b1) ? A_shift + M_sign : A_shift + M_sign_not;
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
            if ((state == IDLE) && (start == 1'b1)) begin
                q <= Q;
            end
            else if (state == CHECK) begin
                q <= (A[16] == 1'b0) ? {q_shift[15:1],1'b1} : {q_shift[15:1],1'b0};
            end
            else begin
                q <= q;
            end
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            result <= 16'h0000;
        end
        else begin
            if (state == CHECK) begin
                result <= ((count == 5'h00) && (A[16] == 1'b0)) ? {A[15:0]} : {A_a_M[15:0]};
            end
            else begin
                result <= result;
            end
        end
    end

    assign remain = result;
    assign quotient = ((different == 1'b1) && (count == 5'h1f)) ? ~q + 16'h1 : q; // signed process alu instance
    
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