`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2023 06:22:18 PM
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
    input start,
    input clk,rst,
    input [7:0] data_in,
    output out_tx
    );
    
   wire w1,w2,w3,w4,w5;
   wire out_toggle,out_eq0,out_eq1,out_eq2,out_eq3,out_mux;
   wire [19:0] out_count0;
   wire [3:0] out_count1;
   wire [10:0] out_reg;
   wire out_crc; 
   wire [10:0] w6;
   
   assign w1 = start &(~out_toggle);
   assign w2 = out_eq1 & out_eq0;
   assign w3 = w1 | w2;
   
   toggle_ff togg0
   (
    .clk(clk),
    .rst(rst),
    .toggle(w3),
    .out(out_toggle)
   );
   
   comp_eq eq0(
        .in0(10),
        .in1(out_count1),
        .out(out_eq0)
   );
   
   counter_baud_rate count0(
   
    .clk(clk),
    .rst_async(rst),
    .en(out_toggle),
    .rst_sync(out_eq1),
    .out(out_count0)       
   );
   
    comp_eq #(.N(20))
    eq1(
        .in0(20),
        .in1(out_count0),
        .out(out_eq1)
   );
   
       comp_eq eq2(
        .in0(out_count0),
        .in1(0),
        .out(out_eq2)
   );
   
   assign w4= w2 | rst;
   
   counter_bit_select count1(
   
   .clk(clk),
   .rst(rst),
   .en(out_eq1),
   .out(out_count1)
   );
   
    comp_eq 
    eq3(
        .in0(out_count1),
        .in1(0),
        .out(out_eq3)
   );
   
   assign w5 = start & out_eq3 & out_eq2;
   
   assign w6[10] = out_crc;
   assign w6[9] = 1;
   assign w6[8:1] = data_in;
   assign w6[0] = 0; 
   
   reg0 reg00(
    
    .clk(clk),
    .load(w5),
    .rst(rst),
    .data_in(w6),
    .data_out(out_reg)
    );
   
   mux mux0(
   .in(out_reg),
   .sel(out_count1),
   .out(out_mux)
   );
   
   crc_calc crc0(
   .in(data_in),
   .out(out_crc)
   );
   
   or(out_tx , out_mux, ~out_toggle);
   
endmodule
