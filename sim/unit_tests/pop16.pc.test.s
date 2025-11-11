.org 0x000
ldi flags,  0x00  // system mode, paging off
// set up the system page table (so we can get to RAM)
// page table address 0 = 00000000_00000000 (first block of ROM)
.org 0x002
ldi a,      0x0000
ldi d,      0x0000
wrpte
// page table address 1 = 00000100_00000000 (first block of RAM)
.org 0x009
ldi a,      0xC400
ldi d,      0x0401
wrpte
// set up the stack pointer to the bottom of RAM and enable paging
.org 0x010
ldi sp,     0x0400
ldi flags,  0x05    // system mode, paging on
.org 0x015
push16i     0x0000  // just an extra word to make sure we pop to the right place
.org 0x018
push16i     0x001D  // this is where we pop16.pc to
// expect: reg_sp=00000100_00000100
// expect: ram[0x100000]=0x0
// expect: ram[0x100001]=0x0
// expect: ram[0x100002]=0x0
// expect: ram[0x100003]=0x1d
.org 0x01B
pop pc
.org 0x01C
halt
.org 0x01D
halt

// expect: pc=0x00001d
// expect: reg_sp=00000100_00000010
