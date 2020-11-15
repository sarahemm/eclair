ldi cl, 0xFF
ldi dl, 0xFF
sub cl, dl
// expect: reg_c=xxxxxxxx_00000000
// expect: reg_d=xxxxxxxx_11111111

.org 0x006
ldi cl, 0xFF
ldi dl, 0x00
sub cl, dl
// expect: reg_c=xxxxxxxx_11111111
// expect: reg_d=xxxxxxxx_00000000

.org 0x00C
ldi cl, 0x18
ldi dl, 0x14
sub cl, dl
// expect: reg_c=xxxxxxxx_00000100
// expect: reg_d=xxxxxxxx_00010100

.org 0x012
ldi cl, 0x03
ldi dl, 0x01
sub cl, dl
// expect: reg_c=xxxxxxxx_00000010
// expect: reg_d=xxxxxxxx_00000001

.org 0x017
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
