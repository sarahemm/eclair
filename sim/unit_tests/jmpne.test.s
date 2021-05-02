// set up a and b with the same values
ldi a, 0xAA55
ldi b, 0xAA55
// compare the values
cmp a, b
// if they're not equal, loop forever
// (which will then fail the test)
jmpne -2
// expect: pc=0x00000a
// re-load b with a value that now doesn't match a
ldi b, 0x55AA
// compare the values again
cmp a, b
// jump over the next few instructions if they match
jmpne   10
.org 0x013
halt    // should jump over this
halt    // should jump over this
.org 0x01D
// should get here and halt if all is well
halt
// expect: pc=0x00001d
.org 0x01E
halt    // should never get here
