-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Dec 28 13:41:47 2020
-- Host        : DESKTOP-B6USCLD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/aiai/Desktop/study/FPGA/Xlinx/picture_Make_Study/HDMI_picture/HDMI_PICTURE/HDMI_PICTURE.srcs/sources_1/ip/ila_probe/ila_probe_stub.vhdl
-- Design      : ila_probe
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ila_probe is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end ila_probe;

architecture stub of ila_probe is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[10:0],probe4[10:0],probe5[10:0],probe6[10:0],probe7[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ila,Vivado 2019.1";
begin
end;