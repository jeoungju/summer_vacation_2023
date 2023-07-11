library verilog;
use verilog.vl_types.all;
entity substraction is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        over_flow       : out    vl_logic
    );
end substraction;
