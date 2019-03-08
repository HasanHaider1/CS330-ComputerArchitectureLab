module tb();
         reg clk,reset;
         reg [63:0] PC_In;
         wire [63:0] PC_Out;
      Program_Counter pc
      (
        .clk(clk),
        .reset(reset),
        .PC_In(PC_In),
        .PC_Out(PC_Out)
       ); 
        
        initial
          clk = 1'b0;
        always 
        #5
            clk = ~clk;
            
        initial
        begin
          
          
          reset = 1'b0;
          PC_In = 64'd124;
          
          #10 
          PC_In = 64'd124;
          
          #10
          reset = 1'b1;
          
          #10
          reset = 1'b0;
          
        end 
endmodule        