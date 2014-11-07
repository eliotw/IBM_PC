library verilog;
use verilog.vl_types.all;
entity zet_jmp_cond is
    port(
        logic_flags     : in     vl_logic_vector(4 downto 0);
        cond            : in     vl_logic_vector(3 downto 0);
        is_cx           : in     vl_logic;
        cx              : in     vl_logic_vector(15 downto 0);
        jmp             : out    vl_logic
    );
end zet_jmp_cond;
