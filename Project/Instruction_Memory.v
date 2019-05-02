module Instruction_Memory
  (
	input  wire [63:0] InstructionAddress,
	output reg [31:0] Instruction
	);
	
	//16 8-bits memory Array registers
	reg [7:0] memReg [15:0];		
	
	initial
	begin
	  //initializing 16 locations with random values
		memReg[0] <= 8'b00110011;		
		memReg[1] <= 8'b10000010;	
		memReg[2] <= 8'b01100010;	
		memReg[3] <= 8'b00000000;	
		memReg[4] <= 8'b00110011;	
		memReg[5] <= 8'b00000100;	
		memReg[6] <= 8'b00110010;	
		memReg[7] <= 8'b01000000;	
		memReg[8] <= 8'b10110011;	
		memReg[9] <= 8'b00000011;	
		memReg[10] <= 8'b01000100;	
		memReg[11] <= 8'b00000000;	
		memReg[12] <= 8'b10110011;	
		memReg[13] <= 8'b10000100;	
		memReg[14] <= 8'b01100010;	
		memReg[15] <= 8'b00000000;	
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