library verilog;
use verilog.vl_types.all;
entity zet_next_or_not is
    port(
        prefix          : in     vl_logic_vector(1 downto 0);
        opcode          : in     vl_logic_vector(7 downto 1);
        cx_zero         : in     vl_logic;
        zf              : in     vl_logic;
        ext_int         : in     vl_logic;
        next_in_opco    : out    vl_logic;
        next_in_exec    : out    vl_logic
    );
end zet_next_or_not;
