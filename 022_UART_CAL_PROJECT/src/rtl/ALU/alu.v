`timescale 1ps/1ps
module alu (
    input clk,
    input n_rst,
    input [3:0] dtype,
    input [4:0] op,
    input [15:0] src1,
    input [15:0] src2,
    input start,
    output alu_done,
    output [31:0] result
);
    reg [3:0] dtype_s; //s is start
    reg [4:0] op_s; //s is start

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            dtype_s <= 4'h0;
            op_s <= 5'h00;
        end
        else if (start == 1'b1) begin
            dtype_s <= dtype;
            op_s <= op;
        end
        else begin
            dtype_s <= 4'h0;
            op_s <= 5'h00;
        end
    end

    wire div_start_u;
    wire div_start_s;
    assign div_start_u = ((op_s == 5'h08) && (dtype_s == 4'h1)) ? 1'b1 : 1'b0;
    assign div_start_s = ((op_s == 5'h08) && (dtype_s == 4'h2)) ? 1'b1 : 1'b0;

    wire mul_start_u;
    wire mul_start_s;
    assign mul_start_u = ((op_s == 5'h04) && (dtype_s == 4'h1)) ? 1'b1 : 1'b0;
    assign mul_start_s = ((op_s == 5'h04) && (dtype_s == 4'h2)) ? 1'b1 : 1'b0;

    wire different; //for divider
    assign different = (src1[15] == src2[15]) ? 1'b0 : 1'b1;

    reg [31:0] result_d;

    wire [31:0] res_d_u; //result divider unsigned
    wire [31:0] res_d_s; //result divider signed
    wire [31:0] res_m_u; //result multiplier unsigned
    wire [31:0] res_m_s; //result multiplier signed
    wire [15:0] res_a_u; //result adder unsigned
    wire a_u_carry;
    wire [31:0] res_a_s; //result adder signed
    wire a_s_carry;
    wire [15:0] res_s_u; //result sub unsigned
    wire s_u_carry;
    wire [31:0] res_s_s; //result sub signed
    wire s_s_carry;

    wire done_d_u;
    wire done_m_u;
    wire done_m_s;
    wire done_d_s;


    divider_u dut_divider_u (
        .clk(clk),
        .n_rst(n_rst),
        .M(src2),
        .Q(src1),
        .start(div_start_u), // division
        .remain(res_d_u[15:0]),
        .quotient(res_d_u[31:16]),
        .done(done_d_u)
    );

    wire [15:0] src1_division;
    wire [15:0] src2_division;
    assign src1_division = (src1[15] == 1'b1) ? ~src1 + 16'h1 : src1;
    assign src2_division = (src2[15] == 1'b1) ? ~src2 + 16'h1 : src2;

    divider_s dut_divider_s (
        .clk(clk),
        .n_rst(n_rst),
        .M(src2_division),
        .Q(src1_division),
        .start(div_start_s), // division
        .different(different),
        .remain(res_d_s[15:0]),
        .quotient(res_d_s[31:16]),
        .done(done_d_s)
    );

    mul_s dut_mul_s (
        .clk(clk),
        .n_rst(n_rst),
        .M(src1),
        .Q(src2),
        .start(op_s[2]),
        .dtype(dtype_s),
        .result(res_m_s),
        .done(done_m_s)
    );

    mul_u dut_mul_u (
        .clk(clk),
        .n_rst(n_rst),
        .M(src1),
        .Q(src2),
        .start(op_s[2]),
        .dtype(dtype_s),
        .result(res_m_u),
        .done(done_m_u)
    );

    wire [15:0] src1_not;
    wire [15:0] src2_not;
    assign src1_not = ~src1 + 16'h1;
    assign src2_not = ~src2 + 16'h1;

    wire start_delay; //delay start
    reg start_d;

    delay dut_delay(
        .clk(clk),
        .n_rst(n_rst),
        .din(start),
        .dout(start_delay)
    );

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            start_d <= 1'b0;
        end
        else begin
            start_d <= start_delay; 
        end
    end
    wire start_sig;
    assign start_sig = ((start_delay == 1'b0) && (start_d == 1'b1)) ? 1'b1 : 1'b0;

    cla_16bit dut_cla_16bit_a_u (
        .A(src1),
        .B(src2),
        .c_in(1'b0),
        .sum(res_a_u),
        .c_out(a_u_carry)
    );

    cla_16bit dut_cla_16bit_s_u (
        .A(src1),
        .B(src2_not),
        .c_in(1'b0),
        .sum(res_s_u),
        .c_out(s_u_carry)
    );

    wire [31:0] src1_signed;
    wire [31:0] src2_signed;
    assign src1_signed = (src1[15] == 1'b1) ? {16'hffff,src1} : {16'h0000,src1};
    assign src2_signed = (src2[15] == 1'b1) ? {16'hffff,src2} : {16'h0000,src2};

    wire [31:0] src2_signed_not;
    assign src2_signed_not = ~src2_signed + 32'h1;
    
    cla_32bit dut_cla_32bit_a_s (
        .A(src1_signed),
        .B(src2_signed),
        .c_in(1'b0),
        .sum(res_a_s),
        .c_out(a_s_carry)
    );

    cla_32bit dut_cla_32bit_s_s (
        .A(src1_signed),
        .B(src2_signed_not),
        .c_in(1'b0),
        .sum(res_s_s),
        .c_out(s_s_carry)
    );

    wire done_add_sub;
    assign done_add_sub = ((((op[0] == 1'b1) && (dtype == 4'h1)) && (start_sig == 1'b1)) ||
                        (((op[0] == 1'b1) && (dtype == 4'h2)) && (start_sig == 1'b1)) ||
                        (((op[1] == 1'b1) && (dtype == 4'h1)) && (start_sig == 1'b1)) ||
                        (((op[1] == 1'b1) && (dtype == 4'h2)) && (start_sig == 1'b1))) ? 1'b1 : 1'b0;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            result_d <= 32'h0;
        end
        else begin
            if ((dtype == 4'h1) && (op == 5'h01)) begin
                result_d <= {15'h0000,a_u_carry,res_a_u};
            end
            else if ((dtype == 4'h1) && (op == 5'h02)) begin
                result_d <= (src1 >= src2) ? {16'h0000,res_s_u} : {16'hffff,res_s_u};
            end
            else if ((dtype == 4'h2) && (op == 5'h01)) begin
                result_d <= res_a_s;
            end
            else if ((dtype == 4'h2) && (op == 5'h02)) begin
                result_d <= res_s_s;
            end
            else if (done_m_u == 1'b1) begin
                result_d <= res_m_u;
            end
            else if (done_d_u == 1'b1) begin
                result_d <= res_d_u;
            end
            else if (done_m_s == 1'b1) begin
                result_d <= res_m_s;
            end
            else if (done_d_s == 1'b1) begin
                result_d <= res_d_s;
            end
            else begin
                result_d <= result_d;
            end
        end
    end

    reg alu_done_d;
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            alu_done_d <= 1'b0;
        end
        else begin
            alu_done_d <= ((done_d_u) | (done_d_s) | (done_m_s) | (done_m_u) | (done_add_sub)) ? 1'b1 : 1'b0;
        end
    end

    assign result = result_d;
    assign alu_done = alu_done_d;

endmodule

//8'h57 = Unsigned,4'h1  8'h53 = Signed,4'h2;

    //operator
    //* 2A/ + 2B/ - 2D/  / 2F divide 
    // add 5'h01, sub 5'h02, mul 5'h04, divide 5'h08