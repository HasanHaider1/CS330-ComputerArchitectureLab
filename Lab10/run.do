#Compiling design modules
vlog RISC_V_PROCESSOR.v Adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v immediate_data_extractor.v Instruction_Memory.v instruction_parser.v mux1.v Program_Counter.v registerFile.v tb.v


#no optimization
vsim -novopt work.tb


#view waves
#view wave


#Adding waves
#add wave sim:/tb/rvp/*
do wave.do

run 250ns