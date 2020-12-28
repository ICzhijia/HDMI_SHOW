vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl/verilog" "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl/verilog" "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl" \
"../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/sim/vio_picture.v" \

vlog -work xil_defaultlib \
"glbl.v"

