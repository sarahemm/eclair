`timescale 1ns/1ps

module ECLair(int, dma_req, dma_ack, fp_bus_addr, fp_bus_data, fp_write);
  input [7:0]   int;          // interrupt "pins"
  input         dma_req;      // dma request
  output        dma_ack;      // dma request acknowledge
  input [23:0]  fp_bus_addr;  // front panel address bus (connected to main address bus when DMA active)
  input [7:0]   fp_bus_data;  // front panel data bus (connected to main address bus when DMA active)
  input         fp_write;     // write data entered on front panel

  reg           clk_main;     // main system clock
  wire          clk_half;     // halved system clock
  wire          clk_quarter;  // quartered system clock
  wire  [2:0]   clk_divided;  // divided system clocks
  wire          clk_cs;       // control store clock (driven from clk_main or clk_half_a)
  wire          clk_cs_dly;   // control store clock, delayed a slight amount (used to latch microcode signals)
  wire          clk_cs_dly2;  // control store clock, delayed more (used for edge-sensitive signals)
  wire          clk_cs_mid;   // control store clock between the quarter/full selector and the writecse logic
  reg           _ext_reset;   // external reset, when this is high we're forced into reset
  reg           _por_reset;   // power-on reset, goes high briefly when powered on
  wire          _reset;       // master reset, when this is high we're good to run
  
  // bus_xyz_nondma is fed from the normal paths, this gets routed to bus_xyz_from_nondma
  // fp_bus_xyz is fed from the DMA path, this gets routed to bus_xyz_from_dma
  // the two are ORed together after each going through a latch that can zero each one out,
  // only one at a time will be non-zero
  // TODO: the naming of these is not ideal but choosing names for these is hard
  wire  [7:0]   bus_data;
  wire  [23:0]  bus_addr;

  wire  [7:0]   bus_data_nondma_from_ram;
  wire  [7:0]   bus_data_nondma_from_rom;
  wire  [7:0]   bus_data_nondma_from_mdr;
  wire  [23:0]  bus_addr_nondma;

  wire  [7:0]   bus_data_from_nondma;
  wire  [23:0]  bus_addr_from_nondma;

  wire  [7:0]   bus_data_from_dma;
  wire  [23:0]  bus_addr_from_dma;

  wire          dma_req_latched;  // dma_req, but latched to be synchronous with our main clock

  wire          addr_rom;         // decoded address lines used as chip selects
  wire          addr_device;
  wire          addr_ram;
  
  wire          processor_halted; // 1 if the control store is accessing the HLT instruction
  wire          top_of_cs;        // currently addressing the very top of the control store
  wire          cs_ready;         // RAM control store is ready
  wire  [8:0]   cs_addr;          // output of control store sequencer
  wire  [8:0]   cs_addr_init;     // output of control store counter, used during the initial copy
  wire  [63:0]  cs_data_prelatch; // RAM control store output
  wire  [63:0]  cs_data;          // RAM control store latch output, used to actually run the machine
  wire  [63:0]  cs_ram_data_in;   // input data to the control store RAM
  wire  [63:0]  cs_rom_data;      // output of the control store ROM data
  wire          cs_ram__w;        // RAM control store write signal
  wire  [8:0]   cs_next_addr;         // control store next microcode address bits
  wire  [8:0]   cs_next_addr_rptz;    // control store next microcode address bits from rptz jump bits
  wire		cs_mux_seq_reset;     // reset for the sequenced cs_addr mux
  wire		cs_mux_imm_reset;     // reset for the immediate cs_addr mux
  wire	[1:0]	cs_mux_seq_sel;       // selector for which cs_addr bits get used via the sequenced mux
  wire	[1:0]	cs_mux_imm_sel;       // selector for which cs_addr bits get used via the immediate mux
  wire	[8:0]	cs_addr_seq;
  wire	[8:0]	cs_addr_seq_latched;
  wire	[8:0]	cs_addr_imm;
  wire		cs_mux_sel_ir;		// cs mux should steer IR into cs_addr (to execute a new instruction)
  wire		cs_mux_sel_rptz;	// cs mux should steer rptz bits into cs_addr (as we're in a microcode loop)
  wire		cs_mux_sel_nextaddr;	// cs mux should steer CS next_addr bits into cs_addr (as we're mid-instruction)
  wire		cs_mux_sel_intdma;	// cs mux should steer int/dma bits into cs_addr (due to an IRQ/DRQ)
  wire	[8:0]	cs_mux_new_test;

  wire  [3:0]   rptz_next_nibble;       // 4 low bits to use for next CS addr if RPT=z
  wire          inc_pc;           // increment PC
  wire          load_pc;          // load PC from Z
  wire          rpt_mode;         // RPT mode (0=load, 1=decrement)
  wire          rpt_exec;         // execute RPT operation specified in rpt_mode
  wire          alu_mode;         // ALU mode (0=arithmetic, 1=logic)
  wire  [3:0]   alu_op;           // ALU operation
  wire          ram_read;         // RAM read operation
  wire          ram_write;        // RAM write operation
  wire          op_16bit;         // Operation is 16-bits wide
  wire          mux_mar_src;      // 0 = MAR sources from Z, 1 = MAR sources from PC
  wire          mux_mdr_src;      // 0 = MDR sources from Z, 1 = MDR sources from data bus
  wire          mdr_byte;         // which byte of MDR to use for 8-bit ops (0=low byte, 1=high byte)
  wire          reg_byte;         // which byte of registers to use for 8-bit ops (0=low byte, 1=high byte)
  wire  [15:0]  pc;               // program counter
  wire  [2:0]   load_reg;         // load general register
  wire  [7:0]   reg_load;         // load signals (latch clocks) for registers
  wire  [7:0]   reg_load_via_ir;  // load signals (latch clocks) for registers (when loading via IR)
  wire  [1:0]   xy_imm_lsb;       // least significant immediate bits (used when reg_xy_src = 3'b0000)
  wire  [15:0]  xy_imm_val;       // xy immediate value (used when reg_xy_src = 3'b0000)
  wire  [3:0]   reg_xy_src;       // load source for X and Y registers
  wire  [2:0]   reg_x_load_ir_src;  // bits from IR to determine which register to load
  wire          reg_x_load_ir;    // load a register, getting the reg to load from IR[7..6]
  wire          reg_a_load;       
  wire          reg_b_load;
  wire          reg_c_load;
  wire          reg_d_load;
  wire          reg_sp_load;
  wire          reg_dp_load;
  wire          reg_ir_load;
  wire          reg_rr_load;
  wire          reg_mar_load;
  wire          reg_mdr_load;
  wire          reg_x_load;
  wire          reg_y_load;
  wire  [15:0]  reg_x;
  wire  [15:0]  reg_y;
  wire  [15:0]  reg_a;          // outputs from registers
  wire  [15:0]  reg_b;
  wire  [15:0]  reg_c;
  wire  [15:0]  reg_d;
  wire  [63:0]  reg_abcd;       // all gen purpose registers together, used for cs writing
  wire  [15:0]  reg_sp;
  wire  [15:0]  reg_dp;
  wire  [7:0]   reg_ir;
  wire  [7:0]   reg_rr;
  wire  [8:0]   reg_ir_padded;  // reg_ir extended to 9 bits for driving microcode addresses
  wire  [15:0]  reg_mar;
  wire  [15:0]  reg_mar_shr;    // reg_mar shifted one bit right, used in the shift right microcode
  wire  [15:0]  reg_mar_sex;    // reg_mar sign extended, high 8 bits are a copy of mar[7]
  wire  [15:0]  reg_mar_swab;   // reg_mar with the two bytes swapped
  wire  [15:0]  lat_mar;
  wire  [15:0]  reg_mdr;
  wire  [7:0]   reg_mdr_8bit;
  wire  [15:0]  lat_mdr;
  wire  [15:0]  lat_xy;
  wire  [15:0]  bus_z;
  wire  [11:0]  rpt;
  wire  [11:0]  rpt_mdr_source;

  // outputs from the XY driver latches
  wire  [15:0]  reg_imm_xy;
  wire  [15:0]  reg_a_xy;
  wire  [15:0]  reg_b_xy;
  wire  [15:0]  reg_c_xy;
  wire  [15:0]  reg_d_xy;
  wire  [15:0]  reg_sp_xy;
  wire  [15:0]  reg_mar_xy;
  wire  [15:0]  reg_mdr_xy;
  wire  [15:0]  reg_intvect_xy;
  wire  [15:0]  reg_mar_shr_xy;
  wire  [15:0]  reg_mar_sex_xy;
  wire  [15:0]  reg_mar_swab_xy;
  wire  [15:0]  reg_dp_xy;
  
  // XY driver latch resets
  wire  [15:0]  xy_reset_normal;
  wire  [4:1]   xy_reset_from_ir;
  wire  [4:1]   xy_reset_from_rr;
  wire  [15:0]  xy_reset;
  wire          xy_reset_imm;
  wire          xy_reset_a;
  wire          xy_reset_b;
  wire          xy_reset_c;
  wire          xy_reset_d;
  wire          xy_reset_sp;
  wire          xy_reset_mar;
  wire          xy_reset_mdr;
  wire          xy_reset_intvect;
  wire          xy_reset_mar_shr;
  wire          xy_reset_mar_sex;
  wire          xy_reset_mar_swab;
  wire          xy_reset_dp;
  
  wire          alu_cout8;
  wire          alu_cout16;
  wire  [11:0]  pagetable_addr; // currently selected address in the pagetable
  wire  [15:0]  pagetable_out;  // output from the page table
  wire          page_status_present;  // current page is present
  wire          page_status_writable; // current page is writable
  wire  [5:0]   reg_ptb;        // currently addressed page table block register output
  wire  [5:0]   ptb;            // currently addressed page table block (taking into account supervisor mode PTB=0)
  wire          write_pte;      // 1=write page table entry
  wire          load_ptb;       // load PTB register from Z
  wire          load_status;    // load system status from ALU
  wire  [7:0]   flags;          // system flags (paging enabled, etc.)
  wire  [7:0]   status;         // system status (ALU zero, carry/overflow, etc.)
  wire          flag_pe;        // paging is enabled, all addresses run through the page table
  wire          flag_m;         // supervisor (0) or user (1) mode
  wire          flag_ie;        // interrupts are enabled
  wire          load_flag_pe;   // load PE flag from z[0]
  wire          load_flag_m;    // load M flag from z[1]
  wire          load_flag_ie;   // load IE flag from z[2]
  wire  [7:0]   status_in;      // input to status latch (output from 8/16 status selector mux)
  wire          status_z_8;     // last operation result was zero (8-bit)
  wire          status_z_16;    // last operation result was zero (16-bit)
  wire          status_e_8;     // last X and Y values were equal (8-bit)
  wire          status_e_8h;    // last X and Y values were equal (8-bit high byte)
  wire          status_e_16;    // last X and Y values were equal (16-bit)
  wire  [7:0]   status_8;       // status byte full of 8-bit-operation status information
  wire  [7:0]   status_16;      // status byte full of 16-bit-operation status information
  wire          branch_cond_met;  // branch condition is met
  wire          really_load_pc;   // request to load pc and branch condition is met
  wire  [2:0]   branch_cond;    // which branch condition to use
  wire          branch_negate;  // negate the branch condition
  wire          carry_in;       // carry input to the ALU, from a microcode bit
  wire  [3:0]   intvect;        // highest-priority interrupt flag currently active
  wire  [7:0]   intvect_shifted; // interrupt shifted by one, for driving XY
  wire  [7:0]   intflg;         // interrupt flags
  wire  [7:0]   intclr;         // clear interrupt flag
  wire          int_jmp;        // jump to IRQ area of microcode on next fetch/execute
  wire          int_or_dma_jmp; // jump to either IRQ or DMA area of microcode on next fetch/execute
  wire  [8:0]   int_or_dma_csaddr;  // address of interrupt and/or dma handler, whichever is needed next
                                    // 1 = interrupt handler, 2 = dma handler, 3 = both, so also DMA (since that's higher priority)
  wire          int_pending;    // at least one interrupt is waiting to be serviced
  wire          page_fault_pnp; // a page-not-present fault is in progress
  wire          page_fault_pnw; // a page-not-writable fault is in progress
  wire          page_fault;     // a page fault is in progress
  wire          rpt_zero;       // RPT register is zero
  wire          write_cse;      // microcode bit to activate CS write logic
  wire  [7:0]   cs_write_seq;           // steps of the control store write sequencer, controlled by a shift register
  wire          cs_write_in_progress;   // write sequencer has control of the CPU
  wire          cs_addr_from_dp;        // drive cs_addr from DP instead of the microcode sequencer
  wire          cs_write_seq_reset;     // reset the write sequencer to the idle state
  wire          cs_write;               // write a control store word
  wire          dma_req_ack;            // microcode is requesting dma_ack be brought high

  
  initial begin
    clk_main = 1'b0;
    _ext_reset = 1'b1;
    _por_reset = 1'b0;
    #10 _por_reset = 1'b1;
    #750000 $finish;
  end
  
  // Subsystem: Clock
  counter         #(.WIDTH(3))                  ctr_clk_divider(.clk(clk_main), .ce(1'b1), .reset(1'b0), .out(clk_divided), .load(1'b0), .preset(3'b000));
  flipflop_jk                                   flp_cs_ready(.clk(top_of_cs), .j(1'b1), .k(1'b0), .q(cs_ready));
  // controls whether the clock is directed to the control store (normal) or the control store writing counter (only when writing CS)
  // TODO: figure out the logic in real life with real prop delays
  andgate         #(.WIDTH(1))                  and_clk_cs(.a(clk_cs_mid), .b(~cs_write_in_progress), .y(clk_cs));
  
  // Subsystem: Control Store
  mux_94					mux_cs_sequenced(.reset(cs_mux_seq_reset), .sel(cs_mux_seq_sel), .a(cs_next_addr), .b(cs_next_addr_rptz), .c(reg_ir_padded), .d(int_or_dma_csaddr), .y(cs_addr_seq));
  mux_94					mux_cs_immediate(.reset(cs_mux_imm_reset), .sel(cs_mux_imm_sel), .a(cs_addr_init), .b(reg_dp[8:0]), .c(9'b000000000), .d(9'b000000000), .y(cs_addr_imm)); // TODO: use c for exception handling
  mux_21                                        mux_cs_clk_selector(.sel(cs_ready), .a(clk_quarter), .b(clk_main), .y(clk_cs_mid));
  counter         #(.WIDTH(9))                  ctr_cs_seq(.clk(clk_cs), .ce(~cs_ready), .reset(~_por_reset), .out(cs_addr_init), .load(1'b0), .preset(9'b000000000));
  flipflop_d      #(.WIDTH(9))                  flp_cs_addr_seq(.clk(clk_cs), .reset(~_por_reset | cs_mux_seq_reset), .in(cs_addr_seq), .out(cs_addr_seq_latched));
  microcode_eprom #(.ROM_FILE("microcode.bin")) rom_cs(._cs(1'b0), ._oe(1'b0), .addr(cs_addr_init), .data(cs_rom_data));
  microcode_ram                                 ram_cs(._cs(1'b0), ._oe(1'b0), ._w(cs_ram__w), .addr(cs_addr), .data_in(cs_ram_data_in), .data_out(cs_data_prelatch));
  flipflop_d      #(.WIDTH(24))                 flp_ram_cs_e(.clk(clk_cs_dly2), .reset(~(clk_cs && clk_cs_dly2)), .in(cs_data_prelatch[23:0]),  .out(cs_data[23:0]));
  flipflop_d      #(.WIDTH(40))                 flp_ram_cs_l(.clk(clk_cs_dly), .reset(1'b0), .in(cs_data_prelatch[63:24]), .out(cs_data[63:24]));
  mux_18                                        mux_branch_cond(.sel(branch_cond), .a(1'b1), .b(status[0]), .c(status[1]), .d(status[2]), .e(1'b0), .f(1'b0), .g(1'b0), .h(1'b0), .y(branch_cond_met));
  updowncounter #(.WIDTH(12))                   ctr_rpt(.clk(rpt_exec), .reset(~_reset), .out(rpt), .mode(rpt_mode ? 2'b01 : 2'b00), .preset(rpt_mdr_source), .cout(rpt_zero));
  shiftreg      #(.WIDTH(8))                    shr_cswrite(.clk(clk_main), .in(write_cse & ~cs_write_in_progress), .out(cs_write_seq));

  // Subsystem: Memory
  main_ram        #(.TYPE("Main"))              ram_main(._cs(1'b0), ._oe(~(~ram_write & ~addr_ram)), ._w(~((ram_write & ~addr_ram) | (dma_ack & fp_write & ~addr_ram))), .addr(bus_addr[19:0]), .data_in(bus_data), .data_out(bus_data_nondma_from_ram));
  main_eprom      #(.ROM_FILE("sysrom.bin"))    rom_boot(._cs(1'b0), ._oe(addr_rom), .addr(bus_addr[19:0]), .data(bus_data_nondma_from_rom));
  counter         #(.WIDTH(16))                 ctr_pc(.clk(clk_cs_dly2), .ce(inc_pc), .reset(~_reset), .out(pc), .load(really_load_pc), .preset(bus_z));
  mux_2x                                        mux_mar_l(.sel(mux_mar_src), .a(bus_z[7:0]),  .b(pc[7:0]),  .y(lat_mar[7:0]));
  mux_2x                                        mux_mar_h(.sel(mux_mar_src), .a(bus_z[15:8]), .b(pc[15:8]), .y(lat_mar[15:8]));
  mux_2x                                        mux_mdr_l(.sel(mux_mdr_src), .a(bus_z[7:0]),  .b(bus_data[7:0]), .y(lat_mdr[7:0]));
  mux_2x                                        mux_mdr_h(.sel(mux_mdr_src), .a(bus_z[15:8]), .b(bus_data[7:0]), .y(lat_mdr[15:8]));
  mux_2x                                        mux_mdr_byte(.sel(mdr_byte), .a(reg_mdr[7:0]), .b(reg_mdr[15:8]), .y(reg_mdr_8bit));
  main_ram      #(.WIDTH(16), .ADDR_WIDTH(12), .TYPE("Page Table"))  ram_paging(._cs(1'b0), ._oe(1'b0), ._w(~write_pte), .addr(pagetable_addr), .data_in(bus_z), .data_out(pagetable_out));
  mux_2x                                        mux_paging_l(.sel(flag_pe), .a(reg_mar[15:10]), .b(pagetable_out[7:0]),  .y(bus_addr_nondma[17:10]));
  mux_2x        #(.WIDTH(6))                    mux_paging_h(.sel(flag_pe), .a(6'b0),           .b(pagetable_out[13:8]), .y(bus_addr_nondma[23:18]));
  
  // Subsystem: Registers
  latch           #(.WIDTH(8))                  lat_reg_a_h(.clk(reg_a_load | ~op_16bit & ~reg_byte), .reset(1'b0), .in(bus_z[15:8]), .out(reg_a[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_b_h(.clk(reg_b_load | ~op_16bit & ~reg_byte), .reset(1'b0), .in(bus_z[15:8]), .out(reg_b[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_c_h(.clk(reg_c_load | ~op_16bit & ~reg_byte), .reset(1'b0), .in(bus_z[15:8]), .out(reg_c[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_d_h(.clk(reg_d_load | ~op_16bit & ~reg_byte), .reset(1'b0), .in(bus_z[15:8]), .out(reg_d[15:8]));
  latch           #(.WIDTH(8))                  lat_reg_a_l(.clk(reg_a_load | ~op_16bit & reg_byte), .reset(1'b0), .in(bus_z[7:0]), .out(reg_a[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_b_l(.clk(reg_b_load | ~op_16bit & reg_byte), .reset(1'b0), .in(bus_z[7:0]), .out(reg_b[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_c_l(.clk(reg_c_load | ~op_16bit & reg_byte), .reset(1'b0), .in(bus_z[7:0]), .out(reg_c[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_d_l(.clk(reg_d_load | ~op_16bit & reg_byte), .reset(1'b0), .in(bus_z[7:0]), .out(reg_d[7:0]));
  latch           #(.WIDTH(16))                 lat_reg_sp(.clk(reg_sp_load), .reset(1'b0), .in(bus_z), .out(reg_sp));
  latch           #(.WIDTH(16))                 lat_reg_dp(.clk(reg_dp_load), .reset(1'b0), .in(bus_z), .out(reg_dp));
  latch           #(.WIDTH(16))                 lat_reg_x(.clk(reg_x_load), .reset(1'b0), .in(lat_xy), .out(reg_x));
  latch           #(.WIDTH(16))                 lat_reg_y(.clk(reg_y_load), .reset(1'b0), .in(lat_xy), .out(reg_y));
  latch                                         lat_reg_ir(.clk(reg_ir_load), .reset(1'b0), .in(bus_data), .out(reg_ir));
  latch                                         lat_reg_rr(.clk(reg_rr_load), .reset(1'b0), .in(bus_data), .out(reg_rr));
  latch           #(.WIDTH(6))                  lat_reg_ptb(.clk(load_ptb), .reset(1'b0), .in(bus_z[5:0]), .out(reg_ptb));
  latch           #(.WIDTH(16))                 lat_reg_mar(.clk(reg_mar_load), .reset(1'b0), .in(lat_mar), .out(reg_mar));
  latch           #(.WIDTH(8))                  lat_reg_mdr_l(.clk(~(reg_mdr_load & ~mdr_byte)), .reset(1'b0), .in(lat_mdr[7:0]),  .out(reg_mdr[7:0]));
  latch           #(.WIDTH(8))                  lat_reg_mdr_h(.clk(~(reg_mdr_load & mdr_byte)), .reset(1'b0), .in(lat_mdr[15:8]), .out(reg_mdr[15:8]));
  demux_38                                      dmx_reg_load(.in(load_reg), .out(reg_load));
  demux_38                                      dmx_reg_load_ir(.in(reg_x_load_ir_src), .out(reg_load_via_ir));
  mux_2x          #(.WIDTH(6))                  mux_ptb(.sel(flag_m), .a(6'b000000), .b(reg_ptb), .y(ptb));
  flipflop_d    #(.WIDTH(1))                    flp_flag_ie(.clk(load_flag_ie), .reset(~_reset), .in(bus_z[0]), .out(flag_ie));
  flipflop_d    #(.WIDTH(1))                    flp_flag_m(.clk(load_flag_m), .reset(~_reset), .in(bus_z[1]), .out(flag_m));
  flipflop_d    #(.WIDTH(1))                    flp_flag_pe(.clk(load_flag_pe), .reset(~_reset), .in(bus_z[2]), .out(flag_pe));
  latch         #(.WIDTH(8))                    lat_reg_status(.clk(load_status), .reset(~_reset), .in(status_in), .out(status));

  latch         #(.WIDTH(16))                   lat_imm_xy(.clk(1'b0), .reset(xy_reset_imm), .in(xy_imm_val), .out(reg_imm_xy));
  latch         #(.WIDTH(16))                   lat_a_xy(.clk(1'b0), .reset(xy_reset_a), .in(reg_a), .out(reg_a_xy));
  latch         #(.WIDTH(16))                   lat_b_xy(.clk(1'b0), .reset(xy_reset_b), .in(reg_b), .out(reg_b_xy));
  latch         #(.WIDTH(16))                   lat_c_xy(.clk(1'b0), .reset(xy_reset_c), .in(reg_c), .out(reg_c_xy));
  latch         #(.WIDTH(16))                   lat_d_xy(.clk(1'b0), .reset(xy_reset_d), .in(reg_d), .out(reg_d_xy));
  latch         #(.WIDTH(16))                   lat_sp_xy(.clk(1'b0), .reset(xy_reset_sp), .in(reg_sp), .out(reg_sp_xy));
  latch         #(.WIDTH(16))                   lat_mar_xy(.clk(1'b0), .reset(xy_reset_mar), .in(reg_mar), .out(reg_mar_xy));
  latch         #(.WIDTH(16))                   lat_mdr_xy(.clk(1'b0), .reset(xy_reset_mdr), .in(reg_mdr), .out(reg_mdr_xy));
  latch         #(.WIDTH(16))                   lat_intvect_xy(.clk(1'b0), .reset(xy_reset_intvect), .in(intvect_shifted), .out(reg_intvect_xy));
  latch         #(.WIDTH(16))                   lat_mar_shr_xy(.clk(1'b0), .reset(xy_reset_mar_shr), .in(reg_mar_shr), .out(reg_mar_shr_xy));
  latch         #(.WIDTH(16))                   lat_mar_sex_xy(.clk(1'b0), .reset(xy_reset_mar_sex), .in(reg_mar_sex), .out(reg_mar_sex_xy));
  latch         #(.WIDTH(16))                   lat_mar_swab_xy(.clk(1'b0), .reset(xy_reset_mar_swab), .in(reg_mar_swab), .out(reg_mar_swab_xy));
  latch         #(.WIDTH(16))                   lat_dp_xy(.clk(1'b0), .reset(xy_reset_dp), .in(reg_dp), .out(reg_dp_xy));
  decoder_8                                     dcd_xy_a(.in(reg_xy_src[2:0]), .out(xy_reset_normal[7:0]), .enable(reg_xy_src[3]));
  decoder_8                                     dcd_xy_b(.in(reg_xy_src[2:0]), .out(xy_reset_normal[15:8]), .enable(~reg_xy_src[3]));
  decoder_8                                     dcd_xy_from_ir(.in(3'b000 | reg_ir[7:6]), .out(xy_reset_from_ir[4:1]), .enable(reg_xy_src != 4'b1111));
  decoder_8                                     dcd_xy_from_rr(.in(1'b0 | reg_rr[3:0]), .out(xy_reset_from_rr[4:1]), .enable(reg_xy_src != 4'b1110));

  // Subsystem: ALU
  magcomp                                       mc_status_l(.a(reg_x[7:0]), .b(reg_y[7:0]), .eq(status_e_8));
  magcomp                                       mc_status_h(.a(reg_x[15:8]), .b(reg_y[15:8]), .eq(status_e_8h));
  alu_16                                        alu(.mode(alu_mode), .alu_op(alu_op), .c_in(carry_in), .x(reg_x), .y(reg_y), .z(bus_z), .c_out8(alu_cout8), .c_out16(alu_cout16));
  mux_2x                                        mux_status(.sel(op_16bit), .a(status_8), .b(status_16), .y(status_in));

  // Subsystem: Interrupts
  prienc_8                                      pri_intvect(.clk(1'b0), .a(intflg[7:0]), .y(intvect));
  latch         #(.WIDTH(1))                    lat_int_0(.clk(int[0]), .reset(intclr[0]), .in(1'b1), .out(intflg[0]));
  latch         #(.WIDTH(1))                    lat_int_1(.clk(int[1]), .reset(intclr[1]), .in(1'b1), .out(intflg[1]));
  latch         #(.WIDTH(1))                    lat_int_2(.clk(int[2]), .reset(intclr[2]), .in(1'b1), .out(intflg[2]));
  latch         #(.WIDTH(1))                    lat_int_3(.clk(int[3]), .reset(intclr[3]), .in(1'b1), .out(intflg[3]));
  latch         #(.WIDTH(1))                    lat_int_4(.clk(int[4]), .reset(intclr[4]), .in(1'b1), .out(intflg[4]));
  latch         #(.WIDTH(1))                    lat_int_5(.clk(int[5]), .reset(intclr[5]), .in(1'b1), .out(intflg[5]));
  latch         #(.WIDTH(1))                    lat_int_6(.clk(int[6]), .reset(intclr[6]), .in(1'b1), .out(intflg[6]));
  latch         #(.WIDTH(1))                    lat_int_7(.clk(int[7]), .reset(intclr[7]), .in(1'b1), .out(intflg[7]));
  
  // Subsystem: DMA
  latch         #(.WIDTH(1))                    lat_dma_req(.clk(clk_main), .reset(1'b0), .in(dma_req), .out(dma_req_latched));
  latch         #(.WIDTH(1))                    lat_dma_ack(.clk(~dma_req_ack), .reset(~dma_req_latched), .in(1'b1), .out(dma_ack));
  latch         #(.WIDTH(24))                   lat_dma_addr(.clk(1'b0), .reset(~dma_ack), .in(fp_bus_addr), .out(bus_addr_from_dma));
  latch         #(.WIDTH(8))                    lat_dma_data(.clk(1'b0), .reset(~dma_ack), .in(fp_bus_data), .out(bus_data_from_dma));
  latch         #(.WIDTH(24))                   lat_nondma_addr(.clk(1'b0), .reset(dma_ack), .in(bus_addr_nondma), .out(bus_addr_from_nondma));
  latch         #(.WIDTH(8))                    lat_nondma_data(.clk(1'b0), .reset(dma_ack), .in(bus_data_nondma_from_ram | bus_data_nondma_from_rom | bus_data_nondma_from_mdr), .out(bus_data_from_nondma));
  // during a RAM write, MDR has to drive the data bus. Otherwise, output from RAM/ROM/etc. drives the data bus via the non-dma databus.
  latch         #(.WIDTH(8))                    lat_mdr_data(.clk(1'b0), .reset(~ram_write), .in(reg_mdr_8bit), .out(bus_data_nondma_from_mdr));

  // edge-sensitive microcode signals
  assign write_pte = cs_data[0] & cs_ready; // TODO: make the cs latches only latch once cs_ready
  assign reg_mdr_load = cs_data[1];
  // bit 2 is currently available
  assign reg_mar_load = ~cs_data[3];
  assign reg_ir_load = ~cs_data[4];
  assign reg_rr_load = ~cs_data[5];
  // bit 6 is currentl available
  assign load_reg = cs_data[9:7];
  assign reg_x_load = ~cs_data[10];
  assign reg_y_load = ~cs_data[11];
  assign load_ptb = ~cs_data[13];
  assign rpt_exec = cs_data[14];
  assign load_status = ~cs_data[15];
  assign ram_write = cs_data[17];
  assign load_flag_pe = ~cs_data[18];
  assign load_flag_m = ~cs_data[19];
  assign load_flag_ie = ~cs_data[20];
  
  // level-sensitive microcode signals
  assign cs_next_addr = cs_data[32:24];
  assign mux_mar_src = cs_data[33];
  assign mux_mdr_src = cs_data[34];
  assign alu_mode = cs_data[35];
  assign alu_op = cs_data[39:36];
  assign reg_xy_src = cs_data[43:40];
  assign carry_in = cs_data[44];
  assign op_16bit = cs_data[45];
  assign branch_cond = cs_data[48:46];
  assign xy_imm_lsb = cs_data[50:49];
  assign rpt_mode = cs_data[51];
  assign reg_byte = cs_data[52];
  assign ram_read = cs_data[53];
  assign rptz_next_nibble = cs_data[57:54];
  assign write_cse = cs_data[58] & cs_ready;
  assign inc_pc = cs_data[59];
  assign load_pc = cs_data[60];
  assign mdr_byte = cs_data[61];
  assign branch_negate = cs_data[62];
  assign dma_req_ack = cs_data[63];
  
  assign clk_half = clk_divided[1];
  assign clk_quarter = clk_divided[2];
  // TODO: these were bumped from 8 to 10 to accommodate chained CS muxes, try
  // to figure out if we can lower them again
  assign #10 clk_cs_dly = clk_cs;
  assign #10 clk_cs_dly2 = clk_cs_dly;
  assign top_of_cs = cs_addr == 9'b111111111;
  assign processor_halted = cs_ready & cs_addr == 9'hFE;
  assign _reset = _ext_reset & _por_reset & cs_ready;
  assign cs_ram__w = (cs_ready ~| clk_cs) | cs_write;
  assign reg_abcd[15:0]  = reg_a;
  assign reg_abcd[31:16] = reg_b;
  assign reg_abcd[47:32] = reg_c;
  assign reg_abcd[63:48] = reg_d;
  // this changes the arrangement of the control store data input after startup
  // won't be required in real life, this is just needed so the registers stay all x until set
  // as required by the unit testing framework
  assign cs_ram_data_in = (cs_ready ? cs_rom_data | reg_abcd : cs_rom_data);
  assign reg_a_load = reg_load[1] & reg_load_via_ir[1];
  assign reg_b_load = reg_load[2] & reg_load_via_ir[3];
  assign reg_c_load = reg_load[3] & reg_load_via_ir[5];
  assign reg_d_load = reg_load[4] & reg_load_via_ir[7];
  assign reg_sp_load = reg_load[5];
  assign reg_dp_load = reg_load[6];
  assign reg_x_load_ir = ~reg_load[7];
  assign addr_rom = ~(bus_addr[23:20] == 4'b0000);
  assign addr_device = ~(bus_addr[23:20] == 4'b0111);
  assign addr_ram = ~(addr_rom & addr_device);
  assign bus_addr_nondma[9:0] = reg_mar[9:0];  // the rest of the bus goes through the paging mechanism
  assign reg_x_load_ir_src[0] = reg_x_load_ir;
  assign reg_x_load_ir_src[1] = reg_x_load_ir & reg_ir[6];
  assign reg_x_load_ir_src[2] = reg_x_load_ir & reg_ir[7];
  assign pagetable_addr[5:0] = reg_mar[15:10];
  assign pagetable_addr[11:6] = ptb[5:0];
  assign page_status_writable = pagetable_out[14];
  assign page_status_present = pagetable_out[15];
  assign flags[0] = flag_ie;
  assign flags[1] = flag_m;
  assign flags[2] = flag_pe;
  assign flags[7:3] = 5'b00000;
  assign status_z_8  = reg_byte ? (bus_z[15:8] == 8'd0) : (bus_z[7:0] == 8'd0);
  assign status_z_16 = (bus_z == 16'd0);
  assign status_e_16 = status_e_8 && status_e_8h;
  assign status_8[0]  = status_z_8;
  assign status_16[0] = status_z_16;
  assign status_8[1]  = alu_cout8;
  assign status_16[1] = alu_cout16;
  assign status_8[2]  = status_e_8;
  assign status_16[2] = status_e_16;
  assign really_load_pc = (load_pc & branch_cond_met) ^ branch_negate;
  assign xy_imm_val[1:0] = xy_imm_lsb;
  assign xy_imm_val[15:2] = 14'b00_0000_0000_0000;
  assign int_pending = ~(intvect[3:0] == 4'b0000);
  assign page_fault_pnp = (ram_read | ram_write) & flag_pe & ~page_status_present;
  assign page_fault_pnw = ram_write & flag_pe & ~page_status_writable;
  assign page_fault = page_fault_pnp | page_fault_pnw;
  assign int_jmp = int_pending & flag_ie;
  assign int_or_dma_jmp = int_jmp | dma_req_latched;
  assign int_or_dma_csaddr[0] = int_jmp;
  assign int_or_dma_csaddr[1] = dma_req_latched;
  assign int_or_dma_csaddr[8:2] = 7'b0000000;
  assign cs_next_addr_rptz[8:4] = cs_next_addr[8:4];
  assign cs_next_addr_rptz[3:0] = rptz_next_nibble;
  assign rpt_mdr_source[11:8] = op_16bit ? reg_mdr[11:8] : 4'b0000;
  assign rpt_mdr_source[7:0] = reg_mdr[7:0];
  assign reg_mar_shr = reg_mar >> 1;
  assign reg_mar_sex[7:0] = reg_mar[7:0];
  assign reg_mar_sex[8]  = reg_mar[7];
  assign reg_mar_sex[9]  = reg_mar[7];
  assign reg_mar_sex[10] = reg_mar[7];
  assign reg_mar_sex[11] = reg_mar[7];
  assign reg_mar_sex[12] = reg_mar[7];
  assign reg_mar_sex[13] = reg_mar[7];
  assign reg_mar_sex[14] = reg_mar[7];
  assign reg_mar_sex[15] = reg_mar[7];
  assign reg_mar_swab[7:0] = reg_mar[15:8];
  assign reg_mar_swab[15:8] = reg_mar[7:0];
  assign reg_ir_padded[7:0] = reg_ir;
  assign reg_ir_padded[8] = 1'b0;
  assign intvect_shifted[1:0] = 2'b00;
  assign intvect_shifted[5:2] = intvect;
  assign intvect_shifted[7:6] = 2'b00;

  // reworked CS logic
  // immediate CS mux (for things that have to jump microcode out-of-sequence)
  assign cs_mux_imm_sel[0] = cs_addr_from_dp;
  assign cs_mux_imm_sel[1] = 1'b0;
  assign cs_mux_imm_reset = cs_ready & ~cs_addr_from_dp; // keep the immediate cs mux in reset unless we're doing the pre-IPL ROM->RAM load or doing a CS write
  assign cs_mux_seq_reset = ~cs_mux_imm_reset;

  // sequenced CS mux (for things that jump microcode in a planned way during
  // the fetch part of the instruction cycle)
  assign cs_mux_sel_ir = ~int_or_dma_jmp & cs_next_addr == 9'b000000000;
  assign cs_mux_sel_rptz = rptz_next_nibble != 4'b0000 && rpt_zero;
  assign cs_mux_sel_intdma = int_or_dma_jmp & cs_next_addr == 9'b000000000;	// we only do an int/dma jmp when we're requested to load cs_next "from IR"
  assign cs_mux_sel_nextaddr = ~cs_mux_sel_ir & ~cs_mux_sel_rptz & ~cs_mux_sel_intdma;
  assign cs_mux_seq_sel[0] = cs_mux_sel_rptz | cs_mux_sel_intdma;
  assign cs_mux_seq_sel[1] = cs_mux_sel_ir | cs_mux_sel_intdma;

  assign cs_addr = cs_addr_seq_latched | cs_addr_imm;

  
  // FIXME: temporary until proper clear/reset logic is worked out
  assign intclr[0] = ~_por_reset;
  assign intclr[1] = ~_por_reset;
  assign intclr[2] = ~_por_reset;
  assign intclr[3] = ~_por_reset;
  assign intclr[4] = ~_por_reset;
  assign intclr[5] = ~_por_reset;
  assign intclr[6] = ~_por_reset;
  assign intclr[7] = ~_por_reset;

  // driver reset signals that control which register is driving XY
  assign xy_reset[15:5] = xy_reset_normal[15:5];
  assign xy_reset[4:1] = xy_reset_normal[4:1] & xy_reset_from_ir[4:1] & xy_reset_from_rr[4:1];
  assign xy_reset[0] = xy_reset_normal[0];
  assign xy_reset_imm = xy_reset[0];
  assign xy_reset_a = xy_reset[1];
  assign xy_reset_b = xy_reset[2];
  assign xy_reset_c = xy_reset[3];
  assign xy_reset_d = xy_reset[4];
  assign xy_reset_sp = xy_reset[5];
  assign xy_reset_mar = xy_reset[6];
  assign xy_reset_mdr = xy_reset[7];
  assign xy_reset_intvect = xy_reset[8];
  assign xy_reset_mar_shr = xy_reset[9];
  assign xy_reset_mar_sex = xy_reset[10];
  assign xy_reset_mar_swab = xy_reset[11];
  assign xy_reset_dp = xy_reset[12];
  
  // this is a wired-OR in the actual hardware
  assign lat_xy = reg_imm_xy | reg_a_xy | reg_b_xy | reg_c_xy | reg_d_xy | reg_sp_xy | reg_mar_xy | reg_mdr_xy | reg_intvect_xy | reg_mar_shr_xy | reg_mar_sex_xy | reg_mar_swab_xy | reg_dp_xy;
  
  // this is also a wired-OR in the actual hardware
  assign bus_addr = bus_addr_from_dma | bus_addr_from_nondma;
  assign bus_data = bus_data_from_dma | bus_data_from_nondma;

  // control store write sequencer, this takes over the CPU briefly when doing a control store write
  assign cs_write_in_progress = (cs_write_seq[0] | cs_write_seq[1] | cs_write_seq[2] | cs_write_seq[3]);
  assign cs_addr_from_dp = (cs_write_seq[1] || cs_write_seq[2] || cs_write_seq[3]);
  assign cs_write = cs_write_seq[2];
  assign cs_write_seq_reset = cs_write_seq[4];
  
  always begin
    #40 clk_main = ~clk_main; // 25MHz main clock
  end
  
  always @ (clk_main) begin
    if(cs_ready) begin
      $display("resets:   m:%0b e:%0b p:%0b c:%0b", _reset, _ext_reset, _por_reset, cs_ready);
      $display("cs_addr:  0x%0h", cs_addr);
      $display("cs_data:  %08b_%08b_%08b_%08b", cs_data[31:24], cs_data[23:16], cs_data[15:8], cs_data[7:0]);
      $display("pc:       0x%06X", pc);
      $display("flags:    %08b", flags);
      $display("status:   %08b", status);
      $display("ptb:      %06b", ptb);
      $display("bus_addr: %08b_%08b_%08b", bus_addr[23:16], bus_addr[15:8], bus_addr[7:0]);
      $display("bus_data: %0b (0x%0h)", bus_data, bus_data);
      $display("rpt:      %04b_%08b (0x%0h)", rpt[11:8], rpt[7:0], rpt);
      $display("reg_ir:   %0b", reg_ir);
      $display("reg_rr:   %0b", reg_rr);
      $display("reg_mar:  %08b_%08b (0x%0h)", reg_mar[15:8], reg_mar[7:0], reg_mar);
      $display("reg_mdr:  %08b_%08b (0x%0h)", reg_mdr[15:8], reg_mdr[7:0], reg_mdr);
      $display("reg_a:    %08b_%08b (0x%0h)", reg_a[15:8],  reg_a[7:0],  reg_a);
      $display("reg_b:    %08b_%08b (0x%0h)", reg_b[15:8],  reg_b[7:0],  reg_b);
      $display("reg_c:    %08b_%08b (0x%0h)", reg_c[15:8],  reg_c[7:0],  reg_c);
      $display("reg_d:    %08b_%08b (0x%0h)", reg_d[15:8],  reg_d[7:0],  reg_d);
      $display("reg_sp:   %08b_%08b (0x%0h)", reg_sp[15:8], reg_sp[7:0], reg_sp);
      $display("reg_dp:   %08b_%08b (0x%0h)", reg_dp[15:8], reg_dp[7:0], reg_dp);
      $display("reg_x:    %08b_%08b (0x%0h)", reg_x[15:8],  reg_x[7:0],  reg_x);
      $display("reg_y:    %08b_%08b (0x%0h)", reg_y[15:8],  reg_y[7:0],  reg_y);
      $display("bus_z:    %08b_%08b (0x%0h)", bus_z[15:8],  bus_z[7:0],  bus_z);
      $display("lat_xy:   %0b (0x%0h)", lat_xy, lat_xy);
      $display("xy_src:   %04b", reg_xy_src);
      $display("reg_x_load: %0b", reg_x_load);
      $display("selected: rom: %0b dev: %0b ram: %0b\n", addr_rom, addr_device, addr_ram);
      if(^cs_data == 1'b1 || ^cs_data == 1'b0) begin
      end else begin
        if(cs_addr != 9'hFF) begin
          $display("\nILLEGAL MICROINSTRUCTION EXECUTED (pc=0x%06X cs_addr=0x%06X time=%0d)", pc, cs_addr, $stime);
          $finish;
        end
      end
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
