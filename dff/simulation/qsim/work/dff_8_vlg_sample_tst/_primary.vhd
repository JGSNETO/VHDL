library verilog;
use verilog.vl_types.all;
entity dff_8_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0);
        RST             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dff_8_vlg_sample_tst;
