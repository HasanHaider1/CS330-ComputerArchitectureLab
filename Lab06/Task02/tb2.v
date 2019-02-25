module tb2
  (
  
  );
 
   reg [5:0] a;
   reg [5:0] b;
   reg [3:0] ALUOp;
   reg CarryIn;
    wire [5:0] Result;
    wire CarryOut;
  
  top top0
    (
    .a(a),
    .b(b),
    .ALUOp(ALUOp),
    .CarryIn(CarryIn),
    .CarryOut(CarryOut),
    .Result(Result)
  );
  initial 
    begin
      a = 6'b111001;
      b = 6'b001100;
      CarryIn = 1'b0;
      ALUOp = 4'b0000;
      
      
      
      
      #10
      ALUOp = 4'b0001;
      
      #10
      ALUOp = 4'b0010;
      
      #10
      CarryIn = 1'b1;
      ALUOp = 4'b0110;
      
      #10
      CarryIn = 1'b0;
      ALUOp = 4'b1100;
    end
endmodule
  
