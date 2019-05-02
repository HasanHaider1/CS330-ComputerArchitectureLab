module tb

(

);



reg clk, reset;



RISC_V_Processor_Pipeline CPU

(

	.clk(clk),

	.reset(reset)

);





initial

	

	begin

	

	clk = 0;

	reset = 1;

	#5;

	reset = 0;

	#5;

	reset = 0;

	//#3;

	//clk = ~clk;

end	
   always
        #10
	      clk = ~clk;



	

endmodule