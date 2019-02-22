module tb
  (
  );
    reg [5:0] a;
    reg [5:0] b;
    reg CarryIn;
    reg [3:0] ALUOp;
    wire [5:0] Result;
    wire CarryOut;
    ALU_1_bit alu10
    ( 
      .a(a[0]),
      .b(b[0]),
      .CarryIn(CarryIn),
      .ALUOp(ALUOp),
      .Result[0](Result),
      .CarryOut0(CarryOut)
    );
    
    ALU_1_bit alu11
    ( 
      .a(a[1]),
      .b(b[1]),
      .CarryIn(CarryOut0),
      .ALUOp(ALUOp),
      .Result[1](Result),
      .CarryOut1(CarryOut)
    );    
    
    ALU_1_bit alu12
    ( 
      .a(a[2]),
      .b(b[2]),
      .CarryIn(CarryOut1),
      .ALUOp(ALUOp),
      .Result[2](Result),
      .CarryOut2(CarryOut)
    );
    
    ALU_1_bit alu13
    ( 
      .a(a[3]),
      .b(b[3]),
      .CarryIn(CarryOut2),
      .ALUOp(ALUOp),
      .Result[3](Result),
      .CarryOut3(CarryOut)
    );
    
    ALU_1_bit alu14
    ( 
      .a(a[4]),
      .b(b[4]),
      .CarryIn(CarryOut3),
      .ALUOp(ALUOp),
      .Result[4](Result),
      .CarryOut4(CarryOut)
    );
    
    ALU_1_bit alu15
    ( 
      .a(a),
      .b(b),
      .CarryIn(CarryOut4),
      .ALUOp(ALUOp),
      .Result[5](Result),
      .CarryOut5(CarryOut)
    );
endmodule       
  