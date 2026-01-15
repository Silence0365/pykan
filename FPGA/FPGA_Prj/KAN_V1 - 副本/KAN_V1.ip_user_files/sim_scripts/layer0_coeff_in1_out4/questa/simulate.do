onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib layer0_coeff_in1_out4_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {layer0_coeff_in1_out4.udo}

run 1000ns

quit -force
