ldi bh, 0b00010001
cir
shr bh, 0x02
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00000100_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shr bh, 0x01
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00000010_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
