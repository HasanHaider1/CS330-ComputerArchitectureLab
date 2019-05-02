module Forwarding_Unit

(

	input [4:0] ID_EX__Rs1, ID_EX__Rs2,

	input [4:0] EX_MEM__Rd,

	input EX_MEM__RegWrite,

	input [4:0] MEM_WB__Rd,

	input MEM_WB__RegWrite,

	output reg [1:0] Forward_A, Forward_B

);



	always @(*)

		begin

		

		// FOWARD A LOGIC

    //From the slides

		// EX Hazard (a)

		
		if (EX_MEM__Rd == ID_EX__Rs1 && EX_MEM__RegWrite == 1 && EX_MEM__Rd != 0)

			begin

				Forward_A = 2'b10;   //10

			end

		

		// MEM Hazard (a)

		else if (MEM_WB__Rd == ID_EX__Rs1 && MEM_WB__RegWrite == 1 && MEM_WB__Rd != 0 

				&&

				!(EX_MEM__RegWrite == 1 && EX_MEM__Rd != 0 && EX_MEM__Rd == ID_EX__Rs1)

				)

			begin

				Forward_A = 2'b01;  //01

			end

		

		// No Hazard at mux A

		else

			begin

				Forward_A = 2'b00; //00

			end

		

		

		//FORWARD B LOGIC



		// EX Hazard (b)

		if (EX_MEM__Rd == ID_EX__Rs2 && EX_MEM__RegWrite == 1 && EX_MEM__Rd != 0)

			begin

				Forward_B = 2'b10;   //10

			end

		

		// MEM Hazard (b)

		else if (MEM_WB__Rd == ID_EX__Rs2 && MEM_WB__RegWrite == 1 && MEM_WB__Rd != 0 

				&&

				!(EX_MEM__RegWrite == 1 && EX_MEM__Rd != 0 && EX_MEM__Rd == ID_EX__Rs2)

				)

			begin

				Forward_B = 2'b01;  //01

			end

		

		// No Hazard at mux B

		else 

			begin

				Forward_B = 2'b00;  //00

			end

		

		end



endmodule