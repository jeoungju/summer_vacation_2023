library verilog;
use verilog.vl_types.all;
entity rca_4bit is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        c_in            : in     vl_logic;
        sum             : out    vl_logic_vector(3 downto 0);
        c_out           : out    vl_logic
    );
end rca_4bit;
