library verilog;
use verilog.vl_types.all;
entity zet_exec is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ir              : in     vl_logic_vector(35 downto 0);
        off             : in     vl_logic_vector(15 downto 0);
        imm             : in     vl_logic_vector(15 downto 0);
        cs              : out    vl_logic_vector(15 downto 0);
        ip              : out    vl_logic_vector(15 downto 0);
        \of\            : out    vl_logic;
        zf              : out    vl_logic;
        cx_zero         : out    vl_logic;
        memout          : in     vl_logic_vector(15 downto 0);
        wr_data         : out    vl_logic_vector(15 downto 0);
        addr            : out    vl_logic_vector(19 downto 0);
        we              : out    vl_logic;
        m_io            : out    vl_logic;
        byteop          : out    vl_logic;
        \block\         : in     vl_logic;
        div_exc         : out    vl_logic;
        wrip0           : in     vl_logic;
        ifl             : out    vl_logic;
        tfl             : out    vl_logic;
        wr_ss           : out    vl_logic
    );
end zet_exec;
