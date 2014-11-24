library verilog;
use verilog.vl_types.all;
entity zet_opcode_deco is
    port(
        op              : in     vl_logic_vector(7 downto 0);
        modrm           : in     vl_logic_vector(7 downto 0);
        rep             : in     vl_logic;
        sovr_pr         : in     vl_logic_vector(2 downto 0);
        seq_addr        : out    vl_logic_vector(8 downto 0);
        need_modrm      : out    vl_logic;
        need_off        : out    vl_logic;
        need_imm        : out    vl_logic;
        off_size        : out    vl_logic;
        imm_size        : out    vl_logic;
        src             : out    vl_logic_vector(3 downto 0);
        dst             : out    vl_logic_vector(3 downto 0);
        base            : out    vl_logic_vector(3 downto 0);
        index           : out    vl_logic_vector(3 downto 0);
        seg             : out    vl_logic_vector(1 downto 0)
    );
end zet_opcode_deco;
