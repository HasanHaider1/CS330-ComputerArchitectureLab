#Compiling design modules
vlog Program_Counter.v tb.v
 
#no optimization
vsim -novopt work.tb
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/PC_In
add wave sim:/tb/PC_Out

run 250ns