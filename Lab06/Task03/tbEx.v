module tbEx
(
);
	reg [63:0]a;
	reg [63:0]b;
	reg [3:0]ALUOp;
	wire [63:0]Result;
	wire Zero;
	ALU_64_bit alu64
	(
	.a(a),
	.b(b),
	.ALUOp(ALUOp),
	.Result(Result),
	.Zero(Zero)
	);
	initial
	begin
	a = 64'h0000000AB000000F;
	b = 64'h0002300000000F0F;
		ALUOp = 4'b0000;
	#15
      ALUOp = 4'b0001;
      
      #15
      ALUOp = 4'b0010;
      
      #15
     
      ALUOp = 4'b0110;
      
      #15
      ALUOp = 4'b1100;
	end
endmodule