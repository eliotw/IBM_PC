library verilog;
use verilog.vl_types.all;
entity zet_shrot is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        func            : in     vl_logic_vector(2 downto 0);
        word_op         : in     vl_logic;
        cfi             : in     vl_logic;
        ofi             : in     vl_logic;
        cfo             : out    vl_logic;
        ofo             : out    vl_logic
    );
end zet_shrot;
