`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2017 15:06:47
// Design Name: 
// Module Name: my_full_adder_simulation
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


module my_full_adder_simulation(

    );
    
    reg [3:0] A;
    reg [3:0] B;
    reg CARRY_IN;
    
    wire [3:0] S;
    wire CARRY_OUT;
    
    my_2_bit_adder dut(A, B, CARRY_IN, S, CARRY_OUT);
    
    initial begin
    A = 4'b0011; B = 4'b0111; CARRY_IN =1'b1; #10;
    A = 4'b0101; B = 4'b1111; CARRY_IN =1'b1; #10;
    A = 4'b1111; B = 4'b0101; CARRY_IN =1'b1; #10;
    A = 4'b1111; B = 4'b1011; CARRY_IN =1'b1; #10;
    end
    
endmodule
