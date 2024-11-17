ldi dp, 0x0000
cir
ld  d,  0x000f
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=00010001_00010010
ldi dp, 0x0002
cir
ld  d,  0x000f
halt
// expect: reg_d=11011110_11011111
// expect: pc=0x00000e
.data 0x11
.data 0x12
.data 0xDE
.data 0xDF
