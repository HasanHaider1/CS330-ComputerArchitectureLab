module top
  (
  input wire clk,reset,rx,
  output tx,
  output [3:0]q
  );
  wire [7:0] counter_data;
  assign counter_data = {4'b0000, q}; 

  ripple_carry_counter rcc
  (
  .clk(clk),
  .reset(reset),
  .q(q[3:0])
  );
 
	uart_top uart
	(
		.clk(clk),
		.reset(reset),
		.data_to_tx(counter_data),
		.rx(rx),
		.tx(tx)
	);
endmodule
  