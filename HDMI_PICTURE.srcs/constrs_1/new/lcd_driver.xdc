set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports sys_clk]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports rst_n]

set_property -dict {PACKAGE_PIN L16 IOSTANDARD TMDS_33 } [get_ports {TMDS_DATA_P[2]}]
set_property -dict {PACKAGE_PIN M14 IOSTANDARD TMDS_33 } [get_ports {TMDS_DATA_P[1]}]
set_property -dict {PACKAGE_PIN K19 IOSTANDARD TMDS_33 } [get_ports {TMDS_DATA_P[0]}]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD TMDS_33 } [get_ports TMDS_CLK_P]

set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports TMDS_OEN]

















