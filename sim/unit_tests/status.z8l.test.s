// immediate load two 8s and make sure Z reacts properly
ldi al, 0xAA
// expect: status=XXXXXXX0
ldi bl, 0x00
// expect: status=XXXXXXX1
// add the two and make sure Z is unset
add al, bl
// expect: status=XXXXXXX0
// change register A so that the value will be zero
ldi al, 0x00
// expect: status=XXXXXXX1
// add the two and make sure Z is set
add al, bl
// expect: status=XXXXXXX1
halt
