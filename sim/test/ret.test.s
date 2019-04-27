ldi flags,  0x00  // system mode, paging off
// set up the system page table (so we can get to RAM)
// page table address 0 = 00000000_00000000 (first block of ROM)
.org 0x002
ldi a,     0x0000
ldi d,     0x0000
wrpte
// page table address 1 = 00000100_00000000 (first block of RAM)
.org 0x009
ldi a,     0x0400
ldi d,     0x0401
wrpte
// set up the stack pointer to the bottom of RAM and enable paging
.org 0x010
ldi sp,    0x0400
ldi flags, 0x05  // system mode, paging on
.org 0x015
call        0x0019
.org 0x018
halt        // should jump over here, then return here from @019
// expect: pc=0x000018
// expect: reg_sp=00000100_00000000
// expect: ram[0x100000]=0x00
// expect: ram[0x100001]=0x18
.org 0x019
ret         // should return to @018
halt        // should jump away before here, never get here

