`timescale 1ns/1ps

// test harness for interrupt tests, that holds DMA_REQ high for awhile after 400us

module ECLairTestHarness();
    reg [7:0]   int;
    reg         dma_req;
    wire        dma_ack;
    reg [23:0]  fp_bus_addr;
    reg [7:0]   fp_bus_data;
    reg         fp_write;
    
    ECLair  eclair_dut(.int(int), .dma_req(dma_req), .dma_ack(dma_ack), .fp_bus_addr(fp_bus_addr), .fp_bus_data(fp_bus_data), .fp_write(fp_write));
    
    initial begin
        int = 8'b11111111;
        dma_req = 1'b0;
        fp_write = 1'b0;
        
        #400000 dma_req = 1'b1;
        #25000  dma_req = 1'b0;
    end

    always @(posedge dma_ack) begin
        #50
        fp_bus_addr = 'h100040;
        fp_bus_data = 'h00;
        #10
        fp_write = 1'b1;
        #10
        fp_write = 1'b0;

        #10
        fp_bus_addr = 'h100041;
        fp_bus_data = 'h00;
        #10
        fp_write = 1'b1;
        #10
        fp_write = 1'b0;
    end
endmodule
