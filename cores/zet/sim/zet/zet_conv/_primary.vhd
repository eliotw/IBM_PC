library verilog;
use verilog.vl_types.all;
entity zet_conv is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        func            : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0);
        iflags          : in     vl_logic_vector(1 downto 0);
        oflags          : out    vl_logic_vector(2 downto 0)
    );
end zet_conv;
