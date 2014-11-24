library verilog;
use verilog.vl_types.all;
entity zet_div_uu is
    generic(
        z_width         : integer := 16
    );
    port(
        clk             : in     vl_logic;
        ena             : in     vl_logic;
        z               : in     vl_logic_vector;
        d               : in     vl_logic_vector;
        q               : out    vl_logic_vector;
        s               : out    vl_logic_vector;
        div0            : out    vl_logic;
        ovf             : out    vl_logic
    );
end zet_div_uu;
