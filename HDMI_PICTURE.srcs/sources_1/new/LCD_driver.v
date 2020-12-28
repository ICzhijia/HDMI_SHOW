`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/26 20:08:27
// Design Name:HSM
// Module Name: LCD_TOP
// Project Name: LCD
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

module LCD_driver(
     input wire sys_clk,//要固定的时钟
     input wire rst_n,
     input wire [23:0] RGB_in,
     output reg [23:0] lcd_addr,//数据的地址
     output reg [10:0] screen_x,//屏幕的横坐标
     output reg [10:0] screen_y,//屏幕的纵坐标
     output wire DE,
     output wire HSYNC,
     output wire VSYNC,
     output wire [23:0] RGB_out
    );

parameter VSPW=5;//场同步
parameter VBP=20;//场后沿
parameter LINE=720;//有效数据
parameter VFP=5;//场前沿

parameter HSPW=40;//行同步
parameter HBP=220;//行后沿
parameter HOZVAL=1280;//行有效数据
parameter HFP=110;//行前沿

reg [10:0]vsync_cnt;//场计数
reg [10:0]hsync_cnt;//行计数


//...............................图像的数据.......................................//
assign RGB_out[23:0]=RGB_in[23:0];

//...............................坐标的变化........................................//
always@(posedge sys_clk or negedge rst_n)begin
     if(!rst_n)begin         
          screen_y[10:0]<=11'b0;
     end
     else begin
          if((vsync_cnt[10:0] >= VSPW+VBP)&&(vsync_cnt[10:0]<(VSPW+VBP+LINE-1)))
               screen_y[10:0]<=(vsync_cnt[10:0]-VSPW-VBP);
          else screen_y[10:0]<=11'b0;
     end
end

always@(posedge sys_clk or negedge rst_n)begin
     if(!rst_n)begin         
          screen_x[10:0]<=11'b0;
     end
     else begin
          if((hsync_cnt[10:0] >= HSPW+HBP)&&(hsync_cnt[10:0]<(HSPW+HBP+HOZVAL-1)))begin
               screen_x[10:0]<=(hsync_cnt[10:0]-HSPW-HBP);
             end
          else screen_x[10:0]<=11'b0;
     end
end


//...............................VSYNC的变化........................................//
assign VSYNC = (vsync_cnt[10:0] < VSPW)?0:1;
always@(posedge sys_clk or negedge rst_n)begin
     if(!rst_n)begin
         vsync_cnt[10:0] <= 11'b0;
     end
     else if(hsync_cnt[10:0]==(HSPW+HBP+HOZVAL+HFP-1))begin
         if(vsync_cnt[10:0]==(VSPW+VBP+LINE+VFP-1))   vsync_cnt[10:0] <= 11'b0;      
         else                                       vsync_cnt[10:0] <=vsync_cnt[10:0]+ 1'b1;
     end
end

//...............................HSYNC的变化........................................//
assign HSYNC = (hsync_cnt[10:0] < HSPW)?0:1;
always@(posedge sys_clk or negedge rst_n)begin
     if(!rst_n)begin
         hsync_cnt[10:0] <= 11'b0;
     end
     else begin
          if(hsync_cnt[10:0]==(HSPW+HBP+HOZVAL+HFP-1))hsync_cnt[10:0] <= 11'b0;
          else    hsync_cnt[10:0] <=hsync_cnt[10:0]+ 1'b1;
     end
end

//...............................DE的变化........................................//
assign DE=((hsync_cnt>=(HSPW+HBP))&&(hsync_cnt<(HSPW+HBP+HOZVAL))&&(VSYNC)&&(vsync_cnt>=(VSPW+VBP))&&(vsync_cnt<(VSPW+VBP+LINE-1)))?1:0;

//...............................颜色的变化........................................//


    
endmodule









