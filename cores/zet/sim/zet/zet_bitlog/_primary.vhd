library verilog;
use verilog.vl_types.all;
entity zet_bitlog is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        o               : out    vl_logic_vector(15 downto 0);
        cfo             : out    vl_logic;
        ofo             : out    vl_logic
    );
end zet_bitlog;
