onerror {quit -f}
vlib work
vlog -work work SR_LATCH.vo
vlog -work work SR_LATCH.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SR_LATCH_vlg_vec_tst
vcd file -direction SR_LATCH.msim.vcd
vcd add -internal SR_LATCH_vlg_vec_tst/*
vcd add -internal SR_LATCH_vlg_vec_tst/i1/*
add wave /*
run -all
