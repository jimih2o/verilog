module vga_display(clk, /*line,*/ r, g, b, hs, vs) ;
parameter WIDTH  = 800 ;
parameter HEIGHT = 600 ;

parameter FRONTP_X = 56 ;
parameter SINK_X   = 120 ;
parameter BACKP_X  = 64 ;

parameter FRONTP_Y = 37 ;
parameter SINK_Y   = 6 ;
parameter BACKP_Y  = 23 ;

parameter BOX_SIZE = 100 ;

/*
parameter STATE_FRAME_BEGIN = 0,
          STATE_LINE_BEGIN  = 1,
	  STATE_LINE_DRAW   = 2,
	  STATE_LINE_END    = 3,
	  STATE_FRAME_END   = 4 ;
*/

input clk ;
// input [4 * WIDTH * 3 - 1 : 0] line ;

output [3 : 0] r, g, b ;
output hs, vs ;

reg 	hsync = 1'b0, 
	vsync = 1'b0 ;

/*
reg [3 : 0] red = 4'hF, 
	    green = 4'hF, 
	    blue = 4'hF ;
*/
/*
reg [2 : 0] state = STATE_FRAME_BEGIN ;
reg [31 : 0] counter = 0, lineCount = 0 ;
*/
/*
wire [3 : 0] scanLine[WIDTH * 3 - 1 : 0] ;

genvar gidx ;

generate 
	for (gidx = 0; gidx < WIDTH * 3; gidx = gidx + 3) begin : GEN_UNPACK
		assign scanLine[gidx    ] = line[gidx * 4 + 3  : gidx * 4] ;
		assign scanLine[gidx + 1] = line[gidx * 4 + 7  : gidx * 4 + 4] ;
		assign scanLine[gidx + 2] = line[gidx * 4 + 11 : gidx * 4 + 8] ;
	end
endgenerate
*/

reg [3:0] currentPixel[3] ;

assign hs = hsync ;
assign vs = vsync ;
assign r = drawPixels ? /*scanLine[(hPos - FRONTP_X)*3 + 0]*/ currentPixel[0] : 4'b0 ;
assign g = drawPixels ? /*scanLine[(hPos - FRONTP_X)*3 + 1]*/ currentPixel[1] : 4'b0 ;
assign b = drawPixels ? /*scanLine[(hPos - FRONTP_X)*3 + 2]*/ currentPixel[2] : 4'b0 ;

reg drawPixels = 0 ;
reg [10 : 0] hPos = 0, igrad = 0 ;
reg [9 : 0] x = 100, y = 100 ;
reg [9 : 0] vPos = 0 ;

always @(posedge vsync) begin 
	x = x + 10'b1 ;
	if (x == HEIGHT) x = 0 ;
end

always @(posedge clk) begin
	hPos = hPos + 10'b1 ;
	
	//  geometry, MOTION, and gradients
	if ((vPos > x && hPos > y) &&
		(vPos < x + BOX_SIZE && hPos < y + BOX_SIZE)) begin
		currentPixel[0] = 4'b0010 ;
		currentPixel[1] = 4'b0100 ;
		currentPixel[2] = 4'b1111 ;
	end else if (vPos == x + BOX_SIZE || hPos == y + BOX_SIZE) begin
		currentPixel[0] = 4'b1101 ;
		currentPixel[1] = 4'b0101 ;
		currentPixel[2] = 4'b0000 ;
	end else begin
		igrad = igrad + 10'b1 ;
		
		if (igrad == 13) begin
			currentPixel[0] = currentPixel[0] + 4'b1 ;
			currentPixel[1] = currentPixel[1] + 4'b1 ;
			currentPixel[2] = currentPixel[2] + 4'b1 ;
			igrad = 0 ;
		end
	end
	
	
	if (hPos == FRONTP_X) begin
		drawPixels = 1'b1 ;
		igrad = 0 ;
	end
	
	if (hPos == WIDTH + FRONTP_X) begin
		hsync = 1'b1 ;
		drawPixels = 1'b0 ;
	end

	if (hPos == WIDTH + FRONTP_X + SINK_X) begin
		hsync = 1'b0 ;
	end
	
	if (hPos == FRONTP_X + WIDTH + SINK_X + BACKP_X) begin
		vPos = vPos + 10'b1 ;
		hPos = 10'b0 ;
	end
	
	if (vPos == FRONTP_Y + HEIGHT) begin
		vsync = 1'b1 ;
	end
	
	if (vPos == FRONTP_Y + HEIGHT + SINK_Y) begin
		vsync = 1'b0 ;
	end
	
	if (vPos == FRONTP_Y + HEIGHT + SINK_Y + BACKP_Y) begin
		vPos = 10'b0 ;
	end
end

/*
always @(posedge clk) begin
	counter = counter + 1 ;
	
	case (state)
	STATE_FRAME_BEGIN: begin
		if (counter == FRONTP_Y) begin
			counter = 0 ;
			state = STATE_LINE_BEGIN ;
		end
		
//		red = 4'b0 ;
//		green = 4'b0 ;
//		blue = 4'b0 ;
	end
	
	STATE_LINE_BEGIN: begin
		if (counter == FRONTP_X) begin
			counter = 0 ;
			state = STATE_LINE_DRAW ;
		end
		
//		red = 4'b0 ;
//		green = 4'b0 ;
//		blue = 4'b0 ;
	end
	
	STATE_LINE_DRAW: begin
		if (counter == WIDTH) begin
			counter = 0 ;
			state = STATE_LINE_END ;
			hsync = 1'b0 ;
			lineCount = lineCount + 1 ;
		end
		
		red = scanLine[counter * 3] ;
		green = scanLine[counter * 3 + 1] ;
		blue = scanLine[counter * 3 + 2] ;
	end
	
	STATE_LINE_END: begin
		if (counter == SINK_X)
			hsync = 1'b1 ;
		else if (counter == SINK_X + BACKP_X) begin
			counter = 0 ;
			
			if (lineCount == HEIGHT) begin
				state = STATE_FRAME_END ;
				vsync = 1'b0 ;
				lineCount = 0 ;
			end else
				state = STATE_LINE_BEGIN ;
		end
		
//		red = 4'b0 ;
//		green = 4'b0 ;
//		blue = 4'b0 ;
	end
	
	STATE_FRAME_END: begin
		if (counter == SINK_Y) 
			vsync = 1 ;
		else if (counter == SINK_Y + BACKP_Y) begin
			counter = 0 ;
			state = STATE_FRAME_BEGIN ;
		end
		
//		red = 4'b0 ;
//		green = 4'b0 ;
//		blue = 4'b0 ;
	end
	
	endcase
end
*/

endmodule
