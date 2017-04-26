`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2017 10:04:46 AM
// Design Name: 
// Module Name: Led_flasher
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


module Led_flasher(
    input A,
    input B,
    output LED1,
    output LED2,
    output LED3
    );
   
   assign LED1 = (A & ~B) | (A & B);
   assign LED2 = (~A & B) | (A & B);
   assign LED3 = (A & B); 
    
    
endmodule
