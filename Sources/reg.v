`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:17:18 PM
// Design Name: 
// Module Name: reg
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


module reg0(
    input load,
    input [10:0] data_in,
    input clk,rst,
    output reg [10:0] data_out
    );
    
    always@(posedge clk)
    begin
    if(rst) 
    data_out <= 0;
    else
    if(load)
    data_out <= data_in;
    end
    
endmodule
