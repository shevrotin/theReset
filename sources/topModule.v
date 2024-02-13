`timescale 1ns / 1ps

module topModule
    (
    output wire [23:0] resultSynchActiveHigh, 
                [23:0] resultSynchActiveLow, 
                [23:0] resultAsynchActiveHigh, 
                [23:0] resultAsynchActiveLow,
                [23:0] resultNonSynthesizable,

    input wire clk,
               rst,
               rst_n
    );

    synchActiveHighReset i_synchActiveHighReset
        (
        .clk(clk),
        .rst(rst),
        .result(resultSynchActiveHigh)
        );

    synchActiveLowReset i_synchActiveLowReset
        (
        .clk(clk),
        .rst_n(rst_n),
        .result(resultSynchActiveLow)
        );
    
    asynchActiveHighReset i_asynchActiveHighReset
        (
        .clk(clk),
        .rst(rst),
        .result(resultAsynchActiveHigh)
        );

    asynchActiveLowReset i_asynchActiveLowReset
        (
        .clk(clk),
        .rst_n(rst_n),
        .result(resultAsynchActiveLow)
        );
    
    nonSynthesizableReset i_nonSynthesizableReset               // To synsthesis the design, comment-out this module.
        (
        .clk(clk),
        .rst_n(rst_n),
        .result(resultNonSynthesizable)
        );
    
endmodule
