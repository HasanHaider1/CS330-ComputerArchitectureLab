onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/rvp/clk
add wave -noupdate -format Logic /tb/rvp/reset
add wave -noupdate -divider ProgramCounter
add wave -noupdate -format Literal /tb/rvp/w_PC_Out
add wave -noupdate -format Literal /tb/rvp/w_instruction
add wave -noupdate -divider Parser
add wave -noupdate -format Literal /tb/rvp/w_opcode
add wave -noupdate -format Literal /tb/rvp/w_rs1
add wave -noupdate -format Literal /tb/rvp/w_rs2
add wave -noupdate -format Literal /tb/rvp/w_rd
add wave -noupdate -divider {IMMEDIATE DATA EXTRACTOR}
add wave -noupdate -format Literal /tb/rvp/w_imm_data
add wave -noupdate -divider Registers
add wave -noupdate -format Literal /tb/rvp/w_ReadData1
add wave -noupdate -format Literal /tb/rvp/w_ReadData2
add wave -noupdate -divider {Control Unit}
add wave -noupdate -format Logic /tb/rvp/w_Branch
add wave -noupdate -format Logic /tb/rvp/w_MemRead
add wave -noupdate -format Logic /tb/rvp/w_MemtoReg
add wave -noupdate -format Literal /tb/rvp/w_ALUOp
add wave -noupdate -format Logic /tb/rvp/w_MemWrite
add wave -noupdate -format Logic /tb/rvp/w_ALUSrc
add wave -noupdate -format Logic /tb/rvp/w_RegWrite
add wave -noupdate -divider {ALU Control}
add wave -noupdate -format Literal /tb/rvp/w_Operation
add wave -noupdate -divider {Data Memory}
add wave -noupdate -format Literal /tb/rvp/w_ReadData
add wave -noupdate -divider {PC wala Adder}
add wave -noupdate -format Literal /tb/rvp/w_ALU_PC_4
add wave -noupdate -divider {Branch Wala Adder}
add wave -noupdate -format Literal /tb/rvp/w_ALU_Branch
add wave -noupdate -divider {Main ALU}
add wave -noupdate -format Literal /tb/rvp/w_ALU_Main
add wave -noupdate -divider {Branch wala MUX}
add wave -noupdate -format Literal /tb/rvp/w_MUX_Branch
add wave -noupdate -divider {Data Memory wala mux}
add wave -noupdate -format Literal /tb/rvp/w_MUX_DM
add wave -noupdate -divider {Immediate wala mux}
add wave -noupdate -format Literal /tb/rvp/w_MUX_Offset
add wave -noupdate -format Logic /tb/rvp/w_Zero
add wave -noupdate -divider {FUnct 3 aur funct7}
add wave -noupdate -format Literal /tb/rvp/w_funct_7
add wave -noupdate -format Literal /tb/rvp/w_funct_3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ns} 0}
configure wave -namecolwidth 193
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {247 ns}
