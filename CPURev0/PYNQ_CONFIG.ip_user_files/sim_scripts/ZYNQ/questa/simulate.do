onbreak {quit -f}
onerror {quit -f}

vsim  -lib cpu ZYNQ_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ZYNQ.udo}

run 1000ns

quit -force
