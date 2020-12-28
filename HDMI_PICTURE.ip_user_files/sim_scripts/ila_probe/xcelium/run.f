-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../HDMI_PICTURE.srcs/sources_1/ip/ila_probe/sim/ila_probe.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

