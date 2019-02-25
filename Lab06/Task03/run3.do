#Compiling design modules
vlog ALU_64_bit.v tbEx.v
 
#no optimization
vsim -novopt work.tbEx
  
#view waves
view wave
  
#Adding waves

add wave sim:/tbEx/a
add wave sim:/tbEx/b
add wave sim:/tbEx/ALUOp
add wave sim:/tbEx/Result
add wave sim:/tbEx/Zero

 
run 250ns