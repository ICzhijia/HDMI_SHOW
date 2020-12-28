// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Dec 28 13:41:47 2020
// Host        : DESKTOP-B6USCLD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/aiai/Desktop/study/FPGA/Xlinx/picture_Make_Study/HDMI_picture/HDMI_PICTURE/HDMI_PICTURE.srcs/sources_1/ip/ila_probe/ila_probe_stub.v
// Design      : ila_probe
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.1" *)
module ila_probe(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[10:0],probe4[10:0],probe5[10:0],probe6[10:0],probe7[23:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [10:0]probe3;
  input [10:0]probe4;
  input [10:0]probe5;
  input [10:0]probe6;
  input [23:0]probe7;
endmodule
