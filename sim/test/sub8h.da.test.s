// low byte must be initialized to something (doesn't matter what)
// this is due to a simulator quirk
ldi d, 0x18FF
ldi a, 0x14FF
cir
sub dh, ah
cir
// expect: status=XXXXXX1X
// expect: reg_d=00000100_11111111
// expect: reg_a=00010100_11111111
ldi d, 0x1400
ldi a, 0x1800
cir
sub dh, ah
cir
// expect: status=XXXXXX0X
// expect: reg_d=11111100_00000000
// expect: reg_a=00011000_00000000
halt

// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
