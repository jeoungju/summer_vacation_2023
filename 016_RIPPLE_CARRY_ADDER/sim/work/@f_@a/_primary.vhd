library verilog;
use verilog.vl_types.all;
entity F_A is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        c_in            : in     vl_logic;
        sum             : out    vl_logic;
        c_out           : out    vl_logic
    );
end F_A;
