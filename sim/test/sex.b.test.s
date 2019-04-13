ldi bl, 0b00010001
cir
sex b
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00000000_00010001
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
ldi bl, 0b10101010
cir
sex b
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=11111111_10101010
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
