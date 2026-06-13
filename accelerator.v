`timescale 1ns/10ps

module accelerator(IN1, IN2, IN3, W1, W2, W3, CLK, RSTB, OUT1, OUT2, OUT3, OUT4, OUT5, OUT6, OUT7, OUT8, OUT9);

    //input output decleration
    input signed [7:0] IN1;
    input signed [7:0] IN2;
    input signed [7:0] IN3;

    input signed [7:0] W1;
    input signed [7:0] W2;
    input signed [7:0] W3;

    input CLK;
    input RSTB;

    output signed [19:0] OUT1;
    output signed [19:0] OUT2;
    output signed [19:0] OUT3;
    output signed [19:0] OUT4;
    output signed [19:0] OUT5;
    output signed [19:0] OUT6;
    output signed [19:0] OUT7;
    output signed [19:0] OUT8;
    output signed [19:0] OUT9;

    
    //internal wires 
    wire signed [7:0] IN1_R;
    wire signed [7:0] IN1_RR;
    wire signed [7:0] IN2_R;
    wire signed [7:0] IN2_RR;
    wire signed [7:0] IN3_R;
    wire signed [7:0] IN3_RR;

    wire signed [7:0] W1_R;
    wire signed [7:0] W1_RR;
    wire signed [7:0] W2_R;
    wire signed [7:0] W2_RR;
    wire signed [7:0] W3_R;
    wire signed [7:0] W3_RR;


    //start doing the modules 
    MAC_Unit UNIT_1(.W(W1), .IN(IN1), .CLK(CLK), .RSTB(RSTB), .W_R(W1_R), .IN_R(IN1_R), .OUT(OUT1));
    MAC_Unit UNIT_2(.W(W2), .IN(IN1_R), .CLK(CLK), .RSTB(RSTB), .W_R(W2_R), .IN_R(IN1_RR), .OUT(OUT2));
    MAC_Unit UNIT_3(.W(W3), .IN(IN1_RR), .CLK(CLK), .RSTB(RSTB), .W_R(W3_R), .IN_R(), .OUT(OUT3));

    MAC_Unit UNIT_4(.W(W1_R), .IN(IN2), .CLK(CLK), .RSTB(RSTB), .W_R(W1_RR), .IN_R(IN2_R), .OUT(OUT4));
    MAC_Unit UNIT_5(.W(W2_R), .IN(IN2_R), .CLK(CLK), .RSTB(RSTB), .W_R(W2_RR), .IN_R(IN2_RR), .OUT(OUT5));
    MAC_Unit UNIT_6(.W(W3_R), .IN(IN2_RR), .CLK(CLK), .RSTB(RSTB), .W_R(W3_RR), .IN_R(), .OUT(OUT6));

    MAC_Unit UNIT_7(.W(W1_RR), .IN(IN3), .CLK(CLK), .RSTB(RSTB), .W_R(), .IN_R(IN3_R), .OUT(OUT7));
    MAC_Unit UNIT_8(.W(W2_RR), .IN(IN3_R), .CLK(CLK), .RSTB(RSTB), .W_R(), .IN_R(IN3_RR), .OUT(OUT8));
    MAC_Unit UNIT_9(.W(W3_RR), .IN(IN3_RR), .CLK(CLK), .RSTB(RSTB), .W_R(), .IN_R(), .OUT(OUT9));

endmodule