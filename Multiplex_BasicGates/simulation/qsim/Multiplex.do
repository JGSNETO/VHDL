onerror {quit -f}
vlib work
vlog -work work Multiplex.vo
vlog -work work Multiplex.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Multi21_8bits_vlg_vec_tst
vcd file -direction Multiplex.msim.vcd
vcd add -internal Multi21_8bits_vlg_vec_tst/*
vcd add -internal Multi21_8bits_vlg_vec_tst/i1/*
add wave /*
run -all
