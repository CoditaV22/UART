`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:07:55 PM
// Design Name: 
// Module Name: comp_eq
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


module comp_eq
#(parameter N = 4)
(
    input [N-1: 0] in0,in1,
    output out
    );
    
    assign out = (in0 == in1) ? 1:0;
endmodule
