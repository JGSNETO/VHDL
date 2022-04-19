library verilog;
use verilog.vl_types.all;
entity HalfAdder is
    port(
        Sum             : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        CarryOut        : out    vl_logic
    );
end HalfAdder;
