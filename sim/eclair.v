`timescale 1ns/1ps

module ECLair();
  reg           clk_main;     // main system clock
  wire          clk_half;     // halved system clock
  wire          clk_quarter;  // quartered system clock
  wire  [2:0]   clk_divided;  // divided system clocks
  wire          clk_cs;       // control store clock (driven from clk_main or clk_half_a)
  wire          clk_cs_dly;   // control store clock, delayed a slight amount (used to latch microcode signals)
  wire          clk_cs_dly2;  // control store clock, delayed more (used for edge-sensitive signals)
  reg           _ext_reset;   // external reset, when this is high we're forced into reset
  reg           _por_reset;   // power-on reset, goes high briefly when powered on
  wire          _reset;       // master reset, when this is high we're good to run
  
  wire  [7:0]   bus_data;
  wire  [23:0]  bus_addr;
  
  wire          addr_rom;         // decoded address lines used as chip selects
  wire          addr_device;
  wire          addr_ram;
  
  wire          processor_halted; // 1 if the control store is accessing the HLT instruction
  wire          top_of_cs;        // currently addressing the very top of the control store
  wire          cs_ready;         // RAM control store is ready
  wire  [7:0]   cs_addr;          // output of control store sequencer
  wire  [7:0]   cs_addr_init;     // output of control store counter, used during the initial copy
  wire  [7:0]   cs_addr_run;      // output of control store sequencer latch, used during runtime
  wire  [63:0]  cs_rom_data;      // ROM control store, used to load into RAM at startup
  wire  [63:0]  cs_data_prelatch; // RAM control store output
  wire  [63:0]  cs_data;          // RAM control store latch output, used to actually run the machine
  reg   [63:0]  cs_data_in;
  wire          cs_ram__w;        // RAM control store write signal
  wire  [7:0]   cs_next_addr;     // control store next microcode address bits
  wire  [7:0]   next_addr;        // next microcode address to visit, either the above bits or IR if above is 8'b0
  wire          inc_pc;           // increment PC
  wire          load_pc;          // load PC from Z
  wire          alu_mode;         // ALU mode (0=arithmetic, 1=logic)
  wire  [3:0]   alu_op;           // ALU operation
  wire          ram_read;         // RAM read operation
  wire          ram_write;        // RAM write operation
  wire          op_16bit;         // Operation is 16-bits wide
  wire          mux_mar_src;      // 0 = MAR sources from Z, 1 = MAR sources from PC
  wire          mux_mdr_src;      // 0 = MDR sources from Z, 1 = MDR sources from data bus
  wire          ram__w;           // Main RAM write signal
  wire  [15:0]  pc;               // program counter
  wire  [2:0]   load_reg;         // load general register
  wire  [7:0]   reg_load;         // load signals (latch clocks) for registers
  wire  [7:0]   reg_load_via_ir;  // load signals (latch clocks) for registers (when loading via IR)
  wire          xy_imm_lsb;       // least significant immediate bit (used when reg_xy_src = 3'b000)
  wire  [15:0]  xy_imm_val;       // xy immediate value (used when reg_xy_src = 3'b000)
  wire  [2:0]   reg_xy_src;       // load source for X and Y registers
  wire  [2:0]   reg_x_load_ir_src;  // bits from IR to determine which register to load
  wire          reg_x_load_ir;    // load a register, getting the reg to load from IR[7..6]
  wire          reg_a_load;       
  wire          reg_b_load;
  wire          reg_c_load;
  wire          reg_d_load;
  wire          reg_sp_load;
  wire          reg_ir_load;
  wire          reg_mar_load;
  wire          reg_mdr_l_load;
  wire          reg_mdr_h_load;
  wire          reg_x_load;
  wire          reg_y_load;
  wire          reg_z_load;
  wire  [15:0]  reg_x;
  wire  [15:0]  reg_y;
  wire  [15:0]  reg_z;
  wire  [15:0]  reg_a;          // outputs from registers
  wire  [15:0]  reg_b;
  wire  [15:0]  reg_c;
  wire  [15:0]  reg_d;
  wire  [15:0]  reg_sp;
  wire  [7:0]   reg_ir;
  wire  [15:0]  reg_mar;
  wire  [15:0]  lat_mar;
  wire  [15:0]  reg_mdr;
  wire  [15:0]  lat_mdr;
  wire  [15:0]  lat_xy;
  wire  [15:0]  alu_z;
  wire          alu_cout8;
  wire          alu_cout16;
  wire  [11:0]  pagetable_addr; // currently selected address in the pagetable
  wire  [15:0]  pagetable_out;  // output from the page table
  wire  [5:0]   reg_ptb;        // currently addressed page table block register output
  wire  [5:0]   ptb;            // currently addressed page table block (taking into account supervisor mode PTB=0)
  wire          write_pte;      // 1=write page table entry
  wire          load_ptb;       // load PTB register from Z
  wire          load_flags;     // load system flags from Z
  wire          load_status;    // load system status from ALU
  wire  [7:0]   flags;          // system flags (paging enabled, etc.)
  wire  [7:0]   status;         // system status (ALU zero, carry/overflow, etc.)
  wire          paging_enabled; // paging is enabled, all addresses run through the page table
  wire          mode;           // supervisor (0) or user (1) mode
  wire  [7:0]   status_in;      // input to status latch (output from 8/16 status selector mux)
  wire          status_z_8;     // last operation result was zero (8-bit)
  wire          status_z_16;    // last operation result was zero (16-bit)
  wire  [7:0]   status_8;       // status byte full of 8-bit-operation status information
  wire  [7:0]   status_16;      // status byte full of 16-bit-operation status information
  wire          branch_cond_met;  // branch condition is met
  wire          really_load_pc;   // request to load pc and branch condition is met
  wire  [2:0]   branch_cond;    // which branch condition to use
  
  initial begin
    //$dumpfile("eclair.vcd");
    //$dumpvars(0,ECLair);
    clk_main = 1'b0;
    _ext_reset = 1'b1;
    _por_reset = 1'b0;
    #10 _por_reset = 1'b1;
    #250000 $finish;
  end
  
  counter         #(.WIDTH(3))                  ctr_clk_divider(.clk(clk_main), .ce(1'b1), .reset(1'b0), .out(clk_divided), .load(1'b0), .preset(3'b000));
  flipflop_jk                                   flp_cs_ready(.clk(top_of_cs), .j(1'b1), .k(1'b0), .q(cs_ready));
  mux_21                                        mux_cs_clk_selector(cs_ready, clk_quarter, clk_main, clk_cs);
  mux_2x                                        mux_cs_addr(.sel(cs_ready), .a(cs_addr_init), .b(cs_addr_run), .y(cs_addr));
  mux_2x                                        mux_cs_next_addr(.sel(cs_next_addr == 8'b00000000), .a(cs_next_addr), .b(reg_ir), .y(next_addr));
  counter         #(.WIDTH(8))                  ctr_cs_seq(.clk(clk_cs), .ce(~cs_ready), .reset(~_por_reset), .out(cs_addr_init), .load(1'b0), .preset(8'b00000000));
  flipflop_d      #(.WIDTH(8))                  flp_cs_addr(.clk(clk_cs), .reset(~cs_ready), .in(next_addr), .out(cs_addr_run));
  microcode_eprom #(.ROM_FILE("microcode.bin")) rom_cs(1'b0, 1'b0, cs_addr, cs_rom_data);
  microcode_ram                                 ram_cs(1'b0, 1'b0, cs_ram__w, cs_addr, cs_data_in, cs_data_prelatch);
  flipflop_d      #(.WIDTH(24))                 flp_ram_cs_e(.clk(clk_cs_dly2), .reset(~(clk_cs && clk_cs_dly2)), .in(cs_data_prelatch[23:0]),  .out(cs_data[23:0]));
  flipflop_d      #(.WIDTH(40))                 flp_ram_cs_l(.clk(clk_cs_dly), .reset(1'b0), .in(cs_data_prelatch[63:24]), .out(cs_data[63:24]));
  main_ram                                      ram_main(._cs(1'b0), ._oe(addr_ram), ._w(ram__w), .addr(bus_addr[19:0]), .data_in(bus_data), .data_out(bus_data));
  main_eprom      #(.ROM_FILE("sysrom.bin"))    rom_boot(1'b0, addr_rom, bus_addr[19:0], bus_data);
  counter         #(.WIDTH(16))                 ctr_pc(.clk(inc_pc), .ce(1'b1), .reset(~_reset), .out(pc), .load(really_load_pc), .preset(reg_z));
  latch           #(.WIDTH(8))                  lat_reg_a_h(.clk(reg_a_load | ~op_16bit), .reset(1'b0), .in(reg_z[15:8]), .out(reg_a[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_b_h(.clk(reg_b_load | ~op_16bit), .reset(1'b0), .in(reg_z[15:8]), .out(reg_b[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_c_h(.clk(reg_c_load | ~op_16bit), .reset(1'b0), .in(reg_z[15:8]), .out(reg_c[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_d_h(.clk(reg_d_load | ~op_16bit), .reset(1'b0), .in(reg_z[15:8]), .out(reg_d[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_a_l(.clk(reg_a_load), .reset(1'b0), .in(reg_z[7:0]), .out(reg_a[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_b_l(.clk(reg_b_load), .reset(1'b0), .in(reg_z[7:0]), .out(reg_b[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_c_l(.clk(reg_c_load), .reset(1'b0), .in(reg_z[7:0]), .out(reg_c[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_d_l(.clk(reg_d_load), .reset(1'b0), .in(reg_z[7:0]), .out(reg_d[7:0]));
  latch           #(.WIDTH(16))                 lat_reg_sp(.clk(reg_sp_load), .reset(1'b0), .in(reg_z), .out(reg_sp));
  latch           #(.WIDTH(16))                 lat_reg_x(.clk(reg_x_load), .reset(1'b0), .in(lat_xy), .out(reg_x));
  latch           #(.WIDTH(16))                 lat_reg_y(.clk(reg_y_load), .reset(1'b0), .in(lat_xy), .out(reg_y));
  latch           #(.WIDTH(16))                 lat_reg_z(.clk(reg_z_load), .reset(1'b0), .in(alu_z),  .out(reg_z));
  latch                                         lat_reg_ir(.clk(reg_ir_load), .reset(1'b0), .in(bus_data), .out(reg_ir));
  latch           #(.WIDTH(6))                  lat_reg_ptb(.clk(load_ptb), .reset(1'b0), .in(alu_z[5:0]), .out(reg_ptb));
  latch           #(.WIDTH(16))                 lat_reg_mar(.clk(reg_mar_load), .reset(1'b0), .in(lat_mar), .out(reg_mar));
  latch           #(.WIDTH(8))                  lat_reg_mdr_l(.clk(reg_mdr_l_load), .reset(1'b0), .in(lat_mdr[7:0]),  .out(reg_mdr[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_mdr_h(.clk(reg_mdr_h_load), .reset(1'b0), .in(lat_mdr[15:8]), .out(reg_mdr[15:8]));
  demux_38                                      dmx_reg_load(load_reg, reg_load);
  demux_38                                      dmx_reg_load_ir(reg_x_load_ir_src, reg_load_via_ir);
  mux_88                                        mux_xy_src_l(.sel(reg_xy_src), .a(xy_imm_val[7:0]), .b(reg_a[7:0]), .c(reg_b[7:0]), .d(reg_c[7:0]), .e(reg_d[7:0]), .f(reg_sp[7:0]), .h(reg_mdr[7:0]),  .y(lat_xy[7:0]));
  mux_88                                        mux_xy_src_h(.sel(reg_xy_src), .a(xy_imm_val[15:8]), .b(reg_a[15:8]), .c(reg_b[15:8]), .d(reg_c[15:8]), .e(reg_d[15:8]), .f(reg_sp[15:8]), .h(reg_mdr[15:8]), .y(lat_xy[15:8]));
  mux_2x                                        mux_mar_l(.sel(mux_mar_src), .a(reg_z[7:0]),  .b(pc[7:0]),  .y(lat_mar[7:0]));
  mux_2x                                        mux_mar_h(.sel(mux_mar_src), .a(reg_z[15:8]), .b(pc[15:8]), .y(lat_mar[15:8]));
  mux_2x                                        mux_mdr_l(.sel(mux_mdr_src), .a(reg_z[7:0]),  .b(bus_data[7:0]), .y(lat_mdr[7:0]));
  mux_2x                                        mux_mdr_h(.sel(mux_mdr_src), .a(reg_z[15:8]), .b(bus_data[7:0]), .y(lat_mdr[15:8]));
  mux_2x          #(.WIDTH(6))                  mux_ptb(.sel(mode), .a(6'b000000), .b(reg_ptb), .y(ptb));
  alu_16                                        alu(.mode(alu_mode), .alu_op(alu_op), .c_in(1'b0), .x(reg_x), .y(reg_y), .z(alu_z), .c_out8(alu_cout8), .c_out16(alu_cout16));
  main_ram      #(.WIDTH(16), .ADDR_WIDTH(12))  ram_paging(._cs(1'b0), ._oe(1'b0), ._w(~write_pte), .addr(pagetable_addr), .data_in(reg_z), .data_out(pagetable_out));
  mux_2x                                        mux_paging_l(.sel(paging_enabled), .a(reg_mar[15:10]), .b(pagetable_out[7:0]),  .y(bus_addr[17:10]));
  mux_2x        #(.WIDTH(6))                    mux_paging_h(.sel(paging_enabled), .a(6'b0),           .b(pagetable_out[13:8]), .y(bus_addr[23:18]));
  flipflop_d    #(.WIDTH(8))                    flp_reg_flags(.clk(load_flags), .reset(~_reset), .in(reg_z[7:0]), .out(flags));
  latch         #(.WIDTH(8))                    lat_reg_status(.clk(load_status), .reset(~_reset), .in(status_in), .out(status));
  mux_2x                                        mux_status(.sel(op_16bit), .a(status_8), .b(status_16), .y(status_in));
  mux_18                                        mux_branch_cond(.sel(branch_cond), .a(1'b1), .b(status[0]), .c(status[1]), .y(branch_cond_met));
  
  // edge-sensitive microcode signals
  assign write_pte = cs_data[0] & cs_ready; // TODO: make the cs latches only latch once cs_ready
  assign reg_mdr_l_load = ~cs_data[1];
  assign reg_mdr_h_load = ~cs_data[2];
  assign reg_mar_load = ~cs_data[3];
  assign reg_ir_load = ~cs_data[4];
  assign inc_pc = cs_data[5];
  assign load_pc = cs_data[6];
  assign load_reg = cs_data[9:7];
  assign reg_x_load = ~cs_data[10];
  assign reg_y_load = ~cs_data[11];
  assign reg_z_load = ~cs_data[12];
  assign load_ptb = ~cs_data[13];
  assign load_flags = cs_data[14];
  assign load_status = ~cs_data[15];
  
  // level-sensitive microcode signals
  assign xy_imm_lsb = cs_data[24];
  assign cs_next_addr = cs_data[32:25];
  assign mux_mar_src = cs_data[33];
  assign mux_mdr_src = cs_data[34];
  assign alu_mode = cs_data[35];
  assign alu_op = cs_data[39:36];
  assign reg_xy_src = cs_data[42:40];
  assign ram_read = cs_data[43];
  assign ram_write = cs_data[44];
  assign op_16bit = cs_data[45];
  assign branch_cond = cs_data[48:46];
  
  assign clk_half = clk_divided[1];
  assign clk_quarter = clk_divided[2];
  assign #8 clk_cs_dly = clk_cs;
  assign #8 clk_cs_dly2 = clk_cs_dly;
  assign top_of_cs = cs_addr == 8'b11111111;
  assign processor_halted = cs_ready & cs_addr == 8'hFE;
  assign _reset = _ext_reset & _por_reset & cs_ready;
  assign cs_ram__w = cs_ready ~| clk_cs;
  assign reg_a_load = reg_load[1] & reg_load_via_ir[1];
  assign reg_b_load = reg_load[2] & reg_load_via_ir[3];
  assign reg_c_load = reg_load[3] & reg_load_via_ir[5];
  assign reg_d_load = reg_load[4] & reg_load_via_ir[7];
  assign reg_sp_load = reg_load[5];
  assign reg_x_load_ir = ~reg_load[7];
  assign addr_rom = ~(bus_addr[23:20] == 4'b0000);
  assign addr_device = ~(bus_addr[23:20] == 4'b0111);
  assign addr_ram = ~(addr_rom ~| addr_device);
  assign bus_addr[9:0] = reg_mar[9:0];  // the rest of the bus goes through the paging mechanism
  assign reg_x_load_ir_src[0] = reg_x_load_ir;
  assign reg_x_load_ir_src[1] = reg_x_load_ir & reg_ir[6];
  assign reg_x_load_ir_src[2] = reg_x_load_ir & reg_ir[7];
  assign pagetable_addr[5:0] = reg_mar[15:10];
  assign pagetable_addr[11:6] = ptb[5:0];
  assign paging_enabled = flags[0];
  assign mode = flags[1];
  assign status_z_8  = (reg_z[7:0] == 8'd0);
  assign status_z_16 = (reg_z == 16'd0);
  assign status_8[0]  = status_z_8;
  assign status_16[0] = status_z_16;
  assign status_8[1]  = alu_cout8;
  assign status_16[1] = alu_cout16;
  assign really_load_pc = load_pc & branch_cond_met;
  assign xy_imm_val[0] = xy_imm_lsb;
  assign xy_imm_val[15:1] = 15'b000000000000000;
  
  always begin
    #40 clk_main = ~clk_main;
  end
  
  always @ (clk_main) begin
    if(cs_ready) begin
      $display("resets:   m:%0b e:%0b p:%0b c:%0b", _reset, _ext_reset, _por_reset, cs_ready);
      $display("cs_addr:  %0h", cs_addr);
      $display("cs_data:  %08b_%08b_%08b_%08b", cs_data[31:24], cs_data[23:16], cs_data[15:8], cs_data[7:0]);
      $display("pc:       0x%06X", pc);
      $display("flags:    %08b", flags);
      $display("status:   %08b", status);
      $display("ptb:      %06b", ptb);
      $display("bus_addr: %08b_%08b_%08b", bus_addr[23:16], bus_addr[15:8], bus_addr[7:0]);
      $display("bus_data: %0b (0x%0h)", bus_data, bus_data);
      $display("reg_ir:   %0b", reg_ir);
      $display("reg_mar:  %08b_%08b (0x%0h)", reg_mar[15:8], reg_mar[7:0], reg_mar);
      $display("reg_mdr:  %08b_%08b (0x%0h)", reg_mdr[15:8], reg_mdr[7:0], reg_mdr);
      $display("reg_a:    %08b_%08b (0x%0h)", reg_a[15:8],  reg_a[7:0],  reg_a);
      $display("reg_b:    %08b_%08b (0x%0h)", reg_b[15:8],  reg_b[7:0],  reg_b);
      $display("reg_c:    %08b_%08b (0x%0h)", reg_c[15:8],  reg_c[7:0],  reg_c);
      $display("reg_d:    %08b_%08b (0x%0h)", reg_d[15:8],  reg_d[7:0],  reg_d);
      $display("reg_sp:   %08b_%08b (0x%0h)", reg_sp[15:8], reg_sp[7:0], reg_sp);
      $display("reg_x:    %08b_%08b (0x%0h)", reg_x[15:8],  reg_x[7:0],  reg_x);
      $display("reg_y:    %08b_%08b (0x%0h)", reg_y[15:8],  reg_y[7:0],  reg_y);
      $display("reg_z:    %08b_%08b (0x%0h)", reg_z[15:8],  reg_z[7:0],  reg_z);
      $display("lat_xy:   %0b (0x%0h)", lat_xy, lat_xy);
      $display("xy_src:   %0b", cs_data[28:26]);
      $display("reg_x_load: %0b", reg_x_load);
      $display("selected: rom: %0b dev: %0b ram: %0b\n", addr_rom, addr_device, addr_ram);
      if(^cs_data == 1'b1 || ^cs_data == 1'b0) begin
      end else begin
        if(cs_addr != 8'hFF) begin
          $display("\nILLEGAL MICROINSTRUCTION EXECUTED (pc=0x%06X cs_addr=0x%06X)", pc, cs_addr);
          $finish;
        end
      end
    end
  end
  
  // control store copier
  always @ (clk_main) begin
    if(!cs_ready && cs_ram__w == 1 && _por_reset == 1'b1) begin
      //$display("Copying control store word%d:     (%b)", cs_addr, cs_rom_data);
      cs_data_in <= cs_rom_data;
    end
  end
  
  always @ (posedge cs_ready) begin
    if(cs_ready) begin
      $display("Microcode loaded from ROM to RAM.");
      $dumpfile("eclair.vcd");
      $dumpvars(0,ECLair);
    end
  end
  
  always @ (posedge processor_halted) begin
    $display("\nPROCESSOR HALTED");
    $finish;
  end
endmodule