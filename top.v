`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 10:36:33
// Design Name: 
// Module Name: top
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

module top(
input wclk,
input rclk,
input  [7:0]din,
output reg [7:0]dout,
output pe
    );
 
 reg wclk1,wclk2;   

    
always@(posedge rclk)
begin
 wclk1 <= wclk;
 wclk2 <= wclk1;
 end    
 
 assign pe = wclk & (~wclk2);
 
 always @ (posedge pe)
 begin
 dout <= din;
 end
endmodule
