#Compiling design modules
vlog Instruction_Memory.v tb.v
 
#no optimization
vsim -novopt work.tb
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/Inst_Addr
add wave sim:/tb/Instruction

 
run 250ns