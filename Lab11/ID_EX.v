module ID_EX

(

	input clk, reset,

	input [3:0] IF_ID__instruction,

	input [4:0] IF_ID__rd, IF_ID__rs1, IF_ID__rs2,

	input [63:0] IF_ID__imm_data, IF_ID__ReadData2,

	input [63:0] IF_ID__ReadData1, IF_ID__PC_Out,

	input IF_ID__ALUSrc,

	input [1:0] IF_ID__ALUOp,

	input IF_ID__Branch,

	input IF_ID__MemRead,

	input IF_ID__MemWrite,

	input IF_ID__RegWrite,

	input IF_ID__MemtoReg,

	

	output reg [3:0] ID_EX__instruction,

	output reg [4:0] ID_EX__Rd, ID_EX__Rs2, ID_EX__Rs1, 

	output reg [63:0] ID_EX__imm_data, ID_EX__ReadData2,

	output reg [63:0] ID_EX__ReadData1, ID_EX__PC_Out,

	output reg ID_EX__ALUSrc,

	output reg [1:0] ID_EX__ALUOp,

	output reg ID_EX__Branch,

	output reg ID_EX__MemRead,

	output reg ID_EX__MemWrite,

	output reg ID_EX__RegWrite,

	output reg ID_EX__MemtoReg

);

initial
  begin

					ID_EX__instruction = 0;

					ID_EX__Rd = 0;

					ID_EX__Rs2 = 0;

					ID_EX__Rs1 = 0;

					ID_EX__imm_data = 0;

					ID_EX__ReadData2 = 0;

					ID_EX__ReadData1 = 0;

					ID_EX__PC_Out = 0;

					ID_EX__ALUSrc = 0;

					ID_EX__ALUOp = 0;

					ID_EX__Branch = 0;

					ID_EX__MemRead = 0;

					ID_EX__MemWrite = 0;

					ID_EX__RegWrite = 0;

					ID_EX__MemtoReg = 0;

				end

	always @(posedge clk or reset)

		begin

			if (reset)

				begin

					ID_EX__instruction = 0;

					ID_EX__Rd = 0;

					ID_EX__Rs2 = 0;

					ID_EX__Rs1 = 0;

					ID_EX__imm_data = 0;

					ID_EX__ReadData2 = 0;

					ID_EX__ReadData1 = 0;

					ID_EX__PC_Out = 0;

					ID_EX__ALUSrc = 0;

					ID_EX__ALUOp = 0;

					ID_EX__Branch = 0;

					ID_EX__MemRead = 0;

					ID_EX__MemWrite = 0;

					ID_EX__RegWrite = 0;

					ID_EX__MemtoReg = 0;

				end

			else if (clk)

				begin

					ID_EX__instruction = IF_ID__instruction;

					ID_EX__Rd = IF_ID__rd;

					ID_EX__Rs2 = IF_ID__rs2;

					ID_EX__Rs1 = IF_ID__rs1;

					ID_EX__imm_data = IF_ID__imm_data;

					ID_EX__ReadData2 = ID_EX__Rs2;

					ID_EX__ReadData1 = ID_EX__Rs1;

					ID_EX__PC_Out = IF_ID__PC_Out;

					ID_EX__ALUSrc = IF_ID__ALUSrc;

					ID_EX__ALUOp = IF_ID__ALUOp;

					ID_EX__Branch = IF_ID__Branch;

					ID_EX__MemRead = IF_ID__MemRead;

					ID_EX__MemWrite = IF_ID__MemWrite;

					ID_EX__RegWrite = IF_ID__RegWrite;

					ID_EX__MemtoReg = IF_ID__MemtoReg;

				end

		end
endmodule