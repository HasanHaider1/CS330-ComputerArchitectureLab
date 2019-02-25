module ALU_64_bit
(
	input [63:0]a, [63:0]b,	input [3:0]ALUOp,	output reg [63:0]Result,	output reg Zero	
);
	always @(a | b | ALUOp)
		begin
			case({ALUOp})
				4'h0 : Result <= a & b;
				4'h1 : Result <= a | b;
				4'h2 : Result <= a + b;
				4'h6 : Result <= a	- b;
				default : Result <= ~(a | b);
			endcase
			if (Result == 64'h000000000)
			  Zero <= 1'b1; 
			else 
			  Zero <= 1'b0; 
		end
endmodule