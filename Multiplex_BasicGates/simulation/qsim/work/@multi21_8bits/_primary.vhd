library verilog;
use verilog.vl_types.all;
entity Multi21_8bits is
    port(
        d0              : in     vl_logic_vector(7 downto 0);
        d1              : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end Multi21_8bits;
