ldi al, 0xFE
ldi bl, 0x01
add al, bl
// expect: status=XXXXXX0X
ldi al, 0xFF
add al, bl
// expect: status=XXXXXX1X
halt
