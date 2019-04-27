ldi al, 0xFF
ldi bl, 0xFF
// expect: reg_a=xxxxxxxx_11111111
// expect: reg_b=xxxxxxxx_11111111
sub al, bl
// expect: reg_a=xxxxxxxx_00000000
// expect: reg_b=xxxxxxxx_11111111

.org 0x006
ldi al, 0xFF
ldi bl, 0x00
// expect: reg_a=xxxxxxxx_11111111
// expect: reg_b=xxxxxxxx_00000000
sub al, bl
// expect: reg_a=xxxxxxxx_11111111
// expect: reg_b=xxxxxxxx_00000000

.org 0x00C
ldi al, 0x18
ldi bl, 0x14
// expect: reg_a=xxxxxxxx_00011000
// expect: reg_b=xxxxxxxx_00010100
sub al, bl
// expect: reg_a=xxxxxxxx_00000100
// expect: reg_b=xxxxxxxx_00010100

.org 0x012
ldi al, 0x03
ldi bl, 0x01
// expect: reg_a=xxxxxxxx_00000011
// expect: reg_b=xxxxxxxx_00000001
sub al, bl
// expect: reg_a=xxxxxxxx_00000010
// expect: reg_b=xxxxxxxx_00000001

.org 0x017
halt

// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
