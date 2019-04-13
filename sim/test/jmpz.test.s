ldi al, 0x0F
jmpz    0x0007
ldi al, 0x00
.org 0x007
// expect: bus_z=00000000_00000000
jmpz    0x000D
.org 0x00A
halt    // should jump over this
halt    // should jump over this
.org 0x00D
halt
// expect: pc=0x00000d
.org 0x00E
halt    // should never get here

