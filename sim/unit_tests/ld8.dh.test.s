ldi dp, 0x0000
cir
ld  dh, 0x000f
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=00010001_xxxxxxxx
// expect: pc=0x000007
.org 0x00F
.data 0x11
