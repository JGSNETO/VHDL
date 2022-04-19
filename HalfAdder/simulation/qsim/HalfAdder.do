onerror {quit -f}
vlib work
vlog -work work HalfAdder.vo
vlog -work work HalfAdder.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.HalfAdder_vlg_vec_tst
vcd file -direction HalfAdder.msim.vcd
vcd add -internal HalfAdder_vlg_vec_tst/*
vcd add -internal HalfAdder_vlg_vec_tst/i1/*
add wave /*
run -all
