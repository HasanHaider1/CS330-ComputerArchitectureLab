module IF_ID

(

	input clk, reset,

	input [31:0] instruction,

	input [63:0] PC_Out,

	output reg [31:0] IF_ID__instruction,

	output reg [63:0] IF_ID__PC_Out

);

  initial
  begin
    IF_ID__instruction = 0;

		IF_ID__PC_Out = 0;
  end
  

	always @(posedge clk or reset)

		begin

			if (reset == 1'b1)

				begin

					IF_ID__instruction = 0;

					IF_ID__PC_Out = 0;

				end

			else if (  clk)

				begin

					IF_ID__instruction = instruction;

					IF_ID__PC_Out = PC_Out;

				end

		end



endmodule