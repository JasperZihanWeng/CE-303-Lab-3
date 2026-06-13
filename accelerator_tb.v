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
    
    wire signed [7:0] OUT1;
    wire signed [7:0] OUT2;
    wire signed [7:0] OUT3;
    wire signed [7:0] OUT4;
    wire signed [7:0] OUT5;
    wire signed [7:0] OUT6;
    wire signed [7:0] OUT7;
    wire signed [7:0] OUT8;
    wire signed [7:0] OUT9;


    //use accelerator module
    accelerator accelerator_1(.IN1(IN1), .IN2(IN2), .IN3(IN3), 
                              .W1(W1), .W2(W2), .W3(W3), 
                              .CLK(CLK), .RSTB(RSTB), 
                              .OUT1(OUT1), .OUT2(OUT2), .OUT3(OUT3), 
                              .OUT4(OUT4), .OUT5(OUT5), .OUT6(OUT6), 
                              .OUT7(OUT7), .OUT8(OUT8), .OUT9(OUT9));

    

    //toggle CLK at 0.5GHz, T = 2ns 
    always begin
        #2 CLK = ~CLK;
    end

    //change inputs
    initial begin

        CLK = 1'b0;
        RSTB = 
    @ (posedge CLK)
        
    end

endmodule