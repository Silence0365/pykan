transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+layer1_coeff_in1_out0  -L xpm -L blk_mem_gen_v8_4_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.layer1_coeff_in1_out0 xil_defaultlib.glbl

do {layer1_coeff_in1_out0.udo}

run 1000ns

endsim

quit -force
