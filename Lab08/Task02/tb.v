module tb ();
        reg [63:0] a;
        reg [63:0] b;
        wire [63:0] out;
        Adder add
        ( 
            .a(a),
            .b(b),
            .out(out)
        );
      initial
        begin
                a = 64'd0;
                b = 64'd0;
                
                #10
                a = 64'd1;
                b = 64'd2;
                
                #10
                a = 64'd98;
                b = 64'd100;
          end
endmodule