library verilog;
use verilog.vl_types.all;
entity SR_LATCH is
    port(
        S               : in     vl_logic;
        R               : in     vl_logic;
        Q               : inout  vl_logic
    );
end SR_LATCH;
