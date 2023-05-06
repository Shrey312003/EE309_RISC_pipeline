transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/soumy/OneDrive/Desktop/counter/DUT.vhdl}
vcom -93 -work work {C:/Users/soumy/OneDrive/Desktop/counter/Counter.vhd}

