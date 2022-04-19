library verilog;
use verilog.vl_types.all;
entity HalfAdder_vlg_check_tst is
    port(
        CarryOut        : in     vl_logic;
        Sum             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end HalfAdder_vlg_check_tst;
