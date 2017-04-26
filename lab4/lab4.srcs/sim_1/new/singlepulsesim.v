`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2017 14:47:42
// Design Name: 
// Module Name: singlepulsesim
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


module singlepulsesim(

    );
    reg pushbutton;
    reg Clock;
    wire singlepulse;
    
    my_singlepulse dut1(pushbutton,Clock,singlepulse);
    
    initial begin
    Clock = 0;
    end
    always begin
    #5 Clock = ~ Clock;
    end
    initial begin
    pushbutton = 0; #500000000; //delay
    pushbutton = 1; #700000000;
    pushbutton = 0; #900000000;
    pushbutton = 1; #2900000000;
    end
    
endmodule
