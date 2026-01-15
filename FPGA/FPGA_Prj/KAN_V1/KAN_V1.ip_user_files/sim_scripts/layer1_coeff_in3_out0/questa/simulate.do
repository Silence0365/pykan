onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib layer1_coeff_in3_out0_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {layer1_coeff_in3_out0.udo}

run 1000ns

quit -force
