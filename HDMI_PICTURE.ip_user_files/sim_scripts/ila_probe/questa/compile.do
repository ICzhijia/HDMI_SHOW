vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/ila_probe/hdl/verilog" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/ila_probe/hdl/verilog" \
"../../../../HDMI_PICTURE.srcs/sources_1/ip/ila_probe/sim/ila_probe.v" \

vlog -work xil_defaultlib \
"glbl.v"

