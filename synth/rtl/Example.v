// example Verilog file


module Example(
	input CLK,
	input RST_N,
	input UP_DN_N,   // count up (high), count down (low)
	output [11:0] Z);

	reg [11:0] Z_reg;

	always @(posedge CLK, negedge RST_N) begin
		if(!RST_N) begin
			Z_reg <= 12'b0;
		end
		else begin
			Z_reg <= UP_DN_N ? Z_reg + 12'd1 : Z_reg - 12'd1;
		end
	end

	assign Z = Z_reg;

endmodule

