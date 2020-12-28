-makelib ies_lib/xil_defaultlib -sv \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Vivado/install/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../HDMI_PICTURE.srcs/sources_1/ip/clk_LCD/clk_LCD_clk_wiz.v" \
  "../../../../HDMI_PICTURE.srcs/sources_1/ip/clk_LCD/clk_LCD.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

