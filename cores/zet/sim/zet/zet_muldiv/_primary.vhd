library verilog;
use verilog.vl_types.all;
entity zet_muldiv is
    port(
        x               : in     vl_logic_vector(31 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        o               : out    vl_logic_vector(31 downto 0);
        f               : in     vl_logic_vector(2 downto 0);
        word_op         : in     vl_logic;
        cfo             : out    vl_logic;
        ofo             : out    vl_logic;
        clk             : in     vl_logic;
        exc             : out    vl_logic
    );
end zet_muldiv;
