`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2017 10:27:41 PM
// Design Name: 
// Module Name: my_slow_blinky_slower
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


module my_slow_blinky_slower(input CLOCK,
output reg SLWCLK = 1);
reg [23:0]Count = 24'b0;

always @ (posedge CLOCK) begin
Count <=Count + 1;
SLWCLK <= (Count == 24'b0) ? ~SLWCLK : SLWCLK;
end

    
endmodule
