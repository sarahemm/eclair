ldi al, 0b00010001
cir
shr al, 0x02
// expect: reg_a=xxxxxxxx_00000100
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shr al, 0x01
halt
// expect: reg_a=xxxxxxxx_00000010
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
