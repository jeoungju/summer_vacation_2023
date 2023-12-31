library verilog;
use verilog.vl_types.all;
entity decorder is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        data            : in     vl_logic_vector(7 downto 0);
        valid           : in     vl_logic;
        dtype           : out    vl_logic_vector(3 downto 0);
        op              : out    vl_logic_vector(4 downto 0);
        src1            : out    vl_logic_vector(15 downto 0);
        src2            : out    vl_logic_vector(15 downto 0);
        done            : out    vl_logic
    );
end decorder;
