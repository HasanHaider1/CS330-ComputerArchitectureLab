module tb(
);

        input reg [63:0] Mem_Addr;
        input [63:0] Write_Data;
        reg clk, MemWrite, MemRead;
        wire [63:0] Read_Data;
        
        Data_Memory data_mem1
        (
                .Mem_Addr(Mem_Addr),
                .Write_Data(Write_Data),
                .clk(clk),
                .MemWrite(MemWrite),
                .MemRead(MemRead)
        );
        
        initial 
        begin
              Mem_Addr = 64'd0;
              #10
              Mem_Addr = 64'd8;
              #10
              Mem_Addr = 64'd16;
        end
 endmodule