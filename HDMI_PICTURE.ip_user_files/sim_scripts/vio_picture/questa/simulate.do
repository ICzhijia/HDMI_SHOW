onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib vio_picture_opt

do {wave.do}

view wave
view structure
view signals

do {vio_picture.udo}

run -all

quit -force
