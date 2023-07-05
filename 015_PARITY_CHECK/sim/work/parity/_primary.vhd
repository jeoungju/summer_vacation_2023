library verilog;
use verilog.vl_types.all;
entity parity is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        data            : in     vl_logic_vector(4 downto 0);
        start           : in     vl_logic;
        even_parity     : out    vl_logic_vector(5 downto 0)
    );
end parity;
