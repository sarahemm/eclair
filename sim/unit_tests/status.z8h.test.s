// low bytes have to be initialized to something (anything) due to
// a simulator quirk, even though we're not using them
ldi al, 0xFF
ldi bl, 0xFF
// immediate load two 8s and make sure Z reacts properly
ldi ah, 0xAA
// expect: status=XXXXXXX0
ldi bh, 0x00
// expect: status=XXXXXXX1
// add the two and make sure Z is unset
add ah, bh
// expect: status=XXXXXXX0
// change register A so that the value will be zero
ldi ah, 0x00
// expect: status=XXXXXXX1
// add the two and make sure Z is set
add ah, bh
// expect: status=XXXXXXX1
halt
