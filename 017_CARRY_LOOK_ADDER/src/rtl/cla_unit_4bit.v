// make [3:0] C_out module
`timescale 1ps/1ps
module cla_unit_4bit (
    input [3:0] g,
    input [3:0] p,
    input c_in,
    output [3:0] c_out
);
    assign c_out[0] = g[0] | (p[0] & c_in); // carry occur 01,10,11 like full_adder c_out = c_f1 | c_f2;
                                            // first c_out[0] is c_in
    assign c_out[1] = g[1] | (p[1] & c_out[0]); 
    assign c_out[2] = g[2] | (p[2] & c_out[1]); 
    assign c_out[3] = g[3] | (p[3] & c_out[2]); 


endmodule