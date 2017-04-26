`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2017 18:32:07
// Design Name: 
// Module Name: cliffgame
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
// NAME:
//////////////////////////////////////////////////////////////////////////////////


module cliffgame(
    input CLOCK,
    input Start_button,
    input left,
    input right,
    input speedup,
    input speeddown,
    input [15:0] Boundary,
    output reg [15:0] LEDARRAY
    );
    
    reg LEFT = 0, RIGHT = 0, Blink = 0, COUNT = 0, Begin = 0, Fail = 0; 
    reg [2:0] SPEED;
    initial begin
    SPEED = 3'b010;
    end
    
    

    wire EASY, MEDIUM, HARD, Chosen_difficulty,my_clock;
    
    my_slow_blinky2 c1(CLOCK, EASY);        
    my_slow_blinky_slower c2(CLOCK, MEDIUM); 
    my_slow_blinky1 c3(CLOCK, HARD);         
                                              
   
    assign Chosen_difficulty = SPEED[2] ? (SPEED[1] ? MEDIUM:HARD) : (SPEED[0] ? EASY:MEDIUM);
    
  
    wire Faster;
    wire [1:0] Q;
    
    my_dff da1(Chosen_difficulty, speedup, Q[0]);
    my_dff da2(Chosen_difficulty, Q[0], Q[1]);
    assign Faster = Q[0]&(~Q[1]);
    
    
    wire Slower;
    wire [1:0] E;
    
    my_dff da3(Chosen_difficulty, speeddown, E[0]);
    my_dff da4(Chosen_difficulty, E[0], E[1]);
    assign Slower = E[0]&~(E[1]); 
    
    
    wire START;
    wire [1:0] S;
    
    my_dff da5(Chosen_difficulty, Start_button, S[0]);
    my_dff da6(Chosen_difficulty, S[0], S[1]);
    assign START = S[0]&~(S[1]);
    
 
    wire pulse_left;
    wire [1:0] T;
    
    my_dff da7(Chosen_difficulty, left, T[0]);
    my_dff da8(Chosen_difficulty, T[0], T[1]);
    assign pulse_left = T[0]&~(T[1]);
    
    
    wire pulse_right;
    wire [1:0] U;
    
    my_dff da9(Chosen_difficulty, right, U[0]);
    my_dff da10(Chosen_difficulty, U[0], U[1]);
    assign pulse_right = U[0]&~(U[1]);
    
    
    
    always @(posedge Chosen_difficulty)begin
        if (Faster == 1) begin
            if (SPEED != 3'b100)begin
            SPEED <= SPEED << 1;
            end
        end
        
        if (Slower == 1) begin
            if (SPEED != 3'b001)begin
            SPEED <= SPEED >> 1;
            end
        end
            
        if (START == 1)begin
           LEDARRAY = 16'b0000_0001_1100_0000;
           LEFT = 0;
           RIGHT = 0; 
           Blink = 0; 
           COUNT = 0;
           Begin = 1;
           Fail = 0;
           SPEED = 3'b001;
        end
        if(pulse_left == 1 & Begin == 1)begin
            LEDARRAY <= LEDARRAY << 1;
            LEFT = 1; 
            RIGHT = 0; 
        end
        if(pulse_right == 1 & Begin == 1)begin
            LEDARRAY <= LEDARRAY>> 1;
            RIGHT = 1;
            LEFT = 0;
        end
        
        if(LEFT == 1)begin
            LEDARRAY <= LEDARRAY << 1;
        end
        if(RIGHT == 1) begin
            LEDARRAY <= LEDARRAY >> 1;
        end
    
  
    
    if (LEDARRAY == 16'b1100_0000_0000_0000 || LEDARRAY == 16'b0000_0000_0000_0011) begin
       LEDARRAY = 16'b1111_1111_1111_1111;
       LEFT = 0;
       RIGHT = 0;
       Blink = 1;
    end
    
   
    
    if (Boundary[0] == 1) begin
        if (Fail == 0) begin
       LEDARRAY[0] <= 0;
        end
        if(LEDARRAY == 16'b0000_0000_0000_0110)begin
        Fail = 1; 
        LEDARRAY = 16'b1111_1111_1111_1111;
        LEFT = 0; 
        RIGHT = 0; 
        Blink = 1;
        end    
    end
    
    if (Boundary[1] == 1) begin 
        if (Fail == 0) begin
        LEDARRAY[1] <= 0;
        end
        if(LEDARRAY == 16'b0000_0000_0000_1100)begin
        Fail = 1; 
        LEDARRAY = 16'b1111_1111_1111_1111;
        LEFT = 0; 
        RIGHT = 0; 
        Blink = 1;
        end    
    end
     
    if (Boundary[2] == 1) begin 
        if (Fail == 0) begin
        LEDARRAY[2] <= 0;
        end
        if(LEDARRAY == 16'b0000_0000_0001_1000)begin
        Fail = 1; 
        LEDARRAY = 16'b1111_1111_1111_1111;
        LEFT = 0; 
        RIGHT = 0; 
        Blink = 1;
        end    
    end
   
    if (Boundary[13] == 1) begin 
        if (Fail == 0) begin
        LEDARRAY[13] <= 0;
        end
        if(LEDARRAY == 16'b0001_1000_0000_0000)begin
        Fail = 1;
        LEDARRAY = 16'b1111_1111_1111_1111;
        LEFT = 0; 
        RIGHT = 0; 
        Blink = 1;
        end    
    end
    
    if (Boundary[14] == 1) begin
        if (Fail == 0) begin
        LEDARRAY[14] <= 0;
        end
        if(LEDARRAY== 16'b0011_0000_0000_0000)begin
        Fail = 1; 
        LEDARRAY = 16'b1111_1111_1111_1111;
        LEFT = 0; 
        RIGHT = 0; 
        Blink = 1;
        end    
    end 
    
    if (Boundary[15] == 1) begin 
        if (Fail == 0) begin
        LEDARRAY[15] <= 0;
        end
        if(LEDARRAY == 16'b0110_0000_0000_0000)begin
        Fail = 1;
        LEDARRAY = 16'b1111_1111_1111_1111;
        Fail = 1; 
        LEFT = 0; 
        RIGHT = 0; 
        Blink = 1;
        end    
    end 
    
  
    if (Blink == 1)   //To check if BLINK = 1 every clock cycle
    begin
    COUNT <= COUNT + 1;
    LEDARRAY = 16'b1111_1111_1111_1111; // Every thing lights up
    LEDARRAY <= (COUNT == 0) ? LEDARRAY : ~LEDARRAY; //COUNT Will switch from 0 to 1 every clock Cycle
  
    end
    end
    
    
    
endmodule
