module testbench();
    reg clk;
    reg n_rst;
    wire [2:0] Q;

    always #5 clk = ~clk;

    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;

        #150;

        $stop;
    end

    gray_counter dut_gray_counter(
        .clk(clk),
        .n_rst(n_rst),
        .Q(Q)
    );
endmodule