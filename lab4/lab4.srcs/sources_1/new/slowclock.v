`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2017 14:06:40
// Design Name: 
// Module Name: slowclock
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


module slowclock(
    input Clock,
    output reg SLOWCLOCK = 1
    );
    reg [23:0]C=24'b0;
    
    always @(posedge Clock) 
    begin
    C <= C + 1;
    SLOWCLOCK <= (C==24'b0) ? ~SLOWCLOCK : SLOWCLOCK;
    end
    
endmodule
