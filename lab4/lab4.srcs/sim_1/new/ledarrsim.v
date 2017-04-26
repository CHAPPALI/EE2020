`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2017 15:08:38
// Design Name: 
// Module Name: ledarrsim
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


module ledarrsim(

    );
    reg pushbutton;
    reg Clock;
    wire [7:0]ledarr;
    
        my_ledarr dut1(Clock,pushbutton,ledarr);
        
        initial begin
        Clock = 0;
        end
        always begin
        #5 Clock = ~ Clock;
        end
        initial begin
        pushbutton = 0; #500000000;
        pushbutton = 1; #700000000;
        pushbutton = 0; #900000000;
        pushbutton = 1; #2900000000;
        end
endmodule
