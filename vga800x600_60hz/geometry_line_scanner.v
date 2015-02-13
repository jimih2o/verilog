// line scans a box to the given position 
module geometry_line_scanner(clk, line, x, y) ;
parameter SCREEN_WIDTH  = 800 ;
parameter SCREEN_HEIGHT = 600 ;
parameter WIDTH  = 200 ;
parameter HEIGHT = 200 ;

parameter BKGND_R = 4'b0100 ;
parameter BKGND_G = 4'b1000 ;
parameter BKGND_B = 4'b1111 ;

parameter C1 = 4'b0000 ;

parameter INC = 13 ;

input clk ;
input [31:0] x, y ;
//input [3:0] r1, g1, b1, r2, g2, b2 ;
output [4 * SCREEN_WIDTH * 3 - 1 : 0] line ;

reg [31 : 0] currentLine = 0 ;
reg [3 : 0] data[SCREEN_WIDTH * 3 - 1 : 0] ;

/* wish I could do this...
assign line = data ;
*/
genvar gidx ;

generate 
	for (gidx = 0; gidx < SCREEN_WIDTH * 3; gidx = gidx + 3) begin : GEN_PACK
		assign line[gidx * 4 + 11 : gidx * 4] = {data[gidx + 2], data[gidx + 1], data[gidx]} ;
	end
endgenerate

always @(posedge clk) begin : Updater
	currentLine = currentLine + 1 ;
	if (currentLine == HEIGHT)
		currentLine = 0 ;
	
	// fill out data
	if (currentLine < y || currentLine > y + HEIGHT) begin : Background_Draw
		integer i ;
		
		// for each pixel
		for (i = 0; i < SCREEN_WIDTH * 3; i = i + 3) begin
			// set to background color
			data[i]     = BKGND_R ;
			data[i + 1] = BKGND_G ;
			data[i + 2] = BKGND_B ;
		end
		
	end else begin : Box_Draw
		integer i, ci ;
		reg [3:0] c ;
		reg m ;
		
		ci = 0 ;
		m = 0 ;
		c = C1 ;
		
		// for each pixel
		for (i = 0; i < SCREEN_WIDTH + SCREEN_WIDTH + SCREEN_WIDTH; i = i + 3) begin : Interpolator
			if ((i >> 2) == x) m = 1 ;
			else if ((i >> 2) == x + WIDTH) m = 0 ;
			
			if (m) begin
				data[i]     = c ;
				data[i + 1] = c ;
				data[i + 2] = c ;

				ci = ci + 1 ;
				
				if (ci == INC) begin
					c = c + 4'b1 ;
					ci = 0 ;
				end
				
			end else begin
				// set to background color
				data[i]     = BKGND_R ;
				data[i + 1] = BKGND_G ;
				data[i + 2] = BKGND_B ;
			end
		end
	end
end

endmodule
