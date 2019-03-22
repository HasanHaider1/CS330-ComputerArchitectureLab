#Compiling design modules
vlog tb.v top_control.v Control_Unit.v ALU_Control.v

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Add waves
add wave sim:/tb/*



run 250ns 