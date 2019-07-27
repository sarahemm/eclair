// reset vector
jmp 16

// IRQ1 vector
.org 4
jmp 200

// set up paging
.org 16
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
ldi flags, 0x06  // enables paging, code continues running normally since 0x0000 is still ROM
ei
jmp        100

// loop forever (until we get an interrupt)
// this could be "halt" except that the test framework uses halting
// as an indication that the test is complete.
.org 100
jmp 100

// IRQ1 ISR
.org 200
ldi a, 0xCAFE
ldi d, 0xDDFD
reti

halt
