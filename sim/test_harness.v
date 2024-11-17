`timescale 1ns/1ps

module ECLairTestHarness();
    reg [7:0]  int;
    
    ECLair  eclair_dut(.int(int), .dma_req(1'b0), .fp_bus_addr(24'b00000000000000000000), .fp_bus_data(8'b00000000), .fp_write(1'b0));
    
    initial begin
        int = 8'b11111111;
    end
endmodule
