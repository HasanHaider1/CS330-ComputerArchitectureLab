#Compiling design modules
vlog Instruction_Fetch.v tb.v Program_Counter.v Instruction_Memory.v Adder.v 
 
#no optimization
vsim -novopt work.tb
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/Instruction
run 250ns