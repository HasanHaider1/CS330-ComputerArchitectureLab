#Compiling design modules
vlog tb2.v immediate_data_extractor.v

#no optimization
vsim -novopt work.tb2

#view waves
view wave

#Add waves
add wave sim:/tb2/*
 



run 250ns 
