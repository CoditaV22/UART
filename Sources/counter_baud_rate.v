`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:15:37 PM
// Design Name: 
// Module Name: counter_baud_rate
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


module counter_baud_rate(
      input en,clk,rst_sync,rst_async,
      output reg [19:0] out  
    );
    
    always@(*)
    if(rst_async)
    out = 0;
    
    always@(posedge clk)
    begin
    if(rst_sync)
    out <= 0;
    else
    if(en)
    out <= out + 1;
    end
    
endmodule
