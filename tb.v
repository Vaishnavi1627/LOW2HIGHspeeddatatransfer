`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 10:44:12
// Design Name: 
// Module Name: tb
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
module testbench( );
   
    reg [7:0] din;
    reg wclk, rclk;
    wire [7:0] dout;
    wire pe;
   
    top t1(.wclk(wclk), .rclk(rclk), .din(din), .dout(dout),.pe(pe));
   
    initial
    begin
    wclk =1'b0;
    #2
    rclk =1'b0; rcp = 15 ; wcp = 120;
    end
    
    real rcp,wcp;
    integer i,j;
    
    always@(pe)
    begin
    for(i = 0; i <10; i=i+1)
    begin
    rcp = rcp + 6;
    end
    end
    
    always@(pe)
    begin
    for(j = 0; j <10; j=j+1)
    begin
      wcp = wcp + 18;
    end
    end
   
    always #(wcp) wclk= ~wclk;
    always #(rcp) rclk= ~rclk;
   
    initial
    begin
    repeat (10000)
    @(posedge wclk)
    din = $random;
    end
   
endmodule
