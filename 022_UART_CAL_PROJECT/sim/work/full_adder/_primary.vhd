library verilog;
use verilog.vl_types.all;
entity full_adder is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        c_in            : in     vl_logic;
        sum             : out    vl_logic;
        g               : out    vl_logic;
        p               : out    vl_logic
    );
end full_adder;
