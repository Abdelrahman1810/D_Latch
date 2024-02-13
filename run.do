vlib work
vlog D_latch.v testbench.v
vsim -voptargs=+acc work.testbench
add wave *
run -all
# quit -sim