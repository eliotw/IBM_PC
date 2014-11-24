library verilog;
use verilog.vl_types.all;
entity zet_core is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        intr            : in     vl_logic;
        inta            : out    vl_logic;
        nmi             : in     vl_logic;
        nmia            : out    vl_logic;
        cpu_adr_o       : out    vl_logic_vector(19 downto 0);
        iid_dat_i       : in     vl_logic_vector(15 downto 0);
        cpu_dat_i       : in     vl_logic_vector(15 downto 0);
        cpu_dat_o       : out    vl_logic_vector(15 downto 0);
        cpu_byte_o      : out    vl_logic;
        cpu_block       : in     vl_logic;
        cpu_mem_op      : out    vl_logic;
        cpu_m_io        : out    vl_logic;
        cpu_we_o        : out    vl_logic;
        pc              : out    vl_logic_vector(19 downto 0);
        state           : out    vl_logic_vector(2 downto 0);
        n_state         : out    vl_logic_vector(2 downto 0)
    );
end zet_core;
