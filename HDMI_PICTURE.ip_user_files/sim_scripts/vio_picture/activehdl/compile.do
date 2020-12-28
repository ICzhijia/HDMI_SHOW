vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl/verilog" "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl/verilog" "+incdir+../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/hdl" \
"../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/sim/vio_picture.v" \

vlog -work xil_defaultlib \
"glbl.v"
