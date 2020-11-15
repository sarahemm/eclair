ldi flags, 0x02  // switches to user mode but leaves paging off
// set up page table block 1 (actually used to page)
// pagetable address 0x0000 is set to 0x0001, with the
// "page present" and "page writeable" bits set
ldi ptb, 0x01
ldi a,   0xC001
ldi d,   0x0000
wrpte
// second page table block, (used to make sure we can have two blocks
// that don't interfere with each other)
.org 0x00B
ldi ptb, 0x02
ldi a,   0x0002
ldi d,   0x0000
wrpte
// switch back to PTB 1, enable paging, and make sure the address jumps
.org 0x014
ldi ptb,   0x01
ldi flags, 0x06  // enables paging, which means the next code runs from 0x418
halt
.org 0x417        // pc: 017
halt      // should jump over this
halt

// expect: pc=0x000018
// expect: bus_addr=00000000_00000100_00011000
