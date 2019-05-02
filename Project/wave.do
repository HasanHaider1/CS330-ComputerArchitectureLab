onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/reset
add wave -noupdate -divider {IF STAGE}
add wave -noupdate -divider {Program Counter}
add wave -noupdate -format Logic /tb/CPU/PC/clk
add wave -noupdate -format Logic /tb/CPU/PC/reset
add wave -noupdate -format Literal -radix unsigned /tb/CPU/PC/PC_In
add wave -noupdate -format Literal -radix unsigned /tb/CPU/PC/PC_Out
add wave -noupdate -divider {ALU PC + 4}
add wave -noupdate -format Literal /tb/CPU/ALU_PC_4/b
add wave -noupdate -format Literal /tb/CPU/ALU_PC_4/out
add wave -noupdate -divider {Mux Branch}
add wave -noupdate -format Literal /tb/CPU/MUX_Branch/a
add wave -noupdate -format Literal /tb/CPU/MUX_Branch/b
add wave -noupdate -format Literal /tb/CPU/MUX_Branch/data_out
add wave -noupdate -divider Instruction
add wave -noupdate -format Literal /tb/CPU/Inst_Addr/InstructionAddress
add wave -noupdate -format Literal /tb/CPU/Inst_Addr/Instruction
add wave -noupdate -divider {IF/ID Buffer}
add wave -noupdate -format Logic /tb/CPU/r_IF_ID/clk
add wave -noupdate -format Logic /tb/CPU/r_IF_ID/reset
add wave -noupdate -format Literal /tb/CPU/r_IF_ID/instruction
add wave -noupdate -format Literal /tb/CPU/r_IF_ID/PC_Out
add wave -noupdate -format Literal /tb/CPU/r_IF_ID/IF_ID__instruction
add wave -noupdate -format Literal /tb/CPU/r_IF_ID/IF_ID__PC_Out
add wave -noupdate -divider {ID/EX Stage}
add wave -noupdate -divider {Instruction Parser}
add wave -noupdate -format Literal /tb/CPU/Inst_Par/instruction
add wave -noupdate -format Literal /tb/CPU/Inst_Par/opcode
add wave -noupdate -format Literal /tb/CPU/Inst_Par/rd
add wave -noupdate -format Literal /tb/CPU/Inst_Par/funct3
add wave -noupdate -format Literal /tb/CPU/Inst_Par/rs1
add wave -noupdate -format Literal /tb/CPU/Inst_Par/rs2
add wave -noupdate -format Literal /tb/CPU/Inst_Par/funct7
add wave -noupdate -divider {Register Mem}
add wave -noupdate -format Logic /tb/CPU/Registers/clk
add wave -noupdate -format Logic /tb/CPU/Registers/reset
add wave -noupdate -format Literal /tb/CPU/Registers/WriteData
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Registers/rs1
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Registers/rs2
add wave -noupdate -format Literal /tb/CPU/Registers/rd
add wave -noupdate -format Logic /tb/CPU/Registers/RegWrite
add wave -noupdate -format Literal /tb/CPU/Registers/ReadData1
add wave -noupdate -format Literal /tb/CPU/Registers/ReadData2
add wave -noupdate -divider {IMM DATA EXTRACTOR}
add wave -noupdate -format Literal /tb/CPU/IMD/instruction
add wave -noupdate -format Literal /tb/CPU/IMD/imm_data
add wave -noupdate -divider {ID/EX Buffer}
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/clk
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/reset
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__instruction
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__rd
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__rs1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__rs2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__imm_data
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__ReadData2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__ReadData1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__PC_Out
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__ALUSrc
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__ALUOp
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__Branch
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__MemRead
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__MemWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__MemtoReg
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__instruction
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__Rd
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__Rs2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__Rs1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__imm_data
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__ReadData2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__ReadData1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__PC_Out
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__ALUSrc
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__ALUOp
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__Branch
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__MemRead
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__MemWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__MemtoReg
add wave -noupdate -divider {EX/MEM STAGE}
add wave -noupdate -divider {ALU Branch}
add wave -noupdate -format Literal /tb/CPU/ALU_Branch/a
add wave -noupdate -format Literal /tb/CPU/ALU_Branch/b
add wave -noupdate -format Literal /tb/CPU/ALU_Branch/out
add wave -noupdate -divider {MUX FA}
add wave -noupdate -format Literal /tb/CPU/MUX_FA/a
add wave -noupdate -format Literal /tb/CPU/MUX_FA/b
add wave -noupdate -format Literal /tb/CPU/MUX_FA/c
add wave -noupdate -format Literal /tb/CPU/MUX_FA/d
add wave -noupdate -format Literal /tb/CPU/MUX_FA/sel
add wave -noupdate -format Literal /tb/CPU/MUX_FA/data_out
add wave -noupdate -divider {MUX FB}
add wave -noupdate -format Literal /tb/CPU/MUX_FB/a
add wave -noupdate -format Literal /tb/CPU/MUX_FB/b
add wave -noupdate -format Literal /tb/CPU/MUX_FB/c
add wave -noupdate -format Literal /tb/CPU/MUX_FB/d
add wave -noupdate -format Literal /tb/CPU/MUX_FB/sel
add wave -noupdate -format Literal /tb/CPU/MUX_FB/data_out
add wave -noupdate -divider {ALU CONTROL}
add wave -noupdate -format Literal /tb/CPU/ALUC/ALUOp
add wave -noupdate -format Literal /tb/CPU/ALUC/Funct
add wave -noupdate -format Literal /tb/CPU/ALUC/Operation
add wave -noupdate -divider {ALU MAIN}
add wave -noupdate -format Literal /tb/CPU/ALU_Main/a
add wave -noupdate -format Literal /tb/CPU/ALU_Main/b
add wave -noupdate -format Literal /tb/CPU/ALU_Main/ALUOp
add wave -noupdate -format Logic /tb/CPU/ALU_Main/Zero
add wave -noupdate -format Literal /tb/CPU/ALU_Main/Result
add wave -noupdate -divider {Forwarding Unit}
add wave -noupdate -format Literal /tb/CPU/FU/ID_EX__Rs1
add wave -noupdate -format Literal /tb/CPU/FU/ID_EX__Rs2
add wave -noupdate -format Literal /tb/CPU/FU/EX_MEM__Rd
add wave -noupdate -format Logic /tb/CPU/FU/EX_MEM__RegWrite
add wave -noupdate -format Literal /tb/CPU/FU/MEM_WB__Rd
add wave -noupdate -format Logic /tb/CPU/FU/MEM_WB__RegWrite
add wave -noupdate -format Literal /tb/CPU/FU/Forward_A
add wave -noupdate -format Literal /tb/CPU/FU/Forward_B
add wave -noupdate -divider {EX/MEM BUFFER}
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/clk
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/reset
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/ID_EX__Rd
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/ID_EX__MUX_FB
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/ID_EX__ALU_Main
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/ID_EX__Zero
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/ID_EX__Adder_Branch
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/ID_EX__Branch
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/ID_EX__MemRead
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/ID_EX__MemWrite
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/ID_EX__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/ID_EX__MemtoReg
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/EX_MEM__Rd
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/EX_MEM__MUX_FB
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/EX_MEM__ALU_Main
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/EX_MEM__Zero
add wave -noupdate -format Literal /tb/CPU/r_EX_MEM/EX_MEM__Adder_Branch
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/EX_MEM__Branch
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/EX_MEM__MemRead
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/EX_MEM__MemWrite
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/EX_MEM__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_EX_MEM/EX_MEM__MemtoReg
add wave -noupdate -divider {DATA MEMORY}
add wave -noupdate -divider {MEM/WB STAGE}
add wave -noupdate -format Logic /tb/CPU/DM/clk
add wave -noupdate -format Logic /tb/CPU/DM/MemWrite
add wave -noupdate -format Logic /tb/CPU/DM/MemRead
add wave -noupdate -format Literal /tb/CPU/DM/SIZE
add wave -noupdate -format Literal /tb/CPU/DM/Mem_Addr
add wave -noupdate -format Literal /tb/CPU/DM/Write_Data
add wave -noupdate -format Literal /tb/CPU/DM/Read_Data
add wave -noupdate -format Literal /tb/CPU/DM/i
add wave -noupdate -divider {MUX DATA MEMORY}
add wave -noupdate -format Literal /tb/CPU/MUX_DM/a
add wave -noupdate -format Literal /tb/CPU/MUX_DM/b
add wave -noupdate -format Literal /tb/CPU/MUX_DM/data_out
add wave -noupdate -format Logic /tb/CPU/MUX_DM/sel
add wave -noupdate -divider {MEM/WB BUFFER}
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/clk
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/reset
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/EX_MEM__Rd
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/EX_MEM__ALU_Main
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/EX_MEM__Read_Data
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/EX_MEM__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/EX_MEM__MemtoReg
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/MEM_WB__Rd
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/MEM_WB__ALU_Main
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/MEM_WB__Read_Data
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/MEM_WB__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/MEM_WB__MemtoReg
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/clk
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/reset
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/EX_MEM__Rd
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/EX_MEM__ALU_Main
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/EX_MEM__Read_Data
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/EX_MEM__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/EX_MEM__MemtoReg
add wave -noupdate -divider MEM_WB
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/MEM_WB__Rd
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/MEM_WB__ALU_Main
add wave -noupdate -format Literal /tb/CPU/r_MEM_WB/MEM_WB__Read_Data
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/MEM_WB__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_MEM_WB/MEM_WB__MemtoReg
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/clk
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/reset
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__instruction
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__rd
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__rs1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__rs2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__imm_data
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__ReadData2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__ReadData1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__PC_Out
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__ALUSrc
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/IF_ID__ALUOp
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__Branch
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__MemRead
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__MemWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/IF_ID__MemtoReg
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__instruction
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__Rd
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__Rs2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__Rs1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__imm_data
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__ReadData2
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__ReadData1
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__PC_Out
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__ALUSrc
add wave -noupdate -format Literal /tb/CPU/r_ID_EX/ID_EX__ALUOp
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__Branch
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__MemRead
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__MemWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__RegWrite
add wave -noupdate -format Logic /tb/CPU/r_ID_EX/ID_EX__MemtoReg
add wave -noupdate -format Literal /tb/CPU/CU/Opcode
add wave -noupdate -format Literal /tb/CPU/CU/ALUOp
add wave -noupdate -format Logic /tb/CPU/CU/Branch
add wave -noupdate -format Logic /tb/CPU/CU/MemRead
add wave -noupdate -format Logic /tb/CPU/CU/MemtoReg
add wave -noupdate -format Logic /tb/CPU/CU/MemWrite
add wave -noupdate -format Logic /tb/CPU/CU/ALUSrc
add wave -noupdate -format Logic /tb/CPU/CU/RegWrite
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10 ns} 0}
configure wave -namecolwidth 316
configure wave -valuecolwidth 286
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
WaveRestoreZoom {0 ns} {79 ns}
