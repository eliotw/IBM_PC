library verilog;
use verilog.vl_types.all;
entity zet_alu is
    port(
        x               : in     vl_logic_vector(31 downto 0);
        y               : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0);
        t               : in     vl_logic_vector(2 downto 0);
        func            : in     vl_logic_vector(2 downto 0);
        iflags          : in     vl_logic_vector(15 downto 0);
        oflags          : out    vl_logic_vector(8 downto 0);
        word_op         : in     vl_logic;
        seg             : in     vl_logic_vector(15 downto 0);
        off             : in     vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        div_exc         : out    vl_logic
    );
end zet_alu;
