library verilog;
use verilog.vl_types.all;
entity demux is
    port(
        enable          : in     vl_logic;
        A               : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end demux;
