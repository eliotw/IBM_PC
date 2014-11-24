library verilog;
use verilog.vl_types.all;
entity zet_rxr8 is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        ci              : in     vl_logic;
        y               : in     vl_logic_vector(3 downto 0);
        e               : in     vl_logic;
        w               : out    vl_logic_vector(7 downto 0);
        co              : out    vl_logic
    );
end zet_rxr8;
