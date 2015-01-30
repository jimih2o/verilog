/*******************************************************************************
 * Converts a hexidecimal number into a 7-segment display output
 */
module HexTo7SegDisplay(value, seg) ;
//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// parameters

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// ports
input  [3:0] value ;
output [6:0] seg ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// registers and wires
reg [6:0] display = 0 ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// assignment
assign seg = ~display ;

//\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\////\\//\\//
// logic
	always @(value) begin
		case (value)
			4'h0: display = 7'b0111111 ;
			4'h1: display = 7'b0000110 ;
			4'h2: display = 7'b1011011 ;
			4'h3: display = 7'b1001111 ;
			4'h4: display = 7'b1100110 ;
			4'h5: display = 7'b1101101 ;
			4'h6: display = 7'b1111101 ;
			4'h7: display = 7'b0000111 ;
			4'h8: display = 7'b1111111 ;
			4'h9: display = 7'b1100111 ;
			4'hA: display = 7'b1110111 ;
			4'hB: display = 7'b1111100 ;
			4'hC: display = 7'b0111001 ;
			4'hD: display = 7'b1011110 ;
			4'hE: display = 7'b1111001 ;
			4'hF: display = 7'b1110001 ;
		endcase
	end

endmodule
