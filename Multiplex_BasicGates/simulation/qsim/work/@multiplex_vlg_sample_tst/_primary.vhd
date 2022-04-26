library verilog;
use verilog.vl_types.all;
entity Multiplex_vlg_sample_tst is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Multiplex_vlg_sample_tst;
