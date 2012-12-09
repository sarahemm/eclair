module ECLair();
  reg   clk_main;     // main system clock
  wire  clk_half_a;   // halved system clock, phase A
  wire  clk_half_b;   // halved system clock, phase B
  wire  clk_cs;       // control store clock (driven from clk_main or clk_half_a)
  reg   _ext_reset;   // external reset, when this is high we're forced into reset
  reg   _por_reset;   // power-on reset, goes high briefly when powered on
  wire  _reset;       // master reset, when this is high we're good to run
  
  wire  [7:0]   bus_data;
  wire  [24:0]  bus_addr;
  
  wire          addr_rom;         // decoded address lines used as chip selects
  wire          addr_device;
  wire          addr_ram;
  
  wire          cs_ready;         // RAM control store is ready
  wire  [7:0]   cs_addr;          // output of control store sequencer counter
  wire  [63:0]  cs_rom_data;      // ROM control store, used to load into RAM at startup
  wire  [63:0]  cs_data;          // RAM control store, used to actually run the machine
  reg   [63:0]  cs_data_in;
  wire          cs_ram__w;        // RAM control store write signal
  wire          cs_jump;          // control store jump signal
  wire  [7:0]   cs_jump_addr;     // control store jump destination
  wire          alu_op;           // ALU operation
  wire          ram__w;           // Main RAM write signal
  wire  [15:0]  pc;               // program counter
  wire  [7:0]   reg_load;         // load signals (latch clocks) for registers
  wire          reg_a_load;       
  wire          reg_b_load;
  wire          reg_c_load;
  wire          reg_d_load;
  wire          reg_ir_load;
  wire          reg_mar_load;
  wire  [15:0]  alu_x;            // alu I/O registers
  wire  [15:0]  alu_y;
  wire  [15:0]  alu_z;
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
  
  initial begin
    // set everything up
    clk_main = 1'b0;
    _ext_reset = 1'b1;
    _por_reset = 1'b0;
    #10 _por_reset = 1'b1;
    #4000 $finish;
  end
  
  flipflop_jk                                   flp_cs_ready(.clk(clk_cs), .j(cs_addr[7]), .k(1'b0), .q(cs_ready), ._q());
  flipflop_jk                                   flp_clk_halver(clk_main, 1'b1, 1'b1, clk_half_a, clk_half_b);
  mux_21                                        mux_cs_clk_selector(cs_ready, clk_half_a, clk_main, clk_cs);
  mux_28                                        mux_cs_jump_addr_src(cs_data[0], cs_data[9:2], reg_ir, cs_jump_addr);
  counter         #(.WIDTH(8))                  ctr_cs_seq(.clk(clk_cs), .reset(~_por_reset), .out(cs_addr), .load(cs_jump), .preset(cs_jump_addr));
  microcode_eprom #(.ROM_FILE("microcode.bin")) rom_cs(1'b0, 1'b0, cs_addr, cs_rom_data);
  microcode_ram                                 ram_cs(1'b0, 1'b0, cs_ram__w, cs_addr, cs_data_in, cs_data);
  main_ram                                      ram_main(1'b0, addr_ram, ram__w, bus_addr[19:0], bus_data, bus_data);
  main_eprom      #(.ROM_FILE("bootrom.bin"))   rom_boot(1'b0, addr_rom, bus_addr[19:0], bus_data);
  counter         #(.WIDTH(16))                 ctr_pc(.clk(cs_data[15]), .reset(~_reset), .out(pc), .load(cs_data[16]), .preset(reg_z));
  latch           #(.WIDTH(16))                 lat_reg_a(reg_a_load, reg_z, reg_a);
  latch           #(.WIDTH(16))                 lat_reg_b(reg_b_load, reg_z, reg_b);
  latch           #(.WIDTH(16))                 lat_reg_c(reg_c_load, reg_z, reg_c);
  latch           #(.WIDTH(16))                 lat_reg_d(reg_d_load, reg_z, reg_d);
  latch           #(.WIDTH(16))                 lat_reg_x(reg_x_load, alu_z, reg_x);
  latch           #(.WIDTH(16))                 lat_reg_y(reg_y_load, alu_y, reg_y);
  latch           #(.WIDTH(16))                 lat_reg_z(reg_z_load, alu_x, reg_z);
  latch                                         lat_reg_ir(reg_ir_load, bus_data, reg_ir);
  latch           #(.WIDTH(16))                 lat_reg_mar(reg_mar_load, lat_mar, reg_mar);
  demux_38                                      dmx_reg_load(cs_data[19:17], reg_load);
  mux_28                                        mux_mar_l(cs_data[10], pc[7:0], reg_z[7:0], lat_mar[7:0]);
  mux_28                                        mux_mar_h(cs_data[10], pc[15:8], reg_z[15:8], lat_mar[15:8]);
  alu                                           alu(clk_main, alu_op, reg_x, reg_y, reg_z);
  
  assign _reset = _ext_reset & _por_reset & cs_ready;
  assign cs_ram__w = cs_ready ~| clk_half_a;
  assign cs_jump = cs_data[1];
  assign alu_op = cs_data[23:20];
  assign reg_a_load = reg_load[0];
  assign reg_b_load = reg_load[1];
  assign reg_c_load = reg_load[2];
  assign reg_d_load = reg_load[3];
  assign reg_mar_load = cs_data[13];
  assign reg_ir_load = cs_data[14];
  assign addr_rom = ~(bus_addr[23:20] == 4'b0000);
  assign addr_device = ~(bus_addr[23:20] == 4'b0111);
  assign addr_ram = ~(addr_rom ~| addr_device);
  assign bus_addr = reg_mar;
  
  always begin
    #5 clk_main = ~clk_main;
  end
  
  always @ (clk_main) begin
    $display("resets: m:%0b e:%0b p:%0b c:%0b", _reset, _ext_reset, _por_reset, cs_ready);
    $display("cs_addr: %0h", cs_addr);
    $display("cs_data: %0b", cs_data);
    $display("reg_ir: %0b", reg_ir);
    $display("pc: %0b", pc);
    $display("bus_addr: %0b", bus_addr);
    $display("bus_data: %0b (0x%0h)", bus_data, bus_data);
    $display("selected: rom: %0b dev: %0b ram: %0b\n", addr_rom, addr_device, addr_ram);
  end
  
  // control store copier
  always @ (clk_main) begin
    if(!cs_ready && cs_ram__w == 1 && _por_reset == 1'b1) begin
      //$display("Copying control store word%d:     (%b)", cs_addr, cs_rom_data);
      cs_data_in <= cs_rom_data;
    end
  end
  
  always @ (negedge cs_addr[7]) begin
    if(cs_ready) begin
      $display("Microcode loaded from ROM to RAM.");
    end
  end
endmodule