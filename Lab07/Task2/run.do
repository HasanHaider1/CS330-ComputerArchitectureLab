#Compiling design modules
vlog tb.v instruction_parser.v registerFile.v top.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Add waves
add wave sim:/tb/instruction
add wave sim:/tb/ReadData1
add wave sim:/tb/ReadData2 



run 250ns 