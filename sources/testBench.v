`timescale 1ns / 1ps

module testBench ();
    
    reg clk_tb;
    
    reg rst_tb,
        rst_n_tb;

    wire [23:0] resultSynchActiveHigh_tb,
                resultSynchActiveLow_tb,
                resultAsynchActiveHigh_tb,
                resultAsynchActiveLow_tb,
                resultNonSynthesizable_tb;
    
    topModule dut
        (
        .clk(clk_tb),
        .rst(rst_tb),
        .rst_n(rst_n_tb),

        .resultSynchActiveHigh(resultSynchActiveHigh_tb),
        .resultSynchActiveLow(resultSynchActiveLow_tb),
        .resultAsynchActiveHigh(resultAsynchActiveHigh_tb),
        .resultAsynchActiveLow(resultAsynchActiveLow_tb),
        .resultNonSynthesizable(resultNonSynthesizable_tb)
        );
    
    // Uncomment the desired testBench scenario.

    // test for synchronous active high reset
    
    initial 
        begin
        clk_tb = 0;
        rst_tb = 0;
        rst_n_tb = 1;
        #40

        rst_tb = 1'b1;
        #40

        rst_tb = 1'b0;
        #42

        rst_tb = 1'b1;
        #40

        rst_tb = 1'b0;
        #43

        rst_tb = 1'b1;
        #40

        rst_tb = 1'b0;
        #40

        $finish;
        end
      

    // test for synchronous active low reset
    /*
    initial 
        begin
        clk_tb = 0;
        rst_tb = 0;
        rst_n_tb = 1;
        #40

        rst_n_tb = 1'b0;
        #40

        rst_n_tb = 1'b1;
        #42

        rst_n_tb = 1'b0;
        #40

        rst_n_tb = 1'b1;
        #43

        rst_n_tb = 1'b0;
        #40

        rst_n_tb = 1'b1;
        #40

        $finish;
        end
    */

    // test for asynchronous active high reset
    /*
    initial 
        begin
        clk_tb = 0;
        rst_tb = 0;
        rst_n_tb = 1;
        #40

        rst_tb = 1'b1;
        #40

        rst_tb = 1'b0;
        #42

        rst_tb = 1'b1;
        #40

        rst_tb = 1'b0;
        #43

        rst_tb = 1'b1;
        #40

        rst_tb = 1'b0;
        #40

        $finish;
        end
    */

    // test for asynchronous active low reset
    /*
    initial 
        begin
        clk_tb = 0;
        rst_tb = 0;
        rst_n_tb = 1;
        #40

        rst_n_tb = 1'b0;
        #40

        rst_n_tb = 1'b1;
        #42

        rst_n_tb = 1'b0;
        #40

        rst_n_tb = 1'b1;
        #43

        rst_n_tb = 1'b0;
        #40

        rst_n_tb = 1'b1;
        #40

        $finish;
        end    
    */

    always #5 clk_tb = !clk_tb;     // testBench Clock with 100MHz Freq. 
    
endmodule
