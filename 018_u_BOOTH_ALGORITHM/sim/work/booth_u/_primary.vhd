library verilog;
use verilog.vl_types.all;
entity booth_u is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        M               : in     vl_logic_vector(31 downto 0);
        Q               : in     vl_logic_vector(31 downto 0);
        start           : in     vl_logic;
        result          : out    vl_logic_vector(63 downto 0);
        done            : out    vl_logic
    );
end booth_u;
