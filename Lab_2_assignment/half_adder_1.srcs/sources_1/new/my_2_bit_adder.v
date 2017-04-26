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
    output COUT);
    
    wire C1,C2,C3,C4,C5,C6,C7;
    
    not(C1, B[0]);
    not(C2, B[1]);
    not(C3, B[2]);
    not(C4, B[3]);
    
     Full_adder fa0 (A[0], C1, C0,S[0],C5);
     Full_adder fa1 (A[1], C2, C5 ,S[1],C6);
     Full_adder fa2 (A[2], C3, C6,S[2],C7);
     Full_adder fa3 (A[3], C4, C7,S[3],COUT);
    
     
     endmodule
    