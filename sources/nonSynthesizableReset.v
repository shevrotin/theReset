`timescale 1ns / 1ps

module nonSynthesizableReset
    (
    output reg [23:0] result,

    input clk,
          rst_n
    );
    
    always@(posedge clk or rst_n)   // asynchronous  
        begin                       // "rst_n" is used instead of "negedge rst_n"
        if(!rst_n)                  // active low reset
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