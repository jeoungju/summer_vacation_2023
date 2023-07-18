library verilog;
use verilog.vl_types.all;
entity booth is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        M               : in     vl_logic_vector(5 downto 0);
        Q               : in     vl_logic_vector(5 downto 0);
        start           : in     vl_logic;
        result          : out    vl_logic_vector(11 downto 0)
    );
end booth;
