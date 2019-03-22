module top_control
( 
        input [3:0] Funct,
        input [6:0] Opcode,
        output  [3:0] Operation
);      
        wire [1:0] ALUOp;
        wire Branch;
        wire MemRead;
        wire MemtoReg;
        wire MemWrite;
        wire ALUSrc;
        wire RegWrite;
        
 Control_Unit CU1
 (
        .ALUOp(ALUOp),
        .MemRead(MemRead),
        .MemtoReg(MemtoReg),
        .Branch(Branch),
        .MemWrite(MemWrite),
        .ALUSrc(ALUSrc),
        .RegWrite(RegWrite),
        .Opcode(Opcode)
        
 );       
 
 ALU_Control AC1
 (
        .ALUOp(ALUOp),
        .Funct(Funct),
        .Operation(Operation)
 );
 
 endmodule