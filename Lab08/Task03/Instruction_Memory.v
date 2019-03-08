module Instruction_Memory
(
        input [63:0] Inst_Addr,
        output reg [31:0] Instruction
);
  reg [7:0] ins_mem [15:0] ;
  initial
  begin
    ins_mem [0] = 8'b10000011;
    ins_mem [1] = 8'b00110100;
    ins_mem [2] = 8'b00000101;
    ins_mem [3] = 8'b00001111;
    ins_mem [4] = 8'b10110011;
    ins_mem [5] = 8'b10000100;
    ins_mem [6] = 8'b10011010;
    ins_mem [7] = 8'b00000000;
    ins_mem [8] = 8'b10010011;
    ins_mem [9] = 8'b10000100;
    ins_mem [10] = 8'b00010100;
    ins_mem [11] = 8'b00000000;
    ins_mem [12] = 8'b00100011;
    ins_mem [13] = 8'b00111000;
    ins_mem [14] = 8'b10010101;
    ins_mem [15] = 8'b00001110;
  end
  always @ (Inst_Addr)
    begin
      case(Inst_Addr)
        64'd0: Instruction = {ins_mem[3], ins_mem[2], ins_mem[1], ins_mem[0]};
        64'd4: Instruction = {ins_mem[7], ins_mem[6], ins_mem[5], ins_mem[4]};
        64'd8: Instruction = {ins_mem[11], ins_mem[10], ins_mem[9], ins_mem[8]};
        64'd12: Instruction = {ins_mem[15], ins_mem[14], ins_mem[13], ins_mem[12]}; 
      endcase
    end 
endmodule  