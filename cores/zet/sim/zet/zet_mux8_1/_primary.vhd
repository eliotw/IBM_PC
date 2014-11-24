library verilog;
use verilog.vl_types.all;
entity zet_mux8_1 is
    port(
        sel             : in     vl_logic_vector(2 downto 0);
        in0             : in     vl_logic;
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        in3             : in     vl_logic;
        in4             : in     vl_logic;
        in5             : in     vl_logic;
        in6             : in     vl_logic;
        in7             : in     vl_logic;
        \out\           : out    vl_logic
    );
end zet_mux8_1;
