library verilog;
use verilog.vl_types.all;
entity mul_s is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        M               : in     vl_logic_vector(15 downto 0);
        Q               : in     vl_logic_vector(15 downto 0);
        start           : in     vl_logic;
        dtype           : in     vl_logic_vector(3 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        done            : out    vl_logic
    );
end mul_s;
