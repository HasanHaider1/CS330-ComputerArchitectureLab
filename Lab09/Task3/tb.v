module tb();
        reg [3:0] Funct;
        reg [6:0] Opcode;
        wire [3:0] Operation;  
        
        top_control tc
        (
            .Funct(Funct),
            .Opcode(Opcode),
            .Operation(Operation)
        );
       
       
        initial
          begin
            Opcode = 7'b1100011; //Sb
            Funct = 4'b0000;
            
            #10
            Opcode = 7'b0100011; //sd
            Funct = 4'b0000;
            
            #10
            Opcode = 7'b0000011; //ld
            Funct = 4'b0000;
            
            #10
            Opcode = 7'b0110011; //Rtype
            Funct = 4'b0000;
            
            #10
            Funct = 4'b1000;
            
            #10
            Funct = 4'b0111;
            
            #10
            Funct = 4'b0110;
          end
      
endmodule
            