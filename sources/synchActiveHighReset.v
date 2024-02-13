`timescale 1ns / 1ps

module synchActiveHighReset
    (
    output reg [23:0] result,

    input clk,
          rst                
    );
    
    always@(posedge clk)                    // synchronous
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