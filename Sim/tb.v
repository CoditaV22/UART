`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:56:25 PM
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


module tb();

reg clk,rst,start;
reg [7:0] data_in;
wire out_tx;

top DUT
(
    .clk(clk),
    .rst(rst),
    .start(start),
    .data_in(data_in),
    .out_tx(out_tx)
);

initial 
begin
clk = 0;
forever #1 clk = ~clk;
end

initial
begin

data_in = 8'b10101010;
rst = 1;
start = 0;
#20;
rst = 0;
#6 
start = 1;
#2
start = 0;

#1000 $stop();


end


endmodule
