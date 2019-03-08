module tb
  ( 
    
  );
    reg [31:0] instruction;
    wire [63:0] ReadData1;
    wire [63:0] ReadData2;
     
  top top0
    (
        .instruction(instruction),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );
    
    initial
    begin 
      instruction <= 32'b0;
      
      //rs2 is register 30 and rs1 is register 31
      #10 
      instruction <= 32'b00000001111011111000000000000000;  
      
      //rs2 is register 28 and rs1 is register 29
      #10
      instruction <= 32'b00000001110011101000000000000000; 
      
      //rs2 is register 14 and rs1 is register 15 
      #10 
      instruction <= 32'b00000000111001111000000000000000;  
    end
endmodule
  
  
