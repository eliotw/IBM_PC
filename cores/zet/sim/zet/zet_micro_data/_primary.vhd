library verilog;
use verilog.vl_types.all;
entity zet_micro_data is
    port(
        n_micro         : in     vl_logic_vector(8 downto 0);
        off_i           : in     vl_logic_vector(15 downto 0);
        imm_i           : in     vl_logic_vector(15 downto 0);
        src             : in     vl_logic_vector(3 downto 0);
        dst             : in     vl_logic_vector(3 downto 0);
        base            : in     vl_logic_vector(3 downto 0);
        index           : in     vl_logic_vector(3 downto 0);
        seg             : in     vl_logic_vector(1 downto 0);
        fdec            : in     vl_logic_vector(2 downto 0);
        div             : out    vl_logic;
        end_seq         : out    vl_logic;
        ir              : out    vl_logic_vector(35 downto 0);
        off_o           : out    vl_logic_vector(15 downto 0);
        imm_o           : out    vl_logic_vector(15 downto 0)
    );
end zet_micro_data;
