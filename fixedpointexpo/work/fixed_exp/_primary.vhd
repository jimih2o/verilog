library verilog;
use verilog.vl_types.all;
entity fixed_exp is
    port(
        x               : in     vl_logic_vector;
        r               : out    vl_logic_vector;
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end fixed_exp;
