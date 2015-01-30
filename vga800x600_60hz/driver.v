module driver(CLOCK_50, VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS) ;
input CLOCK_50 ;
parameter PIXEL_DEPTH = 4 ;
parameter SCREEN_WIDTH  = 800 + 800 / 4 ;
parameter SCREEN_HEIGHT = 600 + 600 / 4 ;

output [(PIXEL_DEPTH - 1):0] VGA_R, VGA_G, VGA_B ;
output VGA_HS, VGA_VS ;

wire [SCREEN_WIDTH * PIXEL_DEPTH * 3 - 1 : 0] scanlinewire ;
reg  [SCREEN_WIDTH * PIXEL_DEPTH * 3 - 1 : 0] scanLine = 0 ;

initial begin
	integer i ;
	
	for (i = 0; i < SCREEN_WIDTH * 3; i = i + 1) begin
		// red part
		scanLine[(i + 1) * PIXEL_DEPTH - 1 : i] = i * 4'b0001 ;
		
		// blue part
		scanLine[i + PIXEL_DEPTH - 1 : i] = i * 4'b0001 ;
		
		// green part
		scanLine[i + PIXEL_DEPTH - 1 : i] = i * 4'b1111 ;
		
		
	end
end

vga_interface #(PIXEL_DEPTH) vgaScreen(
	.clock_50mhz(CLOCK_50),
	.red(VGA_R), 
	.green(VGA_G), 
	.blue(VGA_B), 
	.scan_line(scanlinewire),
	.h_sync(VGA_HS),
	.v_sync(VGA_VS)
	) ; 

assign scanlinewire = scanLine ;

endmodule
