ldi b, 0xABCD
cir
swab b
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=11001101_10101011
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000005
