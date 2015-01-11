/*******************************************************************************
 * Author	Jimi Huard
 * Class	ECE260
 * Due Date	Jan 13, 2015
 * 
 * 'serializer':
 * Takes an '8'-bit data value, and serializes it with low start, high stop bits 
 */
module serializer(out, busy, clock, data, wr) ;
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
// parameters
	parameter WIDTH = 8 ;

//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
// module ports
	output out ;
	output busy ;
	input wr ;
	input clock ;
	input [(WIDTH - 1) : 0] data ;
	
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
// internal registers
	reg outReg = 1 ;
	reg busyReg = 0 ;
	reg [(WIDTH - 1) + 2 : 0] serial = 0 ;
	reg [(WIDTH - 1) + 3 : 0] pos = 0 ;
	
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
// assign statements
	assign out = outReg ;
	assign busy = busyReg ;
	
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//
// logic
	always @(wr) begin
		serial = {1'b1, data, 1'b0} ;
	end
	
	always @(negedge wr) begin
		pos = 1 ;
		busyReg = 1 ;
	end
	
	always @(posedge clock) begin
		if (busyReg) begin
			outReg = (serial & pos) && 1 ;
			pos = pos << 1 ;
			
			if ((pos & (1 << (WIDTH + 2))) && 1) busyReg = 0 ;
		end
	end
	
endmodule
