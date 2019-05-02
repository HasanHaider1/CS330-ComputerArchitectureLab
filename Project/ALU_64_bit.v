module ALU_64_bit
  (
  input [63:0] a,
  input [63:0] b,
  input [3:0] ALUOp,
  output reg [63:0] Result,
  output reg Zero
  );
  
  always @(a or b or ALUOp)
    begin
       case (ALUOp[3:0])
          4'b0000 :       
           Result = a & b;   //  Logical and
           
          4'b0001 : 
            Result = a | b;   //  Logical or
          4'b0010 :
            Result =  a + b ; // addition
            
          4'b0110 : 
            Result = a - b ; //Subtraction
            
          4'b1100 : 
            Result = ~(a | b); //  Logical nor
      endcase         
    
        if (Result == 64'h0)
          Zero <= 1'b1; 
        else 
          Zero <= 1'b0; 
      end
endmodule     
  