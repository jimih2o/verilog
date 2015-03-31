// Template for the hardware FPGA implementation of the exp function
module hwexpo(SW, LEDR, CLOCK_50, KEY) ;
input wire [9:0] SW; // in signed fixed point 3.7 plus sign bit
output [9:0] LEDR; // in unsigned fixed point 5.5 format
input wire CLOCK_50;
input [0:0] KEY ;
// your code goes here

fixed_exp EXP(SW, LEDR, CLOCK_50, ~KEY[0]) ;

endmodule

// Testbench for testing exp module
module testbench;
reg [9:0] SW; // input, 3.7 fixed point signed
reg CLOCK_50;
wire [9:0] LEDR; // output 5.5 fixed point unsigned
real x; // number we're trying to calculate the exp of
real result; // calculated result;

// Design under test
fixed_exp DUT(SW, LEDR, CLOCK_50, 1'b0) ;

initial begin
	CLOCK_50 = 0;
	x = 1.0; // First, calculate exp(1.0)
	SW = $rtoi(x * (1<<7)); // Set the switches in 3.7 signed fixed point format end
end

always @(LEDR) begin // execute every time a new output becomes available
	result = LEDR / $itor(1<<5); // real result of the calculation
	$display("exp (%6.3f) = %6.3f (%6.3f)", x, result, $exp(x));

	// Do random tests
	// Calculate a real random number between 0 and 3.46
	x = $itor($random & 'hFFFF) / $itor(1<<16) * 3.46;
	SW = $rtoi(x * (1<<7)); // Set the switches in 3.7 signed fixed point format
	// $display("next exp(%6.3f) %10b", x, SW);
end

// clock driver, clock cycle is 4
always #2 CLOCK_50 = ~CLOCK_50;
endmodule