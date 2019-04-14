ldi dp, 0x0000
cir
ld  c,  0x000f
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00010001_00010001
// expect: reg_d=xxxxxxxx_xxxxxxxx
ldi dp, 0x0002
cir
ld  c,  0x000f
halt
// expect: reg_c=11011110_11011110
// expect: pc=0x00000e
.data 0x11
.data 0x11
.data 0xDE
.data 0xDE
