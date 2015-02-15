module fixed_exp(x, r, clk, rst) ;
input [2 : -7] x ;
output [4 : -5] r ;
input clk, rst ;

reg [2:-31] rem = 34'b0 ;
reg [4:-5] exp = 10'b0000100000 ;

assign r = exp ;

function [2:-31] logn ;
	input [3:0] n ;

	begin : LogN_Table
		case (n)
		4'd0: logn = 34'b0010100111000000010000100000000000 ;
		4'd1: logn = 34'b0010000110010011111010101000000000 ;
		4'd2: logn = 34'b0000101100010111001000011000000000 ;
		4'd3: logn = 34'b0000011001111100110010001111100000 ;
		4'd4: logn = 34'b0000001110010001111111101111100000 ;
		4'd5: logn = 34'b0000000111100010011100000111011000 ;
		4'd6: logn = 34'b0000000011111000010100011000011000 ;
		4'd7: logn = 34'b0000000001111110000010100110110000 ;
		4'd8: logn = 34'b0000000000111111100000010101000110 ;
		default: logn = 0 ;
		endcase
	end
endfunction

function [4:-5] factor ;
	input [3:0] n ;
	input [4:-5] e ;

	begin : Factor_Table
		case (n)
		4'd0: factor = e + (e << 10'd2) ; 
		4'd1: factor = e + (e << 10'd1) ; 
		4'd2: factor =     (e << 10'b1) ; 
		4'd3: factor = e + (e >> 10'd1) ; 
		4'd4: factor = e + (e >> 10'd2) ; 
		4'd5: factor = e + (e >> 10'd3) ; 
		4'd6: factor = e + (e >> 10'd4) ; 
		4'd7: factor = e + (e >> 10'd5) ; 
		4'd8: factor = e + (e >> 10'd6) ; 
		default: factor = 0 ;
		endcase
	end
endfunction

reg [3:0] i = 0 ;

always @(posedge clk or posedge rst) begin
	if (rst) begin
                exp <= 10'b0000100000 ;
                rem <= x ; 
                i <= 0 ;
        end else begin : Calculate_Block
/*                reg [3:0] i ;
                reg [4:-5] e ;
                
                rem <= (x << 24) ;
                e <= 10'b0000100000 ;
                
                for (i = 4'b0; i < 4'd9; i = i + 4'b1) begin
                        if (logn(i) < rem) begin
                                rem <= rem - logn(i) ;
                                e <= factor(i, e) ;
                        end
                end
                
                exp <= e ;
        end
*/
                case (i)
                4'd0: begin
                        // initialization:
                        // e = 1
                        exp <= 10'b10000000000 ;
                        rem <= x << 24 ;
                        
                        // condition
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd1: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd2: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd3: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd4: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd5: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd6: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd7: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd8: begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                exp = exp * (factor(i) << 5) ;
                        end
                end
                4'd9: begin
                        val = 
                end
                default: i = 9 ;
                endcase
        end
end

endmodule 
