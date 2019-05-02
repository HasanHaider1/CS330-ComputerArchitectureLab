module Data_Memory
(
	input clk,
	input MemWrite,
	input MemRead,
	input [1:0] SIZE, 
	input [63:0] Mem_Addr, Write_Data,
	output reg [63:0] Read_Data
);

reg [7:0] internal_memory [63:0];

integer i;
initial begin
	for (i=0;i<=512;i=i+1)
		internal_memory[i] = 0;
  Read_Data = 1'b0;	
	
end


always @(MemRead or Mem_Addr)
	begin
		
		// LOAD LOGIC
		if (MemRead == 1)
			begin
			
			// Load byte
			if (SIZE == 0)
				Read_Data = internal_memory[Mem_Addr];
				
			// Load half word
			else if (SIZE == 1)
				Read_Data = {internal_memory[Mem_Addr + 1], internal_memory[Mem_Addr]};
			
			// Load word
			else if (SIZE == 2) 
				Read_Data = {internal_memory[Mem_Addr + 3], internal_memory[Mem_Addr + 2],
				internal_memory[Mem_Addr + 1], internal_memory[Mem_Addr]};
			
			// Load Double word
			else if (SIZE == 3) 
				Read_Data = {internal_memory[Mem_Addr + 7], internal_memory[Mem_Addr + 6],
				internal_memory[Mem_Addr + 5], internal_memory[Mem_Addr + 4],
				internal_memory[Mem_Addr + 3], internal_memory[Mem_Addr + 2],
				internal_memory[Mem_Addr + 1], internal_memory[Mem_Addr]};
			
			end
		
	end

always @(posedge clk)
	begin
		
		// WRITE LOGIC
		if (MemWrite == 1)
			begin
			
			internal_memory[Mem_Addr] = Write_Data[7:0];
			internal_memory[Mem_Addr + 1] = Write_Data[15:8];
			internal_memory[Mem_Addr + 2] = Write_Data[23:16];
			internal_memory[Mem_Addr + 3] = Write_Data[31:24];
			internal_memory[Mem_Addr + 4] = Write_Data[39:32];
			internal_memory[Mem_Addr + 5] = Write_Data[47:40];
			internal_memory[Mem_Addr + 6] = Write_Data[55:48];
			internal_memory[Mem_Addr + 7] = Write_Data[63:56];
			
			end
		
		// Load byte
		if (SIZE == 0)
			Read_Data = internal_memory[Mem_Addr];
			
		// Load half word
		else if (SIZE == 1)
			Read_Data = {internal_memory[Mem_Addr + 1], internal_memory[Mem_Addr]};
		
		// Load word
		else if (SIZE == 2) 
			Read_Data = {internal_memory[Mem_Addr + 3], internal_memory[Mem_Addr + 2],
			internal_memory[Mem_Addr + 1], internal_memory[Mem_Addr]};
		
		// Load Double word
		else if (SIZE == 3) 
			Read_Data = {internal_memory[Mem_Addr + 7], internal_memory[Mem_Addr + 6],
			internal_memory[Mem_Addr + 5], internal_memory[Mem_Addr + 4],
			internal_memory[Mem_Addr + 3], internal_memory[Mem_Addr + 2],
			internal_memory[Mem_Addr + 1], internal_memory[Mem_Addr]};
	
	end
endmodule