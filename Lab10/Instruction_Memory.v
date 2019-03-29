module Instruction_Memory
  (
	input  wire [63:0] InstructionAddress,
	output reg [31:0] Instruction
	);
	
	//16 8-bits memory Array registers
	reg [7:0] memReg [15:0];		
	
	//Initialising the integer variable 'index' for loop purpose
	integer index;
	
	initial
	begin
	  //initializing 16 locations with random values
		memReg[0] <= 8'b100000011;		
		memReg[1] <= 8'b00110100;	
		memReg[2] <= 8'b10000101;	
		memReg[3] <= 8'b00000010;	
		memReg[4] <= 8'b10110011;	
		memReg[5] <= 8'b10000100;	
		memReg[6] <= 8'b10011010;	
		memReg[7] <= 8'b00000000;	
		memReg[8] <= 8'b10010011;	
		memReg[9] <= 8'b10000100;	
		memReg[10] <= 8'b00010100;	
		memReg[11] <= 8'b00000000;	
		memReg[12] <= 8'b00100011;	
		memReg[13] <= 8'b00110100;	
		memReg[14] <= 8'b10010101;	
		memReg[15] <= 8'b00000010;	
	end
	
	//whenever an Inst_Address field is changed,Inst_Address should appear at the 32-bit output port, Instruction. 
  always @(InstructionAddress)
	 begin
	   //Concatenating the InstructionAddress According to The MSB TO LSB ORDER.
	   //INST + 3 -> MSB (most right)
	   //INST + 2 -> MIDDLE
	   //INST + 1 -> MIDDLE
	   //INST + 0 -> LSB (most left)
		  Instruction <= {memReg[InstructionAddress[3:0]+3], memReg[InstructionAddress[3:0]+2], memReg[InstructionAddress[3:0]+1], memReg[InstructionAddress[3:0]]};
	 end
		
endmodule