library verilog;
use verilog.vl_types.all;
entity zet is
    port(
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
        wb_ack_i        : in     vl_logic;
        wb_tgc_i        : in     vl_logic;
        wb_tgc_o        : out    vl_logic;
        nmi             : in     vl_logic;
        nmia            : out    vl_logic;
        pc              : out    vl_logic_vector(19 downto 0)
    );
end zet;
