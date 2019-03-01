module tb(
);

reg clk, reset, RegWrite;
reg [4:0] rs1,rs2,rd;
reg [63:0] WriteData;
wire [63:0] ReadData1, ReadData2;

registerFile regFile
(
        .clk(clk),
        .reset(reset),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .RegWrite(RegWrite),
        .WriteData(WriteData),
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
);
initial

//rd =zero pe write hua k nahi NAHI HONA CHAHIYE
//rd other than zero pe write hua k nahi HONA CHAHIYE
// On reset, place a value 0 at both ReadData output ports
/*The operation of writing data into a Registers should always be
 done when there is a positive edge of clk and RegWrite signal is asserted (or set i.e. HIGH). 
*/
//clock k posedge se pehlay regwrite ko karen 
        begin
                reset = 1'b0;
                clk = 1'b0;
                rd = 5'b0;
                WriteData = 64'd1;
                RegWrite = 1'b1;
                rs1 = 5'b 00011;
                rs2 = 5'b 01001;
                
                #10 //check k rd = 0 pe write hua k nahi 
                
                rs1 = 5'b 00010;
                rs2 = 5'b 00011;
                
                #5 //other than 0 kar rahay hyn
                rd = rs1;
                
                #10 //check k rd other than 0 pe write hua k nahi 
                reset = 1'b1;
                
                #10 // check k reset 1 honay pe output ports 0 huay k nahi
                reset = 1'b0;
                
                
                                
        end
        always
          #5 clk = ~clk;
endmodule