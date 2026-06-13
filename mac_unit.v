module MAC_Unit(W, IN, CLK, RSTB, W_R, IN_R, OUT);

    //intput outputs 
    input signed [7:0] W;
    input signed [7:0] IN;

    input CLK;
    input RSTB;

    output reg signed [7:0] W_R;
    output reg signed [7:0] IN_R;

    output reg signed [19:0] OUT;

    

    //Intialize registers
    //this is the accumulator
    reg signed [19:0] Accumulator = 20'b0;

    //this will count how may clocks has actually happened
    reg [3:0] CLK_COUNT = 4'b0000;


    
    always @(posedge CLK or negedge RSTB) begin
        
        //this handles the reset logic
        if (RSTB == 1'b0) begin
            CLK_COUNT <= 4'b0000;
            Accumulator <= 20'b0;
            W_R <= 8'b0;
            IN_R <= 8'b0;
            OUT <= 20'b0;
        end
        else begin

            //this just updates it on the next clock cycle
            W_R <= W;
            IN_R <= IN;

            //this handles the accumulator logic
            if (CLK_COUNT != 4'b1101) begin
                Accumulator <= Accumulator + (W * IN);
                OUT <= Accumulator + (W*IN);
            end
            else begin
                Accumulator <= Accumulator;
                OUT <= OUT;
            end

            //this updates the CLK_COUNT
            if (CLK_COUNT != 4'b1101) begin
                CLK_COUNT <= CLK_COUNT + 1;
            end
            else begin
                CLK_COUNT <= CLK_COUNT;
            end
            
        end
    end



    
endmodule