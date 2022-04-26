library verilog;
use verilog.vl_types.all;
entity Multiplex is
    port(
        MuxOutput       : out    vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        S               : in     vl_logic
    );
end Multiplex;
