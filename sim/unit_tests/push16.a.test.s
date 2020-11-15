ldi flags,  0x00  // system mode, paging off
// set up the system page table (so we can get to RAM)
// page table address 0 = 00000000_00000000 (first block of ROM)
.org 0x002
ldi a,     0x8000
ldi d,     0x0000
wrpte
// page table address 1 = 00000100_00000000 (first block of RAM)
.org 0x009
ldi a,     0xC400
ldi d,     0x0401
wrpte
// set up the stack pointer to the bottom of RAM and enable paging
.org 0x010
ldi sp,    0x0400
ldi flags, 0x05  // system mode, paging on
.org 0x015
// load a test value into a
ldi a, 0xABED
push a
.org 0x019
halt

// expect: pc=0x000019
// expect: reg_sp=00000100_00000010
// expect: ram[0x100000]=0xab
// expect: ram[0x100001]=0xed
