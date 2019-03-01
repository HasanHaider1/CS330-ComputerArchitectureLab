#Compiling design modules
vlog registerFile.v tb.v
 
#no optimization
vsim -novopt work.tb
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/*

 
run 250ns