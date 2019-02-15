module tb2
  (
  );
    wire [63:0] imm_data;
    reg [31:0] instruction;
   
   immediate_data_extractor ide
   (
      .imm_data(imm_data),
      .instruction(instruction)
    );
    
    initial
      begin
        instruction = 32'b01000111001110101010101010001011; // 00  
        
        #10
        instruction = 32'b01000111001110101010101010011011; // 01
        
        #10
        instruction = 32'b01000111001110101010101010101011; // 10
      end
endmodule