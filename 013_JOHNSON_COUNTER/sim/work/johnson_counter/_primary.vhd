library verilog;
use verilog.vl_types.all;
entity johnson_counter is
    port(
        clk             : in     vl_logic;
        n_rst           : in     vl_logic;
        Q0              : out    vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic
    );
end johnson_counter;
