library verilog;
use verilog.vl_types.all;
entity dff_8 is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end dff_8;
