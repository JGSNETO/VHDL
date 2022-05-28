library verilog;
use verilog.vl_types.all;
entity SR_LATCH_vlg_sample_tst is
    port(
        Q               : in     vl_logic;
        R               : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end SR_LATCH_vlg_sample_tst;
