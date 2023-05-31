`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:09:28 PM
// Design Name: 
// Module Name: toggle_ff
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


module toggle_ff(
        input toggle,
        input clk , rst,
        output reg out
    );
    
    always@(posedge clk)
    begin
    if(rst)
    out <= 0;
    else
    if(toggle)
    out <= ~out;
    end
    
    
endmodule
