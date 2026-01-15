transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+layer0_coeff_in0_out0  -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.layer0_coeff_in0_out0 xil_defaultlib.glbl

do {layer0_coeff_in0_out0.udo}

run 1000ns

endsim

quit -force
