library verilog;
use verilog.vl_types.all;
entity zet_arlog is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        f               : in     vl_logic_vector(2 downto 0);
        o               : out    vl_logic_vector(15 downto 0);
        word_op         : in     vl_logic;
        cfi             : in     vl_logic;
        cfo             : out    vl_logic;
        afo             : out    vl_logic;
        ofo             : out    vl_logic
    );
end zet_arlog;
