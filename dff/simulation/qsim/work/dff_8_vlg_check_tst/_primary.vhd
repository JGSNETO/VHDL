library verilog;
use verilog.vl_types.all;
entity dff_8_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end dff_8_vlg_check_tst;
