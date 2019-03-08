module top (
        input [31:0] instruction,
        output [63:0] ReadData1, 
        output [63:0] ReadData2
);
//Instruction Parser Walays
  wire [6:0] opcode;
  wire [4:0] rd;
  wire [2:0] funct3;
  wire [4:0] rs1;
  wire [4:0] rs2;
  wire [6:0] funct7;
  //Register File Walay
  wire [63:0] WriteData;
  wire clk, reset, RegWrite;
  
  instruction_parser inspar
  (
     .instruction(instruction),
     .opcode(opcode),
     .rd(rd),
	   .funct3(funct3),
	   .rs1(rs1),
	   .rs2(rs2),
	   .funct7(funct7)
  );
  
  registerFile regFile
  (
      .rs1(rs1),
      .rs2(rs2),
      .rd(rd),
      .clk(clk),
      .RegWrite(RegWrite),
      .reset(reset),
      .WriteData(WriteData),
      .ReadData1(ReadData1),
      .ReadData2(ReadData2)
  );
endmodule