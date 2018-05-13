`timescale 1ns/1ps

module ECLairTestHarness();
    reg [7:0]  int;
    
    ECLair  eclair_dut(.int(int));
    
    initial begin
        int = 8'b11111111;
    end

    always begin
        #500000 int[0] = 1'b0;
        #500005 int[0] = 1'b1;
    end
endmodule
