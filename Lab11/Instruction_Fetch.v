module Instruction_Fetch
  (   
        input clk,reset,
        output [31:0] Instruction 
  );
  wire [63:0] PC_In;
  wire [63:0] PC_Out;
  reg [63:0] b = 64'd4;
  //instances
   Program_Counter pc
   (
        .PC_In(PC_In),
        .PC_Out(PC_Out),
        .clk(clk),
        .reset(reset)
   ); 
   
   Adder add
   (
        .a(PC_Out),
        .b(b),
        .out(PC_In)
   );
   
   Instruction_Memory IM
   (
        .Inst_Addr(PC_Out),
        .Instruction(Instruction)
   );
   
endmodule