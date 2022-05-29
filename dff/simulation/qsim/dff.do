onerror {quit -f}
vlib work
vlog -work work dff.vo
vlog -work work dff.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.dff_8_vlg_vec_tst
vcd file -direction dff.msim.vcd
vcd add -internal dff_8_vlg_vec_tst/*
vcd add -internal dff_8_vlg_vec_tst/i1/*
add wave /*
run -all
