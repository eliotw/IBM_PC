library verilog;
use verilog.vl_types.all;
entity zet_nstate is
    generic(
        opcod_st        : integer := 0;
        modrm_st        : integer := 1;
        offse_st        : integer := 2;
        immed_st        : integer := 3;
        execu_st        : integer := 4
    );
    port(
        state           : in     vl_logic_vector(2 downto 0);
        prefix          : in     vl_logic;
        need_modrm      : in     vl_logic;
        need_off        : in     vl_logic;
        need_imm        : in     vl_logic;
        end_seq         : in     vl_logic;
        ftype           : in     vl_logic_vector(5 downto 0);
        \of\            : in     vl_logic;
        next_in_opco    : in     vl_logic;
        next_in_exec    : in     vl_logic;
        \block\         : in     vl_logic;
        div_exc         : in     vl_logic;
        tflm            : in     vl_logic;
        intr            : in     vl_logic;
        iflm            : in     vl_logic;
        nmir            : in     vl_logic;
        iflss           : in     vl_logic;
        n_state         : out    vl_logic_vector(2 downto 0);
        next_state      : out    vl_logic_vector(2 downto 0)
    );
end zet_nstate;
