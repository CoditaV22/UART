`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:13:17 PM
// Design Name: 
// Module Name: mux
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


module mux(
    input [10:0] in,
    input [3:0] sel,
    output reg out
    );
    always@(*)
    begin
    case(sel)
    4'd0: out = in[0];
    4'd1: out = in[1];
    4'd2: out = in[2];
    4'd3: out = in[3];
    4'd4: out = in[4];
    4'd5: out = in[5];
    4'd6: out = in[6];
    4'd7: out = in[7];
    4'd8: out = in[8];
    4'd9: out = in[9];
    4'd10: out = in[10];
    default: out = in[0];
             
        
    endcase
    end
    
endmodule

