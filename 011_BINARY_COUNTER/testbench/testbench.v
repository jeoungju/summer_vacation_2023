`timescale 1ps/1ps
module testbench ();
    
    reg clk;
    reg n_rst;

    wire [2:0] Q;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
        #200;

        $stop;
    end

    binary_counter dut_binary_counter(
        .clk(clk),
        .n_rst(n_rst),
        .Q(Q)
    );
endmodule