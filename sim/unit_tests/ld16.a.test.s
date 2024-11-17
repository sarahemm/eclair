ldi dp, 0x0000
cir
ld  a,  0x000f
// expect: reg_a=00010001_00010010
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
ldi dp, 0x0002
cir
ld  a,  0x000f
halt
// expect: reg_a=11011110_11011111
// expect: pc=0x00000e
.data 0x11
.data 0x12
.data 0xDE
.data 0xDF
