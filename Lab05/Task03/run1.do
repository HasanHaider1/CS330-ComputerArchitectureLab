#Compiling design modules
vlog tb2.v immediate_data_extractor

#no optimization
vsim -novopt work.tb

#view waves
view wave

#Add waves
add wave sim:/tb2/*
 



run 250ns 