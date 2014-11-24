library verilog;
use verilog.vl_types.all;
entity zet_othop is
    port(
        x               : in     vl_logic_vector(15 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        seg             : in     vl_logic_vector(15 downto 0);
        off             : in     vl_logic_vector(15 downto 0);
        iflags          : in     vl_logic_vector(15 downto 0);
        func            : in     vl_logic_vector(2 downto 0);
        word_op         : in     vl_logic;
        \out\           : out    vl_logic_vector(19 downto 0);
        oflags          : out    vl_logic_vector(8 downto 0)
    );
end zet_othop;
