`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2017 11:21:33 PM
// Design Name: 
// Module Name: clock_divider
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
//REDUNDANT

module clock_divider(input CLOCK,
output reg SLWCLK = 1);
 
reg [23:0]Count = 24'b0;

always @ (posedge CLOCK) begin
Count <=Count + 1;

SLWCLK <= (Count ==24'b0) ? ~SLWCLK : SLWCLK;
end 

endmodule

