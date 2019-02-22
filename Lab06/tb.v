module tb
(

);

	reg [31:0] instruction;
	wire [6:0] opcode;
	wire [4:0]rd;
	wire [2:0] funct3;
	wire [4:0] rs1;
	wire [4:0]  rs2;
	wire [6:0] funct7;
	
	instruction_parser ip
	(
		.instruction(instruction),
		.opcode(opcode),
		.rd(rd),
		.funct3(funct3),
		.rs1(rs1),
		.rs2(rs2),
		.funct7(funct7)
	);
	

	initial 
	begin 
	  
		instruction =  32'd512;
	  #10
	  instruction =  32'd660;
    #10
	  instruction =  32'd756;
	 
	end
	
	
	
	
endmodule