ldi a, 0xAA55
ldi b, 0x55AA
cmp a, b
jmpe   0x0007
// expect: pc=0x00000a
ldi b, 0xAA55
cmp a, b
jmpe   0x001D
.org 0x013
halt    // should jump over this
halt    // should jump over this
.org 0x01D
halt
// expect: pc=0x00001d
.org 0x01E
halt    // should never get here
