`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2017 15:05:35
// Design Name: 
// Module Name: my_ledarr
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


module my_ledarr(
    input Clock,
    input Pushbutton,
    output reg [7:0]LEDARR=8'h0C
    );
    
    wire singlep;
    my_singlepulse f1(Pushbutton,Clock,singlep);
    
    always @(posedge singlep) begin
    LEDARR <= LEDARR << 1;    //multiply by 2
    end
endmodule
