ldi al, 0x00
jmpnz   2
ldi al, 0x0F
.org 0x007
// expect: bus_z=00000000_00001111
jmpnz   3
.org 0x00A
halt    // should jump over this
halt    // should jump over this
.org 0x00D
halt
// expect: pc=0x00000d
.org 0x00E
halt    // should never get here

