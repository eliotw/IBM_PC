library verilog;
use verilog.vl_types.all;
entity zet_signmul17 is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(16 downto 0);
        b               : in     vl_logic_vector(16 downto 0);
        p               : out    vl_logic_vector(33 downto 0)
    );
end zet_signmul17;
