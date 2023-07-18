library verilog;
use verilog.vl_types.all;
entity divider is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        M               : in     vl_logic_vector(3 downto 0);
        Q               : in     vl_logic_vector(3 downto 0);
        start           : in     vl_logic;
        remain          : out    vl_logic_vector(3 downto 0);
        quotient        : out    vl_logic_vector(3 downto 0)
    );
end divider;
