transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/isaac/Documents/Proyectos/Adder/or_ent.vhd}
vcom -93 -work work {/home/isaac/Documents/Proyectos/Adder/and_ent.vhd}
vcom -93 -work work {/home/isaac/Documents/Proyectos/Adder/xor_ent.vhd}
vcom -93 -work work {/home/isaac/Documents/Proyectos/Adder/fulladder_ent.vhd}
vcom -93 -work work {/home/isaac/Documents/Proyectos/Adder/adder4bit.vhd}

