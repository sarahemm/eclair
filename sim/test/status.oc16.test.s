// immediate load two 16s
ldi a, 0xFFFE
ldi b, 0x0001
// add the two 16s and make sure OC is unset
add a, b
// expect: status=XXXXXX0X
// immediate load a larger 16
ldi a, 0xFFFF
// add the two 16s and make sure OC is now set
add a, b
// expect: status=XXXXXX1X
halt
