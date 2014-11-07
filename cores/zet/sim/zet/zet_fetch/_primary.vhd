library verilog;
use verilog.vl_types.all;
entity zet_fetch is
    generic(
        opcod_st        : integer := 0;
        modrm_st        : integer := 1;
        offse_st        : integer := 2;
        immed_st        : integer := 3;
        execu_st        : integer := 4
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : out    vl_logic_vector(7 downto 0);
        modrm           : out    vl_logic_vector(7 downto 0);
        rep             : out    vl_logic;
        exec_st         : out    vl_logic;
        ld_base         : out    vl_logic;
        sop_l           : out    vl_logic_vector(2 downto 0);
        need_modrm      : in     vl_logic;
        need_off        : in     vl_logic;
        need_imm        : in     vl_logic;
        off_size        : in     vl_logic;
        imm_size        : in     vl_logic;
        ext_int         : in     vl_logic;
        end_seq         : in     vl_logic;
        off_l           : out    vl_logic_vector(15 downto 0);
        imm_l           : out    vl_logic_vector(15 downto 0);
        ftype           : in     vl_logic_vector(5 downto 0);
        imm_f           : out    vl_logic_vector(15 downto 0);
        cs              : in     vl_logic_vector(15 downto 0);
        ip              : in     vl_logic_vector(15 downto 0);
        \of\            : in     vl_logic;
        zf              : in     vl_logic;
        cx_zero         : in     vl_logic;
        data            : in     vl_logic_vector(15 downto 0);
        pc              : out    vl_logic_vector(19 downto 0);
        bytefetch       : out    vl_logic;
        \block\         : in     vl_logic;
        div_exc         : in     vl_logic;
        tflm            : in     vl_logic;
        wr_ip0          : out    vl_logic;
        intr            : in     vl_logic;
        iflm            : in     vl_logic;
        nmir            : in     vl_logic;
        iflss           : in     vl_logic;
        state           : out    vl_logic_vector(2 downto 0);
        n_state         : out    vl_logic_vector(2 downto 0)
    );
end zet_fetch;
