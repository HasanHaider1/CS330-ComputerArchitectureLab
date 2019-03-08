module tb(
);
        reg [63:0] Inst_Addr;
        wire [31:0] Instruction;
        Instruction_Memory i_m
        (
                .Inst_Addr(Inst_Addr),
                .Instruction(Instruction)
        );
        
        initial 
        begin
          Inst_Addr <= 8'd0;
          #10
          Inst_Addr <= 8'd4;
          #10
          Inst_Addr <= 8'd8;
          #10
          Inst_Addr <= 8'd12;          
        end
endmodule
        
        