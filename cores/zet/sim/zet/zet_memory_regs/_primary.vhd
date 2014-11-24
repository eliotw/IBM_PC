library verilog;
use verilog.vl_types.all;
entity zet_memory_regs is
    port(
        rm              : in     vl_logic_vector(2 downto 0);
        \mod\           : in     vl_logic_vector(1 downto 0);
        sovr_pr         : in     vl_logic_vector(2 downto 0);
        base            : out    vl_logic_vector(3 downto 0);
        index           : out    vl_logic_vector(3 downto 0);
        seg             : out    vl_logic_vector(1 downto 0)
    );
end zet_memory_regs;
