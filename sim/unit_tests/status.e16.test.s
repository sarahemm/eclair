// immediate load two 16s
ldi a,   0x5A5A
ldi b,   0xA5A5
// add the two 16s and make sure E is unset
add a, b
// expect: status=XXXXX0XX
// immediate load a new matching 16
ldi a, 0xA5A5
// add the two 16s and make sure E is now set
add a, b
// expect: status=XXXXX1XX
halt
