#Compiling design modules
vlog ALU_1_bit.v top.v tb2.v
 
#no optimization
vsim -novopt work.tb2 
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb2/a
add wave sim:/tb2/b
add wave sim:/tb2/CarryIn
add wave sim:/tb2/ALUOp
add wave sim:/tb2/Result
add wave sim:/tb2/CarryOut


 
run 250ns