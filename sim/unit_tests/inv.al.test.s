ldi al, 0b10101011
cir
inv al
halt
// expect: reg_a=xxxxxxxx_01010100
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000004
