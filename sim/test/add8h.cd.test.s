// low byte must be initialized to something (doesn't matter what)
// this is due to a simulator quirk
ldi c, 0x0FFF
ldi d, 0x14FF
cir
add ch, dh
cir
// expect: status=XXXXXX0X
// expect: reg_c=00100011_11111111
// expect: reg_d=00010100_11111111
ldi c, 0xFE00
ldi d, 0x1400
cir
add ch, dh
cir
// expect: status=XXXXXX1X
// expect: reg_c=00010010_00000000
// expect: reg_d=00010100_00000000
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
