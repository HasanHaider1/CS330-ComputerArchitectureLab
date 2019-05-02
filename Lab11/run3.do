#Compiling design modules
vlog Adder.v ALU_64_bit.v ALU_Control.v Control_Unit.v Data_Memory.v EX_MEM.v Forwarding_Unit.v ID_EX.v IF_ID.v immediate_data_extractor.v Instruction_Fetch.v Instruction_Memory.v instruction_parser.v MEM_WB.v mux1.v mux_4_in.v Program_Counter.v registerFile.v RISC_V_Processor_Pipeline.v tb.v


#no optimization
vsim -novopt work.tb


#view waves
view wave


#Adding waves
do wave.do





run 200ns