module mux1( a , b ,sel, data_out

);
  input[63:0]  a;
input[63:0]  b;
output reg [63:0]  data_out;
input sel;

always @( sel or a or b)
  begin
    if (sel == 1)
        data_out <= b;
    else 
        data_out <= a;
  end
endmodule
