`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2017 10:11:01 PM
// Design Name: 
// Module Name: my_dff
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


module my_dff(
input CLOCK,                     //D is push button
input D,
output S1);

wire w3,w4;


d_flip_flop fa1( CLOCK, D, w4);
d_flip_flop fa2( CLOCK, w4 ,w3);
and(S1 ,~w3, w4);

endmodule