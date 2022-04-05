library verilog;
use verilog.vl_types.all;
entity XOR_GATE is
    port(
        INPUT_A         : in     vl_logic;
        INPUT_B         : in     vl_logic;
        INPUT_C         : in     vl_logic;
        OUTPUT          : out    vl_logic
    );
end XOR_GATE;
