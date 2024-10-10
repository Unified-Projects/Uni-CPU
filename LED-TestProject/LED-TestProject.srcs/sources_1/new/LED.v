`timescale 1ns / 1ps
module LED(
     input clk,
     output led
 );
 parameter T1MS = 26'd50_000_000 ; //50M晶振时钟
 reg [25:0]time_count=26'd0;//时钟计数器
 reg led_r=1'b0;
 always@(posedge clk)
     if(time_count>=T1MS)begin
         time_count<=26'd0;
         led_r<=~led_r;
     end
     else time_count<=time_count+1'b1;
 assign led=led_r;    
 endmodule