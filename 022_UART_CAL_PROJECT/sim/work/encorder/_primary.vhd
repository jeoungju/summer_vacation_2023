library verilog;
use verilog.vl_types.all;
entity encorder is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        alu_done        : in     vl_logic;
        result          : in     vl_logic_vector(31 downto 0);
        uart_out        : out    vl_logic_vector(7 downto 0);
        uart_valid      : out    vl_logic
    );
end encorder;
