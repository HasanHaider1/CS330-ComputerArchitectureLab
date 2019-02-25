module top
  (
  a,b,CarryIn,ALUOp,Result,CarryOut
  );
    input [5:0] a;
    input [5:0] b;
    input CarryIn;
    input [3:0] ALUOp;
    output wire [5:0] Result;
    output wire CarryOut;
    wire temp0;
    wire temp1; 
    wire temp2;
    wire temp3;
    wire temp4;
    wire temp5;
    ALU_1_bit alu10
    ( 
      .a(a[0]),
      .b(b[0]),
      .CarryIn(CarryIn),
      .ALUOp(ALUOp),
      .Result(Result[0]),
      .CarryOut(temp0)
    );
    
    ALU_1_bit alu11
    ( 
      .a(a[1]),
      .b(b[1]),
      .CarryIn(temp0),
      .ALUOp(ALUOp),
      .Result(Result[1]),
      .CarryOut(temp1)
    );    
    
    ALU_1_bit alu12
    ( 
      .a(a[2]),
      .b(b[2]),
      .CarryIn(temp1),
      .ALUOp(ALUOp),
      .Result(Result[2]),
      .CarryOut(temp2)
    );
    
    ALU_1_bit alu13
    ( 
      .a(a[3]),
      .b(b[3]),
      .CarryIn(temp2),
      .ALUOp(ALUOp),
      .Result(Result[3]),
      .CarryOut(temp3)
    );
    
    ALU_1_bit alu14
    ( 
      .a(a[4]),
      .b(b[4]),
      .CarryIn(temp3),
      .ALUOp(ALUOp),
      .Result(Result[4]),
      .CarryOut(temp4)
    );
    
    ALU_1_bit alu15
    ( 
      .a(a[5]),
      .b(b[5]),
      .CarryIn(temp4),
      .ALUOp(ALUOp),
      .Result(Result[5]),
      .CarryOut(temp5)
    );
endmodule       
  