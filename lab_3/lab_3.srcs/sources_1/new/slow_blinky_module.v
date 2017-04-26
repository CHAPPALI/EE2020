`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2017 09:30:15 PM
// Design Name: 
// Module Name: slow_blinky_module
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


module slow_blinky_module( input CLOCK,
                            input A,
                            output reg LED = 0);
reg [25:0]Count = 26'b0;
reg [23:0]C = 24'b0;
always @ (posedge CLOCK) begin
Count <= Count + 1;
C <= C + 1;
LED <= ((A==0) ? (Count ==26'b0) : (C== 24'b0)) ? ~LED : LED;
end                            


endmodule
