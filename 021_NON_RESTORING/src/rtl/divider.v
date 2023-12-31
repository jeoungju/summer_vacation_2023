//Non-storing 4bits divider
`timescale 1ps/1ps
module divider (
    input clk,
    input n_rst,
    input [3:0] M,
    input [3:0] Q,
    input start,
    output [3:0] remain,
    output [3:0] quotient
);
    localparam IDLE = 1'h0;
    localparam CHECK = 1'h1; 

    reg [4:0] A;
    reg [2:0] count; //count is M, Q n bits
    reg [3:0] q;
    reg [3:0] result;

    wire [4:0] M_sign;
    assign M_sign = {1'b0,M}; // M for A bits

    wire [4:0] M_sign_not;
    assign M_sign_not = ~M_sign + 5'h01; //2's complement

    wire [4:0] A_shift;
    assign A_shift = {A[3:0],q[3]};

    wire [3:0] q_shift;
    assign q_shift = {q[2:0],1'b0};

    wire [4:0] A_a_M;
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
            CHECK : n_state = (count == 3'h0) ? IDLE : state;
            default : n_state = IDLE;
        endcase

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            A <= 5'h00;
        end
        else begin
            if (state == IDLE) begin
                A <= 5'h00;
            end
            else  begin
                A <= (A[4] == 1'b1) ? A_shift + M_sign : A_shift + M_sign_not;
            end
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            count <= 3'h0;
        end
        else begin
            if (state == IDLE) begin
                count <= 3'h4;
            end
            else begin
                count <= count - 3'h1;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            q <= 4'h0;
        end
        else begin
            if ((state == IDLE) && (start == 1'b1)) begin
                q <= Q;
            end
            else if (state == CHECK) begin
                q <= (A[4] == 1'b0) ? {q_shift[3:1],1'b1} : {q_shift[3:1],1'b0};
            end
            else begin
                q <= q;
            end
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            result <= 4'h0;
        end
        else begin
            if (state == CHECK) begin
                result <= ((count == 3'h0) && (A[4] == 1'b0)) ? {A[3:0]} : {A_a_M[3:0]};
            end
            else begin
                result <= result;
            end
        end
    end

    assign remain = result;
    assign quotient = q;

endmodule