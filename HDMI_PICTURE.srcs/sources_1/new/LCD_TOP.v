`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/26 20:08:27
// Design Name: 
// Module Name: LCD_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module LCD_TOP(
     input wire sys_clk,//要固定的时钟
     input wire rst_n,

     output wire TMDS_CLK_P,
     output wire TMDS_CLK_N,
     output wire [2:0]TMDS_DATA_P,
     output wire [2:0]TMDS_DATA_N,
     output wire TMDS_OEN
    );
    


wire [23:0] RGB_out;
wire [23:0] RGB_in; 

wire BL;
wire DE;
wire HSYNC;
wire VSYNC;

wire [24:0]lcd_addr;
wire lcd_clk;
wire [10:0] screen_x;
wire [10:0] screen_y;
   
LCD_driver U_LCD_driver(
     .sys_clk(lcd_clk),//要固定的时钟
     .rst_n(rst_n),
     .RGB_in(RGB_in),
     .lcd_addr(lcd_addr),//数据地址
     .screen_x(screen_x),//屏幕的横坐标
     .screen_y(screen_y),//屏幕的纵坐标
     .DE(DE),
     .HSYNC(HSYNC),
     .VSYNC(VSYNC),
     .RGB_out(RGB_out)
    );

wire lcd_clk_5b;
clk_LCD U_clk_LCD
   (
    // Clock out ports
    .clk_out1(lcd_clk),     // output clk_out1
    .clk_out2(lcd_clk_5b),     // output clk_out2
   // Clock in ports
    .clk_in1(sys_clk));      // input clk_in1    
 
    
//例化HDMI驱动模块
dvi_transmitter_top u_rgb2dvi_0(
    .pclk           (lcd_clk),
    .pclk_x5        (lcd_clk_5b),
    .reset_n        (rst_n),
                
    .video_din      (RGB_out),
    .video_hsync    (HSYNC), 
    .video_vsync    (VSYNC),
    .video_de       (DE),
                
    .tmds_clk_p     (TMDS_CLK_P),
    .tmds_clk_n     (TMDS_CLK_N),
    .tmds_data_p    (TMDS_DATA_P),
    .tmds_data_n    (TMDS_DATA_N), 
    .tmds_oen       (TMDS_OEN)
    );  
 
//........................................图片信息............................................//
wire [10:0]piex_poy_x;//图片的起始横坐标
wire [10:0]piex_poy_y;//图片的起始纵坐标
wire [31:0]rom_addr_cnt;
wire [23:0]rom_temp_data;
data_picture u_data_picture(
     .sys_clk(lcd_clk),//要固定的时钟
     .rst_n(rst_n),
     .lcd_addr(lcd_addr),//数据的地址
     .screen_x(screen_x),//屏幕的横坐标
     .screen_y(screen_y),//屏幕的纵坐标
     .poy_x(piex_poy_x),//图片的起始横坐标
     .poy_y(piex_poy_y),//图片的起始纵坐标
     .picture_data_in(rom_temp_data),
     .picture_data(RGB_in),
     .rom_addr(rom_addr_cnt)
    );

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG

rom_picture your_instance_name (
  .clka(lcd_clk),    // input wire clka
  .addra(rom_addr_cnt),  // input wire [16 : 0] addra
  .douta(rom_temp_data)  // output wire [23 : 0] douta
);    


vio_picture u_vio_picture (
  .clk(lcd_clk),                // input wire clk
  .probe_out0(piex_poy_x),  // output wire [10 : 0] probe_out0
  .probe_out1(piex_poy_y)  // output wire [10 : 0] probe_out1
);    
   
   
         
endmodule
