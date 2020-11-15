ldi dl, 0xFF
ldi al, 0xFF
sub dl, al
// expect: reg_d=xxxxxxxx_00000000
// expect: reg_a=xxxxxxxx_11111111

.org 0x006
ldi dl, 0xFF
ldi al, 0x00
sub dl, al
// expect: reg_d=xxxxxxxx_11111111
// expect: reg_a=xxxxxxxx_00000000

.org 0x00C
ldi dl, 0x18
ldi al, 0x14
sub dl, al
// expect: reg_d=xxxxxxxx_00000100
// expect: reg_a=xxxxxxxx_00010100

.org 0x012
ldi dl, 0x03
ldi al, 0x01
sub dl, al
// expect: reg_d=xxxxxxxx_00000010
// expect: reg_a=xxxxxxxx_00000001

.org 0x017
halt

// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
