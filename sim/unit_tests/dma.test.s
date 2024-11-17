// tell the test suite we need the dma harness, which requests DMA after awhile
// harnesstype: dma

// set up paging
ldi flags, 0x02  // switches to user mode but leaves paging off
ldi ptb,   0x00
// page table address 0 = 00000000_00000000 (first block of ROM)
ldi d,     0x0000
ldi a,     0x0000
wrpte
// page table address 1 = 00000100_00000000 (first block of RAM)
ldi d,     0x0400
ldi a,     0x0400
wrpte
ldi d,     0x0800
ldi a,     0x3c00
wrpte
// set the stack pointer to the bottom of RAM
ldi sp,    0x0400
// set the data pointer in RAM too
ldi dp,    0x0440
ldi flags, 0x06  // enables paging, code continues running normally since 0x0000 is still ROM

// put some non-zero data into the test location in RAM
// the test harness will use DMA to zero this out if all goes well
st      a,  0x0000

// loop until the data at 0x0440 (0x0000 relative to DP) is zero
ld      c, 0x0000   // 3 bytes
jmpz    130         // 3 bytes
jmp     -9          // 3 bytes

.org 130
halt
