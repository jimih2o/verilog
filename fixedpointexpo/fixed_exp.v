module fixed_exp(x, r, clk, rst) ;
input [2 : -7] x ;
output [4 : -5] r ;
input clk, rst ;

reg [2:-29] rem = 32'b0 ;
reg [4:-5] exp = 10'b0000100000 ;

assign r = exp ;

function [2:-29] logn ;
	input [3:0] n ;

	begin : LogN_Table
		case (n)
		4'd0: logn = 32'b00110011100000001000010000000000 ;
		4'd1: logn = 32'b00100011001001111101010100000000 ;
		4'd2: logn = 32'b00010110001011100100001100000000 ;
		4'd3: logn = 32'b00001100111110011001000111110000 ;
		4'd4: logn = 32'b00000111001000111111110111110000 ;
		4'd5: logn = 32'b00000011110001001110000011101100 ;
		4'd6: logn = 32'b00000001111100001010001100001100 ;
		4'd7: logn = 32'b00000000111111000001010011011000 ;
		4'd8: logn = 32'b00000000011111110000001010100011 ;
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

/*
reg [3:0] i = 4'b0 ;
reg [4:-5] e = 10'b0 ;
*/

always @(posedge clk or posedge rst) begin
	if (rst) begin
                exp = 10'b0000100000 ;
                rem = x << 22 ;
//                i <= 0 ;
        end else begin : Calculate_Block
                reg [3:0] i ;
                reg [4:-5] e ;
                
                rem = (x << 22) ;
                e = 10'b0000100000 ;
                
                for (i = 4'b0; i < 4'd9; i = i + 4'b1) begin
                        if (logn(i) < rem) begin
                                rem = rem - logn(i) ;
                                e = factor(i, e) ;
                        end
                end
                
                exp = e ;
        end
        
//                $display("e = %5.5f, x = %3.7f, rem = %3.7f, i = %d", e / $itor(1 << 5), x / $itor(1 << 7), rem / $itor(1 << 31), i) ;
/*
                i <= i + 4'b1 ;
                case (i)
                4'd0: begin
                        // initialization:
                        // e = 1
                        e = 10'b0000100000 ;
                        // x is 3.7 => rem 3.29
                        // x -> rem = << (29 - 7) = << 22
                        rem = x << 22 ;
                        
                        if (rem >= logn(i)) begin
                                rem = rem - logn(i) ;
                                e = e + (e << 10'd2) ;
                        end
                end
                4'd1: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e << 10'd1) ;
                        end
                end
                4'd2: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= (e << 10'd1) ;
                        end
                end
                4'd3: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e >> 10'd1) ;
                        end
                end
                4'd4: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e >> 10'd2) ;
                        end
                end
                4'd5: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e >> 10'd3) ;
                        end
                end
                4'd6: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e >> 10'd4) ;
                        end
                end
                4'd7: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e >> 10'd5) ;
                        end
                end
                4'd8: begin
                        if (rem >= logn(i)) begin
                                rem <= rem - logn(i) ;
                                e <= e + (e >> 10'd6) ;
                        end
                end
                4'd9: begin
                        exp <= e ;
                        i <= 4'b0 ;
                end
                default: i <= 4'b0 ;
                endcase
        end
*/
end

endmodule 
