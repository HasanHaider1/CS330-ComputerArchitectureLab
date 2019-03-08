#Compiling design modules
vlog Adder.v tb.v
 
#no optimization
vsim -novopt work.tb
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/out
run 250ns