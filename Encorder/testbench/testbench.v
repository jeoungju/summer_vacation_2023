module testbench();

    reg [3:0] D;
    wire [1:0] A;

    encorder a_encorder(
        .D(D),
        .A(A)
    );

    initial begin
        D = 4'b0001;
        #10;

        D = 4'b0010;
        #10;

        D = 4'b0100;
        #10;

        D = 4'b1000;
        #10;

        $stop;
    end

endmodule