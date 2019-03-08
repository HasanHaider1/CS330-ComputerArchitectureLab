module tb();
        reg clk,reset;
        wire [31:0] Instruction;
        
        //instance
        Instruction_Fetch IF
        (
            .clk(clk),
            .reset(reset),
            .Instruction(Instruction)
        );
        
                
        initial
            clk = 1'b0;
        always
        #5 
            clk = ~clk;
        initial
          begin
            reset = 1'b1;
            #10
              reset = 1'b0;    
          end
endmodule
                                