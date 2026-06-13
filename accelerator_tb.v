`timescale 1ns/10ps

module accelerator_tb();

    //initalize
    reg signed [7:0] IN1;
    reg signed [7:0] IN2;
    reg signed [7:0] IN3;
    
    reg signed [7:0] W1;
    reg signed [7:0] W2;
    reg signed [7:0] W3;
    
    reg CLK;
    reg RSTB;
    
    wire signed [19:0] OUT1;
    wire signed [19:0] OUT2;
    wire signed [19:0] OUT3;
    wire signed [19:0] OUT4;
    wire signed [19:0] OUT5;
    wire signed [19:0] OUT6;
    wire signed [19:0] OUT7;
    wire signed [19:0] OUT8;
    wire signed [19:0] OUT9;


    //use accelerator module
    accelerator accelerator_1(.IN1(IN1), .IN2(IN2), .IN3(IN3), 
                              .W1(W1), .W2(W2), .W3(W3), 
                              .CLK(CLK), .RSTB(RSTB), 
                              .OUT1(OUT1), .OUT2(OUT2), .OUT3(OUT3), 
                              .OUT4(OUT4), .OUT5(OUT5), .OUT6(OUT6), 
                              .OUT7(OUT7), .OUT8(OUT8), .OUT9(OUT9));

    

    //toggle CLK at 0.5GHz, T = 2ns 
    always begin
        #1 CLK = ~CLK;
    end

    //change inputs
    initial begin

        //initialize
        CLK = 1'b0;
        RSTB = 1'b1;
        IN1 = 8'b0;
        IN2 = 8'b0;
        IN3 = 8'b0;
        W1 = 8'b0;
        W2 = 8'b0;
        W3 = 8'b0;
        #2;

        //RSTB low RSTB high
        RSTB = 1'b0;
        #2;
        RSTB = 1'b1;

        //clock 1
        IN1 = 8'd1;
        IN2 = 8'd2;
        IN3 = 8'd3;
        W1 = 8'd4;
        W2 = 8'd5;
        W3 = 8'd6;
        #2;

        //clock 2
        IN1 = 8'd7;
        IN2 = 8'd8;
        IN3 = 8'd9;
        W1 = 8'd10;
        W2 = 8'd11;
        W3 = 8'd12;
        #2;

        //clock 3
        IN1 = 8'd13;
        IN2 = 8'd14;
        IN3 = 8'd15;
        W1 = 8'd16;
        W2 = 8'd17;
        W3 = 8'd18;
        #2;

        //clock 4
        IN1 = 8'd19;
        IN2 = 8'd20;
        IN3 = 8'd21;
        W1 = 8'd22;
        W2 = 8'd23;
        W3 = 8'd24;
        #2;

        //clock 5
        IN1 = 8'd25;
        IN2 = 8'd26;
        IN3 = 8'd27;
        W1 = 8'd28;
        W2 = 8'd29;
        W3 = 8'd30;
        #2;

        //clock 6
        IN1 = 8'd31;
        IN2 = 8'd32;
        IN3 = 8'd33;
        W1 = 8'd34;
        W2 = 8'd35;
        W3 = 8'd36;
        #2;

        //clock 7
        IN1 = 8'd37;
        IN2 = 8'd38;
        IN3 = 8'd39;
        W1 = 8'd40;
        W2 = 8'd41;
        W3 = 8'd42;
        #2;

        //clock 8
        IN1 = 8'd43;
        IN2 = 8'd44;
        IN3 = 8'd45;
        W1 = 8'd46;
        W2 = 8'd47;
        W3 = 8'd48;
        #2;

        //clock 9
        IN1 = 8'd49;
        IN2 = 8'd50;
        IN3 = 8'd51;
        W1 = 8'd52;
        W2 = 8'd53;
        W3 = 8'd54;
        #2;

        //clock 10
        IN1 = 8'd55;
        IN2 = 8'd56;
        IN3 = 8'd57;
        W1 = 8'd58;
        W2 = 8'd59;
        W3 = 8'd60;
        #2;

        //clock 11
        IN1 = 8'd61;
        IN2 = 8'd62;
        IN3 = 8'd63;
        W1 = 8'd64;
        W2 = 8'd65;
        W3 = 8'd66;
        #2;

        //clock 12
        IN1 = 8'd67;
        IN2 = 8'd68;
        IN3 = 8'd69;
        W1 = 8'd70;
        W2 = 8'd71;
        W3 = 8'd72;
        #2;

        //clock 13
        IN1 = 8'd73;
        IN2 = 8'd74;
        IN3 = 8'd75;
        W1 = 8'd76;
        W2 = 8'd77;
        W3 = 8'd78;
        #2;

        //clock 14
        IN1 = 8'd79;
        IN2 = 8'd80;
        IN3 = 8'd81;
        W1 = 8'd82;
        W2 = 8'd83;
        W3 = 8'd84;
        #2;

        //clock 15
        IN1 = 8'd85;
        IN2 = 8'd86;
        IN3 = 8'd87;
        W1 = 8'd88;
        W2 = 8'd89;
        W3 = 8'd90;
        #2;

        #2;
        $finish;

        
    end

endmodule