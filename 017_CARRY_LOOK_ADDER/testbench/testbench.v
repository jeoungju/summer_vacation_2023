`timescale 1ps/1ps
module testbench();
    reg [31:0] A;
    reg [31:0] B;
    reg c_in;
    wire [31:0] sum;
    wire c_out;


    initial begin
        A = 32'ha000ffff;
        B = 32'h7000ffff;
        c_in = 1'b0;
        #20;
        B = 32'h4000ffff;
        #20;
        A = 32'h4000ff00;
        #20;

        $stop;
    end

    cla_32bit dut_cla_32bit(
        .A(A),
        .B(B),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );

endmodule