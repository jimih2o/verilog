library verilog;
use verilog.vl_types.all;
entity serializer is
    generic(
        WIDTH           : integer := 8
    );
    port(
        \out\           : out    vl_logic;
        busy            : out    vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector;
        wr              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end serializer;
