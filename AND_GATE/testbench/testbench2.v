
module testbench2();

    reg a;
    reg b;
    wire out;

    and_gate a_and(
        .a(a),
        .b(b),
        .out(out)
    );

    initial begin
        a = 1;
        b = 1;
        #5;

        a = 1;
        b = 1;
        #5;


        a = 0;
        b = 1;
        #5;

        a = 1;
        b = 1;
        #5;

        $stop;
    end

endmodule