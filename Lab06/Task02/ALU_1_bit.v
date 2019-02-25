module ALU_1_bit
  (
  input a,
  input b,
  input CarryIn,
  input [3:0] ALUOp,
  output reg Result,
  output reg CarryOut
  );
  reg mux1out;
  reg mux2out;
  
  always @(a or b or ALUOp)
    begin
      CarryOut = (a & CarryIn) | (b & CarryIn) | (a & b);
       case (ALUOp[3:0])
          4'b0000 :
          begin
           Result = a & b;
           CarryOut = 1'b0;
          end
          4'b0001 : 
          begin
            Result = a | b;
            CarryOut = 1'b0;
          end
          4'b0010 :Result = (a & ~b & ~CarryIn) + ( ~a & b & ~CarryIn) + (~a & ~b & CarryIn) + (a & b & CarryIn);
          4'b0110 : Result = (a & ~b & ~CarryIn) + ( ~a & b & ~CarryIn) + (~a & ~b & CarryIn) + (a & b & CarryIn);
          4'b1100 : Result = a & b;
      endcase         
      
    end
endmodule     
  