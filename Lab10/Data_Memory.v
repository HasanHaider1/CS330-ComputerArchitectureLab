module Data_Memory
(
input [63:0] memAdd, writeData,
	input clk, memWrite, memRead,
	output reg [63:0] readData
	);
  
  // Initialising the Array memData
	reg [7:0] memData [63:0];

	integer index;
	
	//Puts Random Values in the array
	initial
	begin
		for (index = 0; index < 64; index = index + 1)
			memData[index] <= index;
	end
	
  integer i;

  //Write Data
	always @(posedge clk, memWrite, writeData, memAdd)
	begin
	  //For Loop that runs 8 times
			for (i = 0; i < 8; i = i + 1)
				memData[i + memAdd[7:0]] <= writeData[{7 + i} -: 7];
	end
	
	//ReadOutput Data -> 7 consecutive locations at once
	always @(memRead & memAdd)
	begin
				readData <= {memData[memAdd+7], memData[memAdd+6], memData[memAdd+5], memData[memAdd+4], memData[memAdd+3], memData[memAdd+2], memData[memAdd+1], memData[memAdd]};
	end
	
	endmodule