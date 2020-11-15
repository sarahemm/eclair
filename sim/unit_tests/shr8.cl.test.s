ldi cl, 0b00010001
cir
shr cl, 0x02
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_00000100
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shr cl, 0x01
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_00000010
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
