transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/SEM_4/ee309/project/all_components.vhd}
vcom -93 -work work {D:/SEM_4/ee309/project/main.vhd}

vcom -93 -work work {D:/SEM_4/ee309/project/all_components/clock.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  clock

add wave *
view structure
view signals
run -all
