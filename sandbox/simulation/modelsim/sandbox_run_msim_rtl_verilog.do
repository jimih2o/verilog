transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/home/jimi/git/verilog/sandbox {/home/jimi/git/verilog/sandbox/sine.sv}

