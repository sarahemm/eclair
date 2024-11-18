ldi dp, 0x00e0
cir
ld  ah, 0x0010
// expect: reg_a=00010001_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: status=XXXXXXX0
ld  ah, 0x0011
// expect: reg_a=00000000_xxxxxxxx
// expect: status=XXXXXXX1
halt 
// expect: pc=0x00000a
.org 0x0F0
.data 0x11
.data 0x00
