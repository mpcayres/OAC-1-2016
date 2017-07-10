transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Trabalho 5/bregMIPS.vhd}

vcom -93 -work work {C:/Users/mp_ca/Desktop/Marcos Paulo/UnB/OAC/Trabalho 5/simulation/modelsim/bregMIPS_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  bregMIPS_tb

add wave *
view structure
view signals
run -all
