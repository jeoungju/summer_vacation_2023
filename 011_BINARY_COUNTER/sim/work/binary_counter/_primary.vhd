library verilog;
use verilog.vl_types.all;
entity binary_counter is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q               : out    vl_logic_vector(2 downto 0)
    );
end binary_counter;
