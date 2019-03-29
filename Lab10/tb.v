module tb

(

);
reg clk, reset;

RISC_V_PROCESSOR rvp
(
        .clk(clk),
        .reset(reset)
);

initial

	begin
                clk = 1'b1;
                reset = 1'b0;
                #10
                reset=1'b1;
                #10
                reset=1'b0;
	
	end
always 
begin
        #10
        clk = ~clk;
        
end

endmodule