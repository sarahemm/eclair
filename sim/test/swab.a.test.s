ldi a, 0xABCD
cir
swab a
halt
// expect: reg_a=11001101_10101011
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000005
