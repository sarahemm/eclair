ldi dp, 0x0000
cir
ld  dl, 0x000f
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_00010001
// expect: pc=0x000007
.org 0x00F
.data 0x11
