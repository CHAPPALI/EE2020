`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2017 09:43:17 PM
// Design Name: 
// Module Name: slow_blink_test
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


module slow_blink_test(

    );
reg CLOCK; wire LED;
    
    slow_blinky_module dut (CLOCK, LED);
    
    initial begin
      CLOCK = 0;
    end
      
   always begin 
    #5 CLOCK = ~CLOCK;
    end    
endmodule
