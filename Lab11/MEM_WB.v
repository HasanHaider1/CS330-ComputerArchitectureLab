module MEM_WB

(

	input clk, reset,

	input [4:0] EX_MEM__Rd,

	input [63:0] EX_MEM__ALU_Main,

	input [63:0] EX_MEM__Read_Data,

	input EX_MEM__RegWrite,

	input EX_MEM__MemtoReg,

	

	output reg [4:0] MEM_WB__Rd,

	output reg [63:0] MEM_WB__ALU_Main,

	output reg [63:0] MEM_WB__Read_Data,

	output reg MEM_WB__RegWrite,

	output reg MEM_WB__MemtoReg

	

);
initial

				begin

					MEM_WB__Rd = 0;

					MEM_WB__ALU_Main = 0;

					MEM_WB__Read_Data = 1'b0;

					MEM_WB__RegWrite = 0;

					MEM_WB__MemtoReg = 0;

		end


	always @(posedge clk or reset)

		begin

			if (reset)

				begin

					MEM_WB__Rd = 0;

					MEM_WB__ALU_Main = 0;

					MEM_WB__Read_Data = 0;

					MEM_WB__RegWrite = 0;

					MEM_WB__MemtoReg = 0;

				end

			else if (clk)

				begin

					MEM_WB__Rd = EX_MEM__Rd;

					MEM_WB__ALU_Main = EX_MEM__ALU_Main;

					MEM_WB__Read_Data = EX_MEM__Read_Data;

					MEM_WB__RegWrite = EX_MEM__RegWrite;

					MEM_WB__MemtoReg = EX_MEM__MemtoReg;

				end

		end
endmodule