library verilog;
use verilog.vl_types.all;
entity zet_rxr16 is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        ci              : in     vl_logic;
        y               : in     vl_logic_vector(4 downto 0);
        e               : in     vl_logic;
        w               : out    vl_logic_vector(15 downto 0);
        co              : out    vl_logic
    );
end zet_rxr16;
