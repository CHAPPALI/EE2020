`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2017 14:42:51
// Design Name: 
// Module Name: my_singlepulse
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


module my_singlepulse(
    input pushbutton,
    input clock,
    output singlepulse
    );
    wire Q1;
    wire Q2;
    wire slow;
    
    slowclock f1(clock,slow);
    my_dff f2(pushbutton,slow,Q1);
    my_dff f3(Q1,slow,Q2);
    assign singlepulse = (~Q2 & Q1);
endmodule
