`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/28 12:18:31
// Design Name: 
// Module Name: data_picture
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


module data_picture(
     input  wire sys_clk,//要固定的时钟
     input  wire rst_n,
     input  wire [23:0] lcd_addr,//数据的地址
     input  wire [10:0] screen_x,//屏幕的横坐标
     input  wire [10:0] screen_y,//屏幕的纵坐标
     input  wire [10:0] poy_x,//图片的起始横坐标
     input  wire [10:0] poy_y,//图片的起始纵坐标
     input  wire [23:0] picture_data_in,//从rom中发过来的数据
     output wire [23:0]picture_data,//将要显示的数据
     output reg [31:0]rom_addr      //rom的地址
    );

//.....................................图片信息..................................//
parameter piex_x=600;//图片的宽
parameter piex_y=337;//图片的高

//..............................对应图片的数据...............................//

wire [23:0] rom_temp_data;
assign rom_temp_data[23:0]=picture_data_in[23:0];

assign picture_data[23:0] = ((screen_y>=poy_y)&&(screen_y<piex_y+poy_y-1)&&(screen_x<piex_x+poy_x-1)&&(screen_x>=poy_x)) ? rom_temp_data[23:0] : 24'b00000000_11111111_00000000;
always@(posedge sys_clk or negedge rst_n)begin
     if(!rst_n)begin         
          rom_addr[31:0]<=17'b0;
     end
     else if((screen_y>=poy_y)&&(screen_y<(piex_y+poy_y-1))&&(screen_x<(piex_x+poy_x-1))&&(screen_x>=poy_x))begin 
          rom_addr[31:0]<=(screen_y-poy_y)*(piex_x)+(screen_x-poy_x+3);     
     end
     else if(screen_y==0)begin
          rom_addr[31:0]<=17'b0;
     end
end






    
endmodule
