`timescale 1ns / 1ps

module asynchActiveLowReset
    (
    output reg [23:0] result,

    input clk,
          rst_n
    );
    
    always@(posedge clk or negedge rst_n)      // asynchronous
        begin
        if(!rst_n)                             // active low reset
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

"always@(posedge clk or rst_n)" works in simulation but causes error in synthesis 

*/