`timescale 1ns / 1ps

module synchActiveLowReset
    (
    output reg [23:0] result,

    input clk,
          rst_n                   
    );
    
    always@(posedge clk)                // synchronous
        begin
        if(!rst_n)                      // active low reset
            begin
            result <= 'b0;
            end
        else
            begin                
            result <= 24'hc0ffee;
            end
        end
    
endmodule