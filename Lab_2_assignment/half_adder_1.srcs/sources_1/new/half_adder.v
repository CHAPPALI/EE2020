`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2017 09:21:19 PM
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
    input A,
    input B,
    input CIN,
    output S,
    output COUT
    );
    assign S = A ^ B ^ CIN; //output are assigned to input
    assign COUT = A & B | CIN & (A ^ B);
    endmodule
