`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2017 10:31:14 PM
// Design Name: 
// Module Name: my_slow_blinky2
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



module my_slow_blinky2(input CLOCK,
output reg SLWCLK = 1);
reg [25:0]Count = 26'b0;

always @ (posedge CLOCK) begin
Count<= Count + 1;
SLWCLK <= (Count == 26'b0) ? ~SLWCLK : SLWCLK;
end

    
endmodule