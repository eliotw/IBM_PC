library verilog;
use verilog.vl_types.all;
entity memory is
    port(
        wb_clk_i        : in     vl_logic;
        wb_rst_i        : in     vl_logic;
        wb_dat_i        : in     vl_logic_vector(15 downto 0);
        wb_dat_o        : out    vl_logic_vector(15 downto 0);
        wb_adr_i        : in     vl_logic_vector(19 downto 1);
        wb_we_i         : in     vl_logic;
        wb_sel_i        : in     vl_logic_vector(1 downto 0);
        wb_stb_i        : in     vl_logic;
        wb_cyc_i        : in     vl_logic;
        wb_ack_o        : out    vl_logic
    );
end memory;
