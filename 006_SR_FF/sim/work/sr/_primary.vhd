library verilog;
use verilog.vl_types.all;
entity sr is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic;
        Q               : out    vl_logic
    );
end sr;
