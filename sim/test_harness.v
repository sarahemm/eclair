`timescale 1ns/1ps

module ECLairTestHarness();
    reg [7:0]  int;
    
    ECLair  eclair_dut(.int(int));
    
    initial begin
        int = 8'b11111111;
    end
endmodule
