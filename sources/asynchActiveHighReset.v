`timescale 1ns / 1ps

module asynchActiveHighReset
    (
    output reg [23:0] result,

    input clk,
          rst 
    );
    
    always@(posedge clk or posedge rst)     // asynchronous
        begin
        if(rst)                             // active high reset
            begin
            result <= 'b0;
            end
        else
            begin                
            result <= 24'hc0ffee;
            end
        end
    
endmodule

/*

"always@(posedge clk or rst)" works in simulation but causes error in synthesis 

*/