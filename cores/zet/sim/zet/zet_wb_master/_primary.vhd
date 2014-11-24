library verilog;
use verilog.vl_types.all;
entity zet_wb_master is
    port(
        cpu_byte_o      : in     vl_logic;
        cpu_memop       : in     vl_logic;
        cpu_m_io        : in     vl_logic;
        cpu_adr_o       : in     vl_logic_vector(19 downto 0);
        cpu_block       : out    vl_logic;
        cpu_dat_i       : out    vl_logic_vector(15 downto 0);
        cpu_dat_o       : in     vl_logic_vector(15 downto 0);
        cpu_we_o        : in     vl_logic;
        wb_clk_i        : in     vl_logic;
        wb_rst_i        : in     vl_logic;
        wb_dat_i        : in     vl_logic_vector(15 downto 0);
        wb_dat_o        : out    vl_logic_vector(15 downto 0);
        wb_adr_o        : out    vl_logic_vector(19 downto 1);
        wb_we_o         : out    vl_logic;
        wb_tga_o        : out    vl_logic;
        wb_sel_o        : out    vl_logic_vector(1 downto 0);
        wb_stb_o        : out    vl_logic;
        wb_cyc_o        : out    vl_logic;
        wb_ack_i        : in     vl_logic
    );
end zet_wb_master;
