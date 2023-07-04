module testbench();
    
    reg enable;
    reg [1:0] A;
    wire [3:0] out;

    initial begin
        A = 2'b00;
        enable = 1'b0;
        #20;

        enable = 1'b1;
        #20;
        A = 2'b01;
        #20;
        A = 2'b10;
        #20;
        A = 2'b11;
        #20;

        $stop;

    end

    demux dut_demux(
        .A(A),
        .enable(enable),
        .out(out)
    );
endmodule