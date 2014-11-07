library verilog;
use verilog.vl_types.all;
entity zet_regfile is
    port(
        a               : out    vl_logic_vector(15 downto 0);
        b               : out    vl_logic_vector(15 downto 0);
        c               : out    vl_logic_vector(15 downto 0);
        cs              : out    vl_logic_vector(15 downto 0);
        ip              : out    vl_logic_vector(15 downto 0);
        d               : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic_vector(15 downto 0);
        flags           : out    vl_logic_vector(8 downto 0);
        wr              : in     vl_logic;
        wrfl            : in     vl_logic;
        wrhi            : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        addr_a          : in     vl_logic_vector(3 downto 0);
        addr_b          : in     vl_logic_vector(3 downto 0);
        addr_c          : in     vl_logic_vector(3 downto 0);
        addr_d          : in     vl_logic_vector(3 downto 0);
        addr_s          : in     vl_logic_vector(1 downto 0);
        iflags          : in     vl_logic_vector(8 downto 0);
        word_op         : in     vl_logic;
        a_byte          : in     vl_logic;
        b_byte          : in     vl_logic;
        c_byte          : in     vl_logic;
        cx_zero         : out    vl_logic;
        wr_ip0          : in     vl_logic
    );
end zet_regfile;
