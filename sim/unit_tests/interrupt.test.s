// tell the test suite we need the interrupt harness, which triggers an
// interrupt after a little while
// harnesstype: int

// reset vector
jmp 13

// IRQ1 vector
.org 4
jmp 193

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
// these are used to make sure that regs are all pushed/popped right
ldi        dp, 0x0002
ldi        a,  0xCAFE
ldi        b,  0xC0DE
ldi        c,  0xFABA
ldi        d,  0xACDC
// this is a flag that lets the loop know we've been in the ISR
st         a,  0x0440
cir
jmp        31

// loop forever (until we get an interrupt)
// this could be "halt" except that the test framework uses halting
// as an indication that the test is complete.
.org 100
ld      c, 0x0440
jmpz    194
jmp     -9

// IRQ1 ISR
.org 200
// DP
// expect: ram[0x100002]=0x00
// expect: ram[0x100003]=0x2
// A
// expect: ram[0x100004]=0xca
// expect: ram[0x100005]=0xfe
// B
// expect: ram[0x100006]=0xc0
// expect: ram[0x100007]=0xde
// C
// we don't test C as it's needed for testing the ISR flag in the loop
// D
// expect: ram[0x10000a]=0xac
// expect: ram[0x10000b]=0xdc
st         a,  0x0440   // zero out the "we hit the ISR" flag
// clear everything so we can confirm it's restored by reti later
xor        a,  a
xor        b,  b
xor        c,  c
xor        d,  d
cir
reti

.org 300
// check that registers all got restored by reti
// expect: reg_dp=00000000_00000010
// expect: reg_a=11001010_11111110
// expect: reg_b=11000000_11011110
// expect: reg_d=10101100_11011100
halt
