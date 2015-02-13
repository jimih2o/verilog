module driver(CLOCK_50, VGA_R, VGA_G, VGA_B, VGA_HS, VGA_VS) ;
input CLOCK_50 ;

parameter SCREEN_WIDTH  = 800 ;
parameter SCREEN_HEIGHT = 600 ;

/*
// modelsim
reg CLOCK_50 = 0 ;
always #20 CLOCK_50 = ~CLOCK_50 ;
*/

// clock divider
reg clk_25 = 0 ;
always @(posedge CLOCK_50) clk_25 = ~clk_25 ;


output [3 : 0] VGA_R, VGA_G, VGA_B ;
output VGA_HS, VGA_VS ;

//wire [4 * SCREEN_WIDTH * 3 - 1 : 0] scan_line ;
//reg [31:0] boxX = 250, boxY = 200 ;
wire h_sync, v_sync ;

assign VGA_HS = h_sync ;
assign VGA_VS = v_sync ;

vga_display vga(
	.clk(CLOCK_50),
//	.line(scan_line),
	.r(VGA_R),
	.g(VGA_G),
	.b(VGA_B),
	.hs(h_sync),
	.vs(v_sync)
	) ;
/*
geometry_line_scanner geom(
	.clk(h_sync),
	.line(scan_line),
	.x(boxX),
	.y(boxY)
	) ;
*/
//reg [31 : 0] vCounts = 0 ;
/*
always @(posedge v_sync) begin 
//	vCounts = vCounts + 1 ;
	
//	if (vCounts == 60) begin
		boxX = boxX + 1 ;
		
		if (boxX == SCREEN_WIDTH)
			boxX = 0 ;
		
//		vCounts = 0 ;
//	end
end
*/
endmodule
