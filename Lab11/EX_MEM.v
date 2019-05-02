module EX_MEM

(

	input clk, reset,

	input [4:0] ID_EX__Rd,

	input [63:0] ID_EX__MUX_FB, ID_EX__ALU_Main,

	input ID_EX__Zero,

	input [63:0] ID_EX__Adder_Branch,

	input ID_EX__Branch,

	input ID_EX__MemRead,

	input ID_EX__MemWrite,

	input ID_EX__RegWrite,

	input ID_EX__MemtoReg,

	

	output reg [4:0] EX_MEM__Rd,

	output reg [63:0] EX_MEM__MUX_FB, EX_MEM__ALU_Main,

	output reg EX_MEM__Zero,

	output reg [63:0] EX_MEM__Adder_Branch,

	output reg EX_MEM__Branch,

	output reg EX_MEM__MemRead,

	output reg EX_MEM__MemWrite,

	output reg EX_MEM__RegWrite,

	output reg EX_MEM__MemtoReg

	

);

initial
 begin

					EX_MEM__Rd = 0;

					EX_MEM__MUX_FB = 0;

					EX_MEM__ALU_Main = 0;

					EX_MEM__Zero = 0;

					EX_MEM__Adder_Branch = 0;

					EX_MEM__Branch = 0;

					EX_MEM__MemRead = 0;

					EX_MEM__MemWrite = 0;

					EX_MEM__RegWrite = 0;

					EX_MEM__MemtoReg = 0;

				end 

	always @(posedge clk or reset)

		begin

			if (reset)

				begin

					EX_MEM__Rd = 0;

					EX_MEM__MUX_FB = 0;

					EX_MEM__ALU_Main = 0;

					EX_MEM__Zero = 0;

					EX_MEM__Adder_Branch = 0;

					EX_MEM__Branch = 0;

					EX_MEM__MemRead = 0;

					EX_MEM__MemWrite = 0;

					EX_MEM__RegWrite = 0;

					EX_MEM__MemtoReg = 0;

				end

			else if (clk)

				begin

					EX_MEM__Rd = ID_EX__Rd;

					EX_MEM__MUX_FB = ID_EX__MUX_FB;

					EX_MEM__ALU_Main = ID_EX__ALU_Main;

					EX_MEM__Zero = ID_EX__Zero;

					EX_MEM__Adder_Branch = ID_EX__Adder_Branch;

					EX_MEM__Branch = ID_EX__Branch;

					EX_MEM__MemRead = ID_EX__MemRead;

					EX_MEM__MemWrite = ID_EX__MemWrite;

					EX_MEM__RegWrite = ID_EX__RegWrite;

					EX_MEM__MemtoReg = ID_EX__MemtoReg;

				end
		end
endmodule