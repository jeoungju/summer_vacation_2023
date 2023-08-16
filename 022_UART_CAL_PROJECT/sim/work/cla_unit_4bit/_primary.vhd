library verilog;
use verilog.vl_types.all;
entity cla_unit_4bit is
    port(
        g               : in     vl_logic_vector(3 downto 0);
        p               : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        c_out           : out    vl_logic_vector(3 downto 0)
    );
end cla_unit_4bit;
