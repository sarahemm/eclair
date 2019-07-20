// low byte must be initialized to something (doesn't matter what)
// this is due to a simulator quirk
ldi a, 0x0FFF
ldi b, 0x14FF
cir
add ah, bh
cir
// expect: status=XXXXXX0X
// expect: reg_a=00100011_11111111
// expect: reg_b=00010100_11111111
ldi a, 0xFE00
ldi b, 0x1400
cir
add ah, bh
cir
// expect: status=XXXXXX1X
// expect: reg_a=00010010_00000000
// expect: reg_b=00010100_00000000
halt

// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
