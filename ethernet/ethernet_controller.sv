// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Top Level Module for ethernet interface
// inputs:
//	GPIO_1
//	PLL'd clock 50 -> 100	
module ethernet_controller(CLK, GPIO_1) ;
// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Ports
input CLK ;
input [15:0] GPIO_1 ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Var
// data buffer
logic [15:0] data_buffer[17:0] ;
// keeps track of how many ticks have passed for each sample  
integer clock_counter = 0 ;
integer sample_index = 0 ;

// synthesis translate off
logic [15:0] ENET_DATA ;
logic ENET_CLK, ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N ;
// synthesis translate on

dm9000a DM9000A(.*, .clk100(CLK)) ;

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Sampling
// clock = 100MHz
// want to sample at 10000Hz * (18 samples) = 180000 samples/second
// 100Mhz => 180000Hz
// 10ns per clock
// want 1/1800 seconds for a reading
// 5.556us =>
// 5,556ns
// rounding to nearest 10ns
// 5,560ns
// 556 clocks between samples 
always_ff @(CLK) begin
	if (clock_counter == 556) begin
		clock_counter <= 0 ;
		
		data_buffer[sample_index] <= GPIO_1 ;
		
		if (sample_index == 17) begin
			sample_index <= 0 ;
		end else begin
			sample_index <= sample_index + 1 ;
		end
	end else begin
		clock_counter <= clock_counter + 1 ;
	end
end

endmodule // ethernet_controller

// \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ // \\ //
/// Testbench Driver
// synthesis translate off
module testbench ;

logic [15:0] in = 16'b0 ;
logic clk = 1'b0 ;

always #10 clk = ~clk ;

ethernet_controller enet(clk, in) ;

initial begin : blk1
	logic [15:0] i ;
	
	// Test Sampling
	for (i = 0; i < 18; i = i + 1) begin
		in = i ; #5570 ;
	end
	
	for (i = 0; i < 18; i = i + 1) begin
		$display("snapshot[%d] = %d", i, enet.data_buffer[i]) ;
	end
end

endmodule
