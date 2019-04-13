// immediate load two 16s and make sure Z reacts properly
ldi a, 0x55AA
// expect: status=XXXXXXX0
ldi b, 0x0000
// expect: status=XXXXXXX1
// add the two 16s and make sure Z is unset
add a, b
// expect: status=XXXXXXX0
// change register A so that the value will be zero
ldi a, 0x0000
// expect: status=XXXXXXX1
// add the two zeroes together, make sure at Z is set
add a, b
// expect: status=XXXXXXX1
halt
