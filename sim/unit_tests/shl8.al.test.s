ldi al, 0b00010001
cir
shl al, 0x02
// expect: reg_a=xxxxxxxx_01000100
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shl al, 0x03
halt
// expect: reg_a=xxxxxxxx_00100000
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
