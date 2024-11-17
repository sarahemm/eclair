`timescale 1ns/1ps

// test harness for interrupt tests, that triggers IRQ0 after 400us

module ECLairTestHarness();
    reg [7:0]  int;
    
    ECLair  eclair_dut(.int(int), .dma_req(1'b0), .fp_bus_addr(24'h0), .fp_bus_data(8'h0), .fp_write(1'b0));
    
    initial begin
        int = 8'b11111111;
    end

    always begin
        #400000 int[0] = 1'b0;
        #400005 int[0] = 1'b1;
    end
endmodule
