ldi dp, 0x00e0
cir
ld  cl, 0x0010
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_00010001
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: status=XXXXXXX0
ld  cl, 0x0011
// expect: reg_c=xxxxxxxx_00000000
// expect: status=XXXXXXX1
halt 
// expect: pc=0x00000a
.org 0x0F0
.data 0x11
.data 0x00
