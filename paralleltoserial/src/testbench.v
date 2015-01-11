module testbench;
	wire busy;
	wire out;
	reg clock, wr;
	reg [7:0] data;

	serializer DUT(out, busy, clock, data, wr);

	initial begin
		clock = 0;
		wr = 1;
		data = 8'b01011010;
		#10 wr = 0;
		#100 wr = 1;
		data = 8'b11100010;
		#10 wr = 0;
		#100 wr = 1;
		data = 8'b00110011;
		#10 wr = 0;
		#100 wr = 1;
		data = 8'b10001110;
		#10 wr = 0;
	end

	always #5 clock = ~clock; 
endmodule
