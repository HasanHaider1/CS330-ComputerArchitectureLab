module RISC_V_Processor_Pipeline

(

	input clk, reset

);



// WIRES

//***************************************************************************************



// Start

wire [63:0] w_PC_Out;

wire [31:0] w_Instruction;

wire [63:0] w_Adder_PC_4;

wire [63:0] w_MUX_Branch;





// IF/ID

wire [31:0] w_IF_ID__Instruction;	// Instruction

wire [6:0] w_IF_ID__opcode;

wire [4:0] w_IF_ID__rs1;

wire [4:0] w_IF_ID__rs2;

wire [4:0] w_IF_ID__rd;

wire [63:0] w_IF_ID__ReadData1;

wire [63:0] w_IF_ID__ReadData2;

wire [63:0] w_IF_ID__imm_data;

wire [63:0] w_IF_ID__PC_Out;

wire [2:0] w_funct3;

wire [6:0] w_funct7;


wire w_IF_ID__ALUSrc;					// Control EX

wire [1:0] w_IF_ID__ALUOp;				// Control EX

wire w_IF_ID__Branch;					// Control M

wire w_IF_ID__MemRead;					// Control M

wire w_IF_ID__MemWrite;					// Control M

wire w_IF_ID__RegWrite;					// Control WB

wire w_IF_ID__MemtoReg;					// Control WB





// ID/EX

wire [3:0] w_ID_EX__Instruction;		// Instruction [30, 14-12]

wire [4:0] w_ID_EX__Rd;

wire [4:0] w_ID_EX__Rs2;

wire [4:0] w_ID_EX__Rs1;

wire [63:0] w_ID_EX__imm_data;

wire [63:0] w_ID_EX__ReadData2;

wire [63:0] w_ID_EX__ReadData1;

wire [63:0] w_ID_EX__PC_Out;



wire w_ID_EX__ALUSrc;					// Control EX

wire [1:0] w_ID_EX__ALUOp; 				// Control EX

wire w_ID_EX__Branch;					// Control M

wire w_ID_EX__MemRead;					// Control M

wire w_ID_EX__MemWrite;					// Control M

wire w_ID_EX__RegWrite;					// Control WB

wire w_ID_EX__MemtoReg;					// Control WB



wire [3:0] w_ID_EX__Operation;



wire [1:0] w_ID_EX__Forward_A;			// Forward_A

wire [1:0] w_ID_EX__Forward_B;			// Forward_B



wire [63:0] w_ID_EX__Adder_Branch;



wire [63:0] w_ID_EX__MUX_Offset;



wire [63:0] w_ID_EX__MUX_FA;			

wire [63:0] w_ID_EX__MUX_FB;



wire [63:0] w_ID_EX__ALU_Main;

wire w_ID_EX__Zero;



// EX/MEM

wire [4:0] w_EX_MEM__Rd;		



wire [63:0] w_EX_MEM__MUX_FB;



wire w_EX_MEM__Zero;					// Control - ZERO from ALU MAIN



wire [63:0] w_EX_MEM__ALU_Main;

wire [63:0] w_EX_MEM__Adder_Branch;



wire w_EX_MEM__Branch;					// Control M

wire w_EX_MEM__MemRead;					// Control M

wire w_EX_MEM__MemWrite;				// Control M

wire w_EX_MEM__RegWrite;				// Control WB

wire w_EX_MEM__MemtoReg;				// Control WB



wire [63:0] w_EX_MEM__Read_Data;





// MEM/WB

wire [4:0] w_MEM_WB__Rd;

wire [63:0] w_MEM_WB__ALU_Main;

wire [63:0] w_MEM_WB__Read_Data;



wire w_MEM_WB__RegWrite;				// Control WB

wire w_MEM_WB__MemtoReg;				// Control WB



wire [63:0] w_MEM_WB__MUX_DM;



//***************************************************************************************



// REGISTERS

//***************************************************************************************



	IF_ID r_IF_ID

	(

		.clk(clk),

		.reset(reset),

		.instruction(w_Instruction),

		.PC_Out(w_PC_Out),

		

		.IF_ID__instruction(w_IF_ID__Instruction),

		.IF_ID__PC_Out(w_IF_ID__PC_Out)

	);

	

	ID_EX r_ID_EX

	(

		.clk(clk),

		.reset(reset),

		.IF_ID__instruction({w_IF_ID__Instruction[30], w_IF_ID__Instruction[14:12]}),

		.IF_ID__rd(w_IF_ID__rd), 

		.IF_ID__rs1(w_IF_ID__rs1),

		.IF_ID__rs2(w_IF_ID__rs2),

		.IF_ID__imm_data(w_IF_ID__imm_data),

		.IF_ID__ReadData2(w_IF_ID__ReadData2),

		.IF_ID__ReadData1(w_IF_ID__ReadData1),

		.IF_ID__PC_Out(w_IF_ID__PC_Out),

		.IF_ID__ALUSrc(w_IF_ID__ALUSrc),

		.IF_ID__ALUOp(w_IF_ID__ALUOp),

		.IF_ID__Branch(w_IF_ID__Branch),

		.IF_ID__MemRead(w_IF_ID__MemRead),

		.IF_ID__MemWrite(w_IF_ID__MemWrite),

		.IF_ID__RegWrite(w_IF_ID__RegWrite),

		.IF_ID__MemtoReg(w_IF_ID__MemtoReg),

		

		.ID_EX__instruction(w_ID_EX__Instruction),

		.ID_EX__Rd(w_ID_EX__Rd),

		.ID_EX__Rs2(w_ID_EX__Rs2),

		.ID_EX__Rs1(w_ID_EX__Rs1), 

		.ID_EX__imm_data(w_ID_EX__imm_data),

		.ID_EX__ReadData2(w_ID_EX__ReadData2),

		.ID_EX__ReadData1(w_ID_EX__ReadData1),

		.ID_EX__PC_Out(w_ID_EX__PC_Out),

		.ID_EX__ALUSrc(w_ID_EX__ALUSrc),

		.ID_EX__ALUOp(w_ID_EX__ALUOp),

		.ID_EX__Branch(w_ID_EX__Branch),

		.ID_EX__MemRead(w_ID_EX__MemRead),

		.ID_EX__MemWrite(w_ID_EX__MemWrite),

		.ID_EX__RegWrite(w_ID_EX__RegWrite),

		.ID_EX__MemtoReg(w_ID_EX__MemtoReg)

	);

	

	EX_MEM r_EX_MEM

	(

		.clk(clk),

		.reset(reset),

		.ID_EX__Rd(w_ID_EX__Rd),

		.ID_EX__MUX_FB(w_ID_EX__MUX_FB),

		.ID_EX__ALU_Main(w_ID_EX__ALU_Main),

		.ID_EX__Zero(w_ID_EX__Zero),

		.ID_EX__Adder_Branch(w_ID_EX__Adder_Branch),

		.ID_EX__Branch(w_ID_EX__Branch),

		.ID_EX__MemRead(w_ID_EX__MemRead),

		.ID_EX__MemWrite(w_ID_EX__MemWrite),

		.ID_EX__RegWrite(w_ID_EX__RegWrite),

		.ID_EX__MemtoReg(w_ID_EX__MemtoReg),

		

		.EX_MEM__Rd(w_EX_MEM__Rd),

		.EX_MEM__MUX_FB(w_EX_MEM__MUX_FB),

		.EX_MEM__ALU_Main(w_EX_MEM__ALU_Main),

		.EX_MEM__Zero(w_EX_MEM__Zero),

		.EX_MEM__Adder_Branch(w_EX_MEM__Adder_Branch),

		.EX_MEM__Branch(w_EX_MEM__Branch),

		.EX_MEM__MemRead(w_EX_MEM__MemRead),

		.EX_MEM__MemWrite(w_EX_MEM__MemWrite),

		.EX_MEM__RegWrite(w_EX_MEM__RegWrite),

		.EX_MEM__MemtoReg(w_EX_MEM__MemtoReg)

	);

	

	MEM_WB r_MEM_WB

	(

		.clk(clk),

		.reset(reset),

		.EX_MEM__Rd(w_EX_MEM__Rd),

		.EX_MEM__ALU_Main(w_EX_MEM__ALU_Main),

		.EX_MEM__Read_Data(w_EX_MEM__Read_Data),

		.EX_MEM__RegWrite(w_EX_MEM__RegWrite),

		.EX_MEM__MemtoReg(w_EX_MEM__MemtoReg),

		

		.MEM_WB__Rd(w_MEM_WB__Rd),

		.MEM_WB__ALU_Main(w_MEM_WB__ALU_Main),

		.MEM_WB__Read_Data(w_MEM_WB__Read_Data),

		.MEM_WB__RegWrite(w_MEM_WB__RegWrite),

		.MEM_WB__MemtoReg(w_MEM_WB__MemtoReg)

	);

 

// MODULES

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

		.Instruction(w_Instruction)

	);

	

	instruction_parser Inst_Par

	(

		.instruction(w_IF_ID__Instruction),

		.opcode(w_IF_ID__opcode),

		.rd(w_IF_ID__rd),

		.funct3(w_funct3),

		.rs1(w_IF_ID__rs1),

		.rs2(w_IF_ID__rs2),

		.funct7(w_funct7)

	);

	

	registerFile Registers

	(

		.clk(clk),

		.reset(reset),

		.WriteData(w_MEM_WB__MUX_DM),

		.rs1(w_IF_ID__rs1),

		.rs2(w_IF_ID__rs2),

		.rd(w_MEM_WB__Rd),

		.RegWrite(w_MEM_WB__RegWrite),

		.ReadData1(w_IF_ID__ReadData1),

		.ReadData2(w_IF_ID__ReadData2)

	);

	

	immediate_data_extractor IMD

	(

		.instruction(w_IF_ID__Instruction),

		.imm_data(w_IF_ID__imm_data)

	);

	

	Control_Unit CU

	(

		.Opcode(w_IF_ID__opcode),

		.Branch(w_IF_ID__Branch),

		.MemRead(w_IF_ID__MemRead),

		.MemtoReg(w_IF_ID__MemtoReg),

		.ALUOp(w_IF_ID__ALUOp),

		.MemWrite(w_IF_ID__MemWrite),

		.ALUSrc(w_IF_ID__ALUSrc),

		.RegWrite(w_IF_ID__RegWrite)

	);

	

	ALU_Control ALUC

	(

		.ALUOp(w_ID_EX__ALUOp),

		.Funct(w_ID_EX__Instruction),

		.Operation(w_ID_EX__Operation)

	);

	
	Data_Memory DM

	(

		.clk(clk),

		.MemWrite(w_EX_MEM__MemWrite),

		.MemRead(w_EX_MEM__MemRead),

		.SIZE(2'b11),

		.Mem_Addr(w_EX_MEM__ALU_Main),

		.Write_Data(w_EX_MEM__MUX_FB),

		.Read_Data(w_EX_MEM__Read_Data)

	);

	

	Adder ALU_PC_4

	(

		.a(w_PC_Out),

		.b(64'd4),

		.out(w_Adder_PC_4)

	);

	

	Adder ALU_Branch

	(

		.a(w_ID_EX__PC_Out),

		.b(w_ID_EX__imm_data << 1),						// SHIFT LEFT 1

		.out(w_ID_EX__Adder_Branch)

	);

	

	ALU_64_bit ALU_Main

	(

		.a(w_ID_EX__MUX_FA),

		.b(w_ID_EX__MUX_Offset),

		.ALUOp(w_ID_EX__Operation),

		.Result(w_ID_EX__ALU_Main),

		.Zero(w_ID_EX__Zero)

	);

	

	mux1 MUX_Branch

	(

		.a(w_Adder_PC_4),

		.b(w_EX_MEM__Adder_Branch),

		.sel(w_EX_MEM__Branch 	& 1'b0),		// BRANCH AND

		.data_out(w_MUX_Branch)

	);

	

	mux1 MUX_Offset

	(

		.a(w_ID_EX__MUX_FB),

		.b(w_ID_EX__imm_data),

		.sel(w_ID_EX__ALUSrc),

		.data_out(w_ID_EX__MUX_Offset)

	);

	

	mux1 MUX_DM

	(

		.a(w_MEM_WB__ALU_Main),

		.b(w_MEM_WB__Read_Data),

		.sel(w_MEM_WB__MemtoReg),

		.data_out(w_MEM_WB__MUX_DM)

	);

	

	mux_4_in MUX_FA

	(

		.a(w_ID_EX__ReadData1),

		.b(w_MEM_WB__MUX_DM),

		.c(w_EX_MEM__ALU_Main),

		.d(64'd0),

		.sel(w_ID_EX__Forward_A),

		.data_out(w_ID_EX__MUX_FA)

	);

	

	mux_4_in MUX_FB

	(

		.a(w_ID_EX__ReadData2),

		.b(w_MEM_WB__MUX_DM),

		.c(w_EX_MEM__ALU_Main),

		.d(64'd0),

		.sel(w_ID_EX__Forward_B),

		.data_out(w_ID_EX__MUX_FB)

	);

	

	Forwarding_Unit FU

	(

		.ID_EX__Rs1(w_ID_EX__Rs1),

		.ID_EX__Rs2(w_ID_EX__Rs2),

		.EX_MEM__Rd(w_EX_MEM__Rd),

		.EX_MEM__RegWrite(w_EX_MEM__RegWrite),

		.MEM_WB__Rd(w_MEM_WB__Rd),

		.MEM_WB__RegWrite(w_MEM_WB__RegWrite),

		.Forward_A(w_ID_EX__Forward_A),

		.Forward_B(w_ID_EX__Forward_B)

	);



endmodule