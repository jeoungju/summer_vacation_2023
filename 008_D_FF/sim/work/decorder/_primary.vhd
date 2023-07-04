library verilog;
use verilog.vl_types.all;
entity decorder is
    port(
        D               : in     vl_logic_vector(1 downto 0);
        A               : out    vl_logic_vector(3 downto 0)
    );
end decorder;
