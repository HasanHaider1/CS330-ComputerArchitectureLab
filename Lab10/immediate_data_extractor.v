module immediate_data_extractor(instruction, imm_data);

	input wire [31:0] instruction;
	output reg [63:0] imm_data;
	
	always@(instruction)
	begin
		if (instruction[6] == 0)
			if (instruction[5] == 0)
				imm_data <= {{52{instruction[31]}},instruction[31:20]};
			else
				imm_data <= {{52{instruction[31]}},instruction[31:25], instruction[11:7]};
		else
			imm_data <= {{52{instruction[31]}},instruction[31], instruction[7], instruction[30:25], instruction[11:8]};
			
	end
endmodule
