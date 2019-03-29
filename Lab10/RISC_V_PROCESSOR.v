module RISC_V_PROCESSOR

(

	input clk, reset

);





//WIRES

wire [63:0] w_PC_Out;
wire [31:0] w_instruction;
wire [6:0] w_opcode;
wire [4:0] w_rs1;
wire [4:0] w_rs2;
wire [4:0] w_rd;
wire [63:0] w_imm_data;
wire [63:0] w_ReadData1;
wire [63:0] w_ReadData2;
wire w_Branch;
wire w_MemRead;
wire w_MemtoReg;
wire [1:0] w_ALUOp;
wire w_MemWrite;
wire w_ALUSrc;
wire w_RegWrite;
wire [3:0] w_Operation;
wire [63:0] w_ReadData;
wire [63:0] w_ALU_PC_4;
wire [63:0] w_ALU_Branch;
wire [63:0] w_ALU_Main;
wire [63:0] w_MUX_Branch;
wire [63:0] w_MUX_DM;
wire [63:0] w_MUX_Offset;
wire w_Zero;
wire [6:0] w_funct_7;
wire [2:0] w_funct_3;

	Program_Counter PC

	(

		.clk(clk),

		.reset(reset),

		.PC_In(w_MUX_Branch),

		.PC_Out(w_PC_Out)

	);

	

	Instruction_Memory Inst_Addr

	(

		.InstructionAddress(w_PC_Out),

		.Instruction(w_instruction)

	);
	
	instruction_parser Inst_Par

	(

		.instruction(w_instruction),

		.opcode(w_opcode),

		.rd(w_rd),

		.funct3(w_funct_3),

		.rs1(w_rs1),

		.rs2(w_rs2),

		.funct7(w_funct_7)

	);

  registerFile Registers

	(

		.clk(clk),

		.reset(reset),

		.WriteData(w_MUX_DM),

		.rs1(w_rs1),

		.rs2(w_rs2),

		.rd(w_rd),

		.RegWrite(w_RegWrite),

		.ReadData1(w_ReadData1),

		.ReadData2(w_ReadData2)

	);

	immediate_data_extractor IMD

	(

		.instruction(w_instruction),

		.imm_data(w_imm_data)

	);

	

	Control_Unit CU

	(

		.Opcode(w_opcode),

		.Branch(w_Branch),

		.MemRead(w_MemRead),

		.MemtoReg(w_MemtoReg),

		.ALUOp(w_ALUOp),

		.MemWrite(w_MemWrite),

		.ALUSrc(w_ALUSrc),

		.RegWrite(w_RegWrite)

	);

  ALU_Control ALUC

	(

		.ALUOp(w_ALUOp),

		.Funct({w_instruction[30], w_instruction[14:12]}),

		.Operation(w_Operation)

	);

	

	Data_Memory DM

	(

		.clk(clk),

		.memWrite(w_MemWrite),

		.memRead(w_MemRead),

		//.SIZE(2'b11),

		.memAdd(w_ALU_Main),

		.writeData(w_ReadData2),

		.readData(w_ReadData)

	);

	ALU_64_bit ALU_PC_4

	(

		.a(w_PC_Out),

		.b(64'd4),

		.ALUOp(4'b0010),

		.Result(w_ALU_PC_4),

		.Zero()

	);

	

	ALU_64_bit ALU_Branch

	(

		.a(w_PC_Out),

		.b(w_imm_data << 1),		//TO SHIFT OR NOT TO SHIFT

		.ALUOp(4'b0010),

		.Result(w_ALU_Branch),

		.Zero()

	);

	

	ALU_64_bit ALU_Main

	(

		.a(w_ReadData1),

		.b(w_MUX_Offset),

		.ALUOp(w_Operation),

		.Result(w_ALU_Main),

		.Zero(w_Zero)

	);
	
// BRANCH K LIYE ISTIMAAL HONAY WALA MUX
	mux1 MUX_Branch

	(

		.a(w_ALU_PC_4),

		.b(w_ALU_Branch),

		.sel(w_Branch & w_Zero),	//BRANCH AND

		.data_out(w_MUX_Branch)

	);

	
// REGISTERS AUR ALU K DARMIYAAN WALA MUX
	mux1 MUX_Offset

	(

		.a(w_ReadData2),

		.b(w_imm_data),

		.sel(w_ALUSrc),

		.data_out(w_MUX_Offset)

	);

	
//DATA MEMORY WALA MUX
	mux1 MUX_DM

	(

		//.a(w_ReadData),

		//.b(w_ALU_Main),

		.a(w_ALU_Main),

		.b(w_ReadData),

		.sel(w_MemtoReg),

		.data_out(w_MUX_DM)

	);


endmodule
