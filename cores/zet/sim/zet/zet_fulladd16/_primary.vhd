library verilog;
use verilog.vl_types.all;
entity zet_fulladd16 is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        ci              : in     vl_logic;
        co              : out    vl_logic;
        z               : out    vl_logic_vector(15 downto 0);
        s               : in     vl_logic
    );
end zet_fulladd16;
