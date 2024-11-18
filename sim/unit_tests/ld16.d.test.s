ldi dp, 0x0000
cir
ld  d,  0x0012
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=00010001_00010010
// expect: status=XXXXXXX0
ldi dp, 0x0002
cir
ld  d,  0x0012
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=11011110_11011111
// expect: status=XXXXXXX0
ld  d,  0x0014
// expect: reg_d=00000000_00000000
// expect: status=XXXXXXX1
// expect: pc=0x000010
halt
.data 0x11
.data 0x12
.data 0xDE
.data 0xDF
.data 0x00
.data 0x00
