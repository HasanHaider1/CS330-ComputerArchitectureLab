#Compiling design modules
vlog tb.v mux1.v

#no optimization
vsim -novopt work.tb

#view waves
view waves

#Adding waves
add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/sel
add wave sim:/tb/data_out
 
run 250ns 