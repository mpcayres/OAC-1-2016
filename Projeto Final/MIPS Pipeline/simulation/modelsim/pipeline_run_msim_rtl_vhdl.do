transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/bin_7seg.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MUX_2.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/ShiftLeft.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/pipeline.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MemDad.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/PC.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/bregMIPS.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/SOM.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/ulaMIPS.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/sign_ext.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/CONTROL.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/ulaCONTROL.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MUX_5bits.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/FETCH.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/DECODE.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/EXECUTE.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MEMDADOS.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/IF_ID.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/ID_EX.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/EX_MEM.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MEM_WB.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/WRITEBACK.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MemInst.vhd}
vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/MUX_6.vhd}

vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Projeto Final/Ingrid_Marcos/MIPS Pipeline/simulation/modelsim/pipeline_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  pipeline_tb

add wave *
view structure
view signals
run -all
