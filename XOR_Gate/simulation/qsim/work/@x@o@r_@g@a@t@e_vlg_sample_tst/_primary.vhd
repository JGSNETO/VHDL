library verilog;
use verilog.vl_types.all;
entity XOR_GATE_vlg_sample_tst is
    port(
        INPUT_A         : in     vl_logic;
        INPUT_B         : in     vl_logic;
        INPUT_C         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end XOR_GATE_vlg_sample_tst;
