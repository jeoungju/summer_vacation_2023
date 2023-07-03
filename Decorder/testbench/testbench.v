module testbench();

    reg [1:0] D;
    wire [3:0] A;

    decorder a_decorder(
        .D(D),
        .A(A)
    );

    initial begin
        D = 2'b00;
        #10;

        D = 2'b01;
        #10;

        D = 2'b10;
        #10;

        D = 2'b11;
        #10;

        $stop;
    end

endmodule