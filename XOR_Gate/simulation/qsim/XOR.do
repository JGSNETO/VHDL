onerror {quit -f}
vlib work
vlog -work work XOR.vo
vlog -work work XOR.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.XOR_GATE_vlg_vec_tst
vcd file -direction XOR.msim.vcd
vcd add -internal XOR_GATE_vlg_vec_tst/*
vcd add -internal XOR_GATE_vlg_vec_tst/i1/*
add wave /*
run -all
