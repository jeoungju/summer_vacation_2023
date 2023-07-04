module testbench();

    reg a;
    reg b;
    reg c;
    reg d;
    reg [1:0] sel;

    wire out;

    initial begin
        a = 1'b0;
        b = 1'b1;
        c = 1'b0;
        d = 1'b1;
        sel = 2'b00;
        #20;
        a = 1'b0;     
        b = 1'b1;
        c = 1'b1;
        d = 1'b0;
        sel = 2'b01;
        #20;
        a = 1'b1;
        b = 1'b0;
        c = 1'b0;
        d = 1'b1;
        sel = 2'b10;
        #20;
        a = 1'b1;
        b = 1'b0;
        c = 1'b1;
        d = 1'b0;
        sel = 2'b11;
        #20;

        $stop;
    end

    mux dut_mux(
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .out(out)
    );
endmodule