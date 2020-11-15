// low byte must be initialized to something (doesn't matter what)
// this is due to a simulator quirk
ldi b, 0x18FF
ldi c, 0x14FF
cir
sub bh, ch
cir
// expect: status=XXXXXX1X
// expect: reg_b=00000100_11111111
// expect: reg_c=00010100_11111111
ldi b, 0x1400
ldi c, 0x1800
cir
sub bh, ch
cir
// expect: status=XXXXXX0X
// expect: reg_b=11111100_00000000
// expect: reg_c=00011000_00000000
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
