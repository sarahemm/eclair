`timescale 1ns/1ps

module ECLair();
  reg           clk_main;     // main system clock
  wire          clk_half;     // halved system clock
  wire          clk_quarter;  // quartered system clock
  wire  [2:0]   clk_divided;  // divided system clocks
  wire          clk_cs;       // control store clock (driven from clk_main or clk_half_a)
  wire          clk_cs_dly;   // control store clock, delayed a slight amount (used for edge-sensitive signals)
  reg           _ext_reset;   // external reset, when this is high we're forced into reset
  reg           _por_reset;   // power-on reset, goes high briefly when powered on
  wire          _reset;       // master reset, when this is high we're good to run
  
  wire  [7:0]   bus_data;
  wire  [24:0]  bus_addr;
  
  wire          addr_rom;         // decoded address lines used as chip selects
  wire          addr_device;
  wire          addr_ram;
  
  wire          processor_halted; // 1 if the control store is accessing the HLT instruction
  wire          top_of_cs;        // currently addressing the very top of the control store
  wire          cs_ready;         // RAM control store is ready
  wire  [7:0]   cs_addr;          // output of control store sequencer counter
  wire  [63:0]  cs_rom_data;      // ROM control store, used to load into RAM at startup
  wire  [63:0]  cs_data_prelatch; // RAM control store output
  wire  [63:0]  cs_data;          // RAM control store latch output, used to actually run the machine
  reg   [63:0]  cs_data_in;
  wire          cs_ram__w;        // RAM control store write signal
  wire          cs_jump_src;      // control store jump source (0 = IR, 1 = MC bits)
  wire  [7:0]   cs_jump_addr_mc;  // microcode bits used if cs_jump_src = 1
  wire          cs_jump;          // control store jump signal
  wire  [7:0]   cs_jump_addr;     // control store jump destination
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
  wire  [2:0]   reg_xy_src;       // load source for X and Y registers
  wire  [2:0]   reg_x_load_ir_src;  // bits from IR to determine which register to load
  wire          reg_x_load_ir;    // load a register, getting the reg to load from IR[7..6]
  wire          reg_a_load;       
  wire          reg_b_load;
  wire          reg_c_load;
  wire          reg_d_load;
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
  wire  [15:0]  reg_a;            // outputs from registers
  wire  [15:0]  reg_b;
  wire  [15:0]  reg_c;
  wire  [15:0]  reg_d;
  wire  [7:0]   reg_ir;
  wire  [15:0]  reg_mar;
  wire  [15:0]  lat_mar;
  wire  [15:0]  reg_mdr;
  wire  [15:0]  lat_mdr;
  wire  [15:0]  lat_xy;
  wire  [15:0]  alu_z;
  
  initial begin
    //$dumpfile("eclair.vcd");
    //$dumpvars(0,ECLair);
    clk_main = 1'b0;
    _ext_reset = 1'b1;
    _por_reset = 1'b0;
    #10 _por_reset = 1'b1;
    #168000 $finish;
  end
  
  counter         #(.WIDTH(3))                  ctr_clk_divider(.clk(clk_main), .ce(1'b1), .reset(1'b0), .out(clk_divided), .load(1'b0), .preset(3'b000));
  flipflop_jk                                   flp_cs_ready(.clk(top_of_cs), .j(1'b1), .k(1'b0), .q(cs_ready));
  mux_21                                        mux_cs_clk_selector(cs_ready, clk_quarter, clk_main, clk_cs);
  mux_28                                        mux_cs_jump_addr_src(.sel(cs_jump_src), .a(reg_ir), .b(cs_jump_addr_mc), .y(cs_jump_addr));
  counter         #(.WIDTH(8))                  ctr_cs_seq(.clk(clk_cs), .ce(1'b1), .reset(~_por_reset), .out(cs_addr), .load(cs_jump & cs_ready), .preset(cs_jump_addr));
  microcode_eprom #(.ROM_FILE("microcode-full.bin")) rom_cs(1'b0, 1'b0, cs_addr, cs_rom_data);
  microcode_ram                                 ram_cs(1'b0, 1'b0, cs_ram__w, cs_addr, cs_data_in, cs_data_prelatch);
  flipflop_d      #(.WIDTH(64))                 flp_ram_cs(clk_cs_dly, cs_data_prelatch, cs_data);
  main_ram                                      ram_main(._cs(1'b0), ._oe(addr_ram), ._w(ram__w), .addr(bus_addr[19:0]), .data_in(bus_data), .data_out(bus_data));
  main_eprom      #(.ROM_FILE("bootrom.bin"))   rom_boot(1'b0, addr_rom, bus_addr[19:0], bus_data);
  counter         #(.WIDTH(16))                 ctr_pc(.clk(inc_pc), .ce(1'b1), .reset(~_reset), .out(pc), .load(load_pc), .preset(reg_z));
  latch           #(.WIDTH(8))                  lat_reg_a_l(reg_a_load, reg_z[7:0], reg_a[7:0]);
  latch           #(.WIDTH(8))                  lat_reg_a_h(reg_a_load | ~op_16bit, reg_z[15:8], reg_a[15:8]);
  latch           #(.WIDTH(8))                  lat_reg_b_l(reg_b_load, reg_z[7:0], reg_b[7:0]);
  latch           #(.WIDTH(8))                  lat_reg_b_h(reg_b_load | ~op_16bit, reg_z[15:8], reg_b[15:8]);
  latch           #(.WIDTH(8))                  lat_reg_c_l(reg_c_load, reg_z[7:0], reg_c[7:0]);
  latch           #(.WIDTH(8))                  lat_reg_c_h(reg_c_load | ~op_16bit, reg_z[15:8], reg_c[15:8]);
  latch           #(.WIDTH(8))                  lat_reg_d_l(reg_d_load, reg_z[7:0], reg_d[7:0]);
  latch           #(.WIDTH(8))                  lat_reg_d_h(reg_d_load | ~op_16bit, reg_z[15:8], reg_d[15:8]);
  latch           #(.WIDTH(16))                 lat_reg_x(reg_x_load, lat_xy, reg_x);
  latch           #(.WIDTH(16))                 lat_reg_y(reg_y_load, lat_xy, reg_y);
  latch           #(.WIDTH(16))                 lat_reg_z(reg_z_load, alu_z, reg_z);
  latch                                         lat_reg_ir(reg_ir_load, bus_data, reg_ir);
  latch           #(.WIDTH(16))                 lat_reg_mar(reg_mar_load, lat_mar, reg_mar);
  latch           #(.WIDTH(8))                  lat_reg_mdr_l(.clk(reg_mdr_l_load), .in(lat_mdr[7:0]),  .out(reg_mdr[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_mdr_h(.clk(reg_mdr_h_load), .in(lat_mdr[15:8]), .out(reg_mdr[15:8]));
  demux_38                                      dmx_reg_load(load_reg, reg_load);
  demux_38                                      dmx_reg_load_ir(reg_x_load_ir_src, reg_load_via_ir);
  mux_88                                        mux_xy_src_l(.sel(reg_xy_src), .a(16'b0000000000000000), .b(reg_a[7:0]), .c(reg_b[7:0]), .d(reg_c[7:0]), .e(reg_d[7:0]), .h(reg_mdr[7:0]),  .y(lat_xy[7:0]));
  mux_88                                        mux_xy_src_h(.sel(reg_xy_src), .a(16'b0000000000000000), .b(reg_a[15:8]), .c(reg_b[15:8]), .d(reg_c[15:8]), .e(reg_d[15:8]), .h(reg_mdr[15:8]), .y(lat_xy[15:8]));
  mux_28                                        mux_mar_l(.sel(mux_mar_src), .a(reg_z[7:0]),  .b(pc[7:0]),  .y(lat_mar[7:0]));
  mux_28                                        mux_mar_h(.sel(mux_mar_src), .a(reg_z[15:8]), .b(pc[15:8]), .y(lat_mar[15:8]));
  mux_28                                        mux_mdr_l(.sel(mux_mdr_src), .a(reg_z[7:0]),  .b(bus_data[7:0]), .y(lat_mdr[7:0]));
  mux_28                                        mux_mdr_h(.sel(mux_mdr_src), .a(reg_z[15:8]), .b(bus_data[7:0]), .y(lat_mdr[15:8]));
  alu_16                                        alu(.mode(alu_mode), .alu_op(alu_op), .c_in(1'b0), .x(reg_x), .y(reg_y), .z(alu_z));
  
  // edge-sensitive microcode signals
  assign #1 cs_jump = cs_data[0];
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
  // level-sensitive microcode signals
  assign cs_jump_src = cs_data[24];
  assign cs_jump_addr_mc = cs_data[32:25];
  assign mux_mar_src = cs_data[33];
  assign mux_mdr_src = cs_data[34];
  assign alu_mode = cs_data[35];
  assign alu_op = cs_data[39:36];
  assign reg_xy_src = cs_data[42:40];
  assign ram_read = cs_data[43];
  assign ram_write = cs_data[44];
  assign op_16bit = cs_data[45];
  
  assign clk_half = clk_divided[1];
  assign clk_quarter = clk_divided[2];
  assign #8 clk_cs_dly = clk_cs;
  assign top_of_cs = cs_addr == 8'b11111111;
  assign processor_halted = cs_ready & cs_addr == 8'hFE;
  assign _reset = _ext_reset & _por_reset & cs_ready;
  assign cs_ram__w = cs_ready ~| clk_cs;
  assign reg_a_load = reg_load[1] & reg_load_via_ir[1];
  assign reg_b_load = reg_load[2] & reg_load_via_ir[3];
  assign reg_c_load = reg_load[3] & reg_load_via_ir[5];
  assign reg_d_load = reg_load[4] & reg_load_via_ir[7];
  assign reg_x_load_ir = ~reg_load[7];
  assign addr_rom = ~(bus_addr[23:20] == 4'b0000);
  assign addr_device = ~(bus_addr[23:20] == 4'b0111);
  assign addr_ram = ~(addr_rom ~| addr_device);
  assign bus_addr = reg_mar;
  assign reg_x_load_ir_src[0] = reg_x_load_ir;
  assign reg_x_load_ir_src[1] = reg_x_load_ir & reg_ir[6];
  assign reg_x_load_ir_src[2] = reg_x_load_ir & reg_ir[7];
  
  always begin
    #40 clk_main = ~clk_main;
  end
  
  always @ (clk_main) begin
    if(cs_ready) begin
      $display("resets: m:%0b e:%0b p:%0b c:%0b", _reset, _ext_reset, _por_reset, cs_ready);
      $display("cs_addr: %0h", cs_addr);
      $display("cs_data:  %08b_%08b_%08b_%08b", cs_data[31:24], cs_data[23:16], cs_data[15:8], cs_data[7:0]);
      $display("reg_ir:   %0b", reg_ir);
      $display("pc: 0x%06X", pc);
      $display("bus_addr: %08b_%08b_%08b", bus_addr[23:16], bus_addr[15:8], bus_addr[7:0]);
      $display("bus_data: %0b (0x%0h)", bus_data, bus_data);
      $display("reg_mar:  %08b_%08b (0x%0h)", reg_mar[15:8], reg_mar[7:0], reg_mar);
      $display("reg_mdr:  %08b_%08b (0x%0h)", reg_mdr[15:8], reg_mdr[7:0], reg_mdr);
      $display("reg_a:    %08b_%08b (0x%0h)", reg_a[15:8], reg_a[7:0], reg_a);
      $display("reg_b:    %08b_%08b (0x%0h)", reg_b[15:8], reg_b[7:0], reg_b);
      $display("reg_c:    %08b_%08b (0x%0h)", reg_c[15:8], reg_c[7:0], reg_c);
      $display("reg_d:    %08b_%08b (0x%0h)", reg_d[15:8], reg_d[7:0], reg_d);
      $display("reg_x:    %08b_%08b (0x%0h)", reg_x[15:8], reg_x[7:0], reg_x);
      $display("reg_y:    %08b_%08b (0x%0h)", reg_y[15:8], reg_y[7:0], reg_y);
      $display("reg_z:    %08b_%08b (0x%0h)", reg_z[15:8], reg_z[7:0], reg_z);
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