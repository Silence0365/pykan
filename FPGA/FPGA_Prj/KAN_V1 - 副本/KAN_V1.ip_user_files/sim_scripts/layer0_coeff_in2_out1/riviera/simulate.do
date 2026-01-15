transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+layer0_coeff_in2_out1  -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.layer0_coeff_in2_out1 xil_defaultlib.glbl

do {layer0_coeff_in2_out1.udo}

run 1000ns

endsim

quit -force
