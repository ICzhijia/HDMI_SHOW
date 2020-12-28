-makelib ies_lib/xil_defaultlib -sv \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../HDMI_PICTURE.srcs/sources_1/ip/vio_picture/sim/vio_picture.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

