ldi bl, 0xFF
ldi cl, 0xFF
sub bl, cl
// expect: reg_b=xxxxxxxx_00000000
// expect: reg_c=xxxxxxxx_11111111

.org 0x006
ldi bl, 0xFF
ldi cl, 0x00
sub bl, cl
// expect: reg_b=xxxxxxxx_11111111
// expect: reg_c=xxxxxxxx_00000000

.org 0x00C
ldi bl, 0x18
ldi cl, 0x14
sub bl, cl
// expect: reg_b=xxxxxxxx_00000100
// expect: reg_c=xxxxxxxx_00010100

.org 0x012
ldi bl, 0x03
ldi cl, 0x01
sub bl, cl
// expect: reg_b=xxxxxxxx_00000010
// expect: reg_c=xxxxxxxx_00000001

.org 0x017
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
