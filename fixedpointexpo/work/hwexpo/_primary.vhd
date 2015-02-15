library verilog;
use verilog.vl_types.all;
entity hwexpo is
    port(
        SW              : in     vl_logic_vector(9 downto 0);
        LEDR            : out    vl_logic_vector(9 downto 0);
        CLOCK_50        : in     vl_logic
    );
end hwexpo;
