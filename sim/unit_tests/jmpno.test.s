ldi   a, 0xFFFF
ldi   b, 0x0004
add   a, b
jmpno 0x0007
// expect: pc=0x00000a
ldi   a, 0xFFF0
add   a, b
jmpno 0x001D

.org 0x013
halt    // should jump over this
halt    // should jump over this

.org 0x01D
halt
// expect: pc=0x00001d

.org 0x01E
halt    // should never get here
