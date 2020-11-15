ldi c, 0xABCD
cir
swab c
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=11001101_10101011
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000005
