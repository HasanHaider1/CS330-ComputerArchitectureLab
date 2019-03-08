module Data_Memory(
        input [63:0] Mem_Addr,
        input [63:0] Write_Data,
        input wire clk, MemWrite, MemRead,
        output reg [63:0] Read_Data
);
        reg [7:0] data_mem [63:0];
        integer i;
        initial
        begin
        for (i=0; i<64; i = i+1)
          data_mem[i] <= i;
        end
        
            integer j;
            integer k;
        always @(posedge clk & MemWrite ==1)
        begin
            for (j=0; j< 8; j = j+1)
              
              begin
              for (k=0; k<64 ; k=k+8)
                data_mem[Mem_Addr + j] <= Write_Data[k+7:k];
              end
        end    
           
        always @ (MemRead==1 & Mem_Addr ==1)
          begin
            Read_Data <= {data_mem[Mem_Addr + 7], data_mem[Mem_Addr + 6], data_mem[Mem_Addr + 5],data_mem[Mem_Addr + 4],data_mem[Mem_Addr + 3],data_mem[Mem_Addr + 2],data_mem[Mem_Addr + 1],data_mem[Mem_Addr]};
          end
endmodule       