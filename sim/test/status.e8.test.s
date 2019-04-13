ldi al, 0x55
ldi bl, 0xAA
add al, bl
// expect: status=XXXXX0XX
ldi al, 0xAA
add al, bl
// expect: status=XXXXX1XX
halt
