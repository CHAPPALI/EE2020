`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2017 14:33:05
// Design Name: 
// Module Name: slowclocksim
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


module slowclocksim(

    );
    reg Clock;
    wire slow;
    
    slowclock f1(Clock, slow); //call the function in simulation
    
    initial begin
    Clock = 0;
    end
    always begin
    #5 Clock = ~Clock;
    end
    
endmodule
