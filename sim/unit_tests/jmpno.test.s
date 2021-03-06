// set up a and b with a value that will overflow if added
ldi   a, 0xFFFF
ldi   b, 0x0004
add   a, b
// jump back to the add if no overflow, which will loop forever
// (and therefore fail the test)
jmpno -2
// expect: pc=0x00000a
// load a new value that won't overflow if we add them
ldi   a, 0xFFF0
add   a, b
// make sure we jump over the next few instructions now that no overflow
jmpno 10

.org 0x013
halt    // should jump over this
halt    // should jump over this

.org 0x01D
// should get here and halt if all is well
halt
// expect: pc=0x00001d

.org 0x01E
halt    // should never get here
