transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio2/TallerLogico-Lab2/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio2/TallerLogico-Lab2/Problema1/Problema1.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio2/TallerLogico-Lab2/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio2/TallerLogico-Lab2/Problema1/testbench.sv}

