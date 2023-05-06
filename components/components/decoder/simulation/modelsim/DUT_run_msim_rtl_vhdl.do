transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/SEM_4/ee309/project/components/components/decoder/DUT.vhdl}
vcom -93 -work work {D:/SEM_4/ee309/project/components/components/decoder/decoder.vhd}

