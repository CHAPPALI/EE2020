`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2017 09:42:29 PM
// Design Name: 
// Module Name: my_2_bit_adder
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


module my_2_bit_adder(
    input [3:0]  A,
    input [3:0]  B,
    input C0,
    output [3:0]  S,
    output C4);
    
    wire C1,C2,C3;
     Full_adder fa0 (A[0], B[0], C0 ,S[0],C1);
     Full_adder fa1 (A[1], B[1], C1 ,S[1],C2);
     Full_adder fa2 (A[2], B[2], C2 ,S[2],C3);
     Full_adder fa3 (A[3], B[3], C3 ,S[3],C4);
    
     
     endmodule
    