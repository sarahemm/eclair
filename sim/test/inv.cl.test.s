ldi cl, 0b10101011
cir
inv cl
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_01010100
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000004
