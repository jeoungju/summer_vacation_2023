`timescale 1ps/1ps
module testbench ();
    reg clk;
    reg n_rst;
    reg rxd;
    wire txd;

    top dut_top (
        .clk(clk),
        .n_rst(n_rst),
        .rxd(rxd),
        .txd(txd)
    );

    always #5 clk = ~clk;
    initial begin
        clk = 1'b0;
        n_rst = 1'b0;
        #7 n_rst = 1'b1;
    end

    initial begin
        rxd = 1'b1;

        //0x49 //I
        #57 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x20 //Space
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x53 //Signed
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x20 //Space
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x30 //0014
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x30 //0014
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x31 //0014
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x34 //0014
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;
        
        //0x2a //mul
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x30 //0004
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x30 //0004
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x30 //0004
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x34 //0004
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        //#300;

        //0x3d //Equal
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b1;
        #160 rxd = 1'b0;
        #160 rxd = 1'b0;
        #160 rxd = 1'b1;
        #30000;

        $stop;

        $stop;
    end


endmodule