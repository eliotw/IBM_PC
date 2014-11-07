library verilog;
use verilog.vl_types.all;
entity zet_micro_rom is
    port(
        addr            : in     vl_logic_vector(8 downto 0);
        q               : out    vl_logic_vector(49 downto 0)
    );
end zet_micro_rom;
