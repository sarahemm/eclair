ldi cl, 0b00010001
cir
sex c
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00000000_00010001
// expect: reg_d=xxxxxxxx_xxxxxxxx
ldi cl, 0b10101010
cir
sex c
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=11111111_10101010
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
