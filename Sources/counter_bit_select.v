`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:12:07 PM
// Design Name: 
// Module Name: counter_bit_select
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


module counter_bit_select(
        input clk,en,rst,
        output reg [3:0] out
    );      
    
    always@(posedge clk)
    begin
    if(rst)
    out <= 0;
    else
    if(en)
    out <= out + 1;
    end
endmodule
