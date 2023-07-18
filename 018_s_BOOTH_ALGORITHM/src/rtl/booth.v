// Booth Algorithm multiplier 12bits //signed
`timescale 1ps/1ps
module booth (
    input clk,
    input n_rst,
    input [5:0] M,
    input [5:0] Q,
    input start,
    output reg [11:0] result
);
/*
    localparam IDLE = 3'h0;
    localparam CHECK = 3'h1; //q[0],q0 check
    localparam CAL = 3'h2; //A data calculation
    localparam SHIFT = 3'h3; //Arithmatic right shift, A is sign extension, count = count - 1
    localparam COUNT = 3'h4;
    localparam STOP = 3'h5;

    wire [5:0] m_not;
    assign m_not = ~M + 6'h1; //2's complement
    
    reg [5:0] A;
    reg [5:0] q;
    reg q0;
    reg [2:0] count;

    reg [2:0] state, n_state;
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
            CHECK : n_state = (({q[0],q0} == 2'b01) || ({q[0],q0} == 2'b10)) ? CAL : SHIFT;
            CAL : n_state = SHIFT;
            SHIFT : n_state = COUNT;
            COUNT : n_state = (count == 3'h0) ? STOP : CHECK;
            default : n_state = IDLE;
        endcase

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            A <= 6'h00;
        end
        else begin
            if(state == IDLE) begin
                A <= 6'h00;
            end
            else if(state == CAL) begin
                A <= ({q[0],q0} == 2'b01) ? A + M : ({q[0],q0} == 2'b10) ? A + m_not : A;
            end
            else if(state == SHIFT) begin
                A <= {A[5],A[5:1]}; //sign extension
            end
            else begin
                A <= A;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            q <= 6'h00;
        end
        else begin
            if(state == IDLE) begin
                q <= Q;
            end
            else if(state == SHIFT) begin
                q <= {A[0],q[5:1]};
            end
            else begin
                q <= q;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            q0 <= 1'b0;
        end
        else begin
            if(state == IDLE) begin
                q0 <= 1'b0;
            end
            else if(state == SHIFT) begin
                q0 <= q[0];
            end
            else begin
                q0 <= q0;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            count <= 3'h0;
        end
        else begin
            if(state == IDLE) begin
                count <= 3'h6;
            end
            else if(state == SHIFT) begin
                count <= count - 3'h1;
            end
            else begin
                count <= count;
            end
        end
    end

    reg [11:0] result_y;

    always @(posedge clk or negedge n_rst) begin
        if(!n_rst) begin
            result_y <= 12'h000;
        end
        else begin
            if (state == STOP) begin
                result_y <= {A,q};
            end
            else begin
                result_y <= result_y;
            end
        end
    end

    assign result = result_y;
    */
    localparam IDLE = 1'h0;
    localparam CHECK = 1'h1; //q[0],q0 compare

    reg [5:0] A;
    reg [2:0] count; //count is M, Q n bits
    reg [5:0] q;
    reg q0;
    wire [5:0] A_m_not;
    wire [5:0] A_m;
    wire [5:0] m_not;
    assign A_m = A + M; //for A + M
    assign A_m_not = A + m_not; //for A - M
    assign m_not = ~M + 6'h01; //M 2's complement
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
            A <= 6'h00;
        end
        else begin
            if (state == IDLE) begin
                A <= 6'h00;
            end
            else  begin
                A <= (({q[0],q0}) == 2'b10) ? {A_m_not[5],A_m_not[5:1]} : 
                    (({q[0],q0}) == 2'b01) ? {A_m[5],A_m[5:1]} : {A[5],A[5:1]};
            end
        end
    end


    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            count <= 3'h6;
        end
        else begin
            if (state == IDLE) begin
                count <= 3'h6;
            end
            else begin
                count <= count - 3'h1;
            end
        end
    end

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            q <= 6'h00;
        end
        else begin
            if (state == IDLE) begin
                q <= Q;
            end
            else begin
                q <= (({q[0],q0}) == 2'b10) ? {A_m_not[0],q[5:1]} : 
                    (({q[0],q0}) == 2'b01) ? {A_m[0],q[5:1]} : {A[0],q[5:1]};
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
            result <= 12'h000;
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