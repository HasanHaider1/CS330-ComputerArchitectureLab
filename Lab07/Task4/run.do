#Compiling design modules
vlog Data_Memory.v tb.v
 
#no optimization
vsim -novopt work.tb
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/Mem_Addr
add wave sim:/tb/Write_Data
add wave sim:/tb/clk
add wave sim:/tb/MemWrite
add wave sim:/tb/MemRead
add wave sim:/tb/Read_Data
 
run 250ns