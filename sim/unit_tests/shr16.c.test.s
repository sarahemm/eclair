ldi c, 0b0001000100010001
cir
shr c, 0x04
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00000001_00010001
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shr c, 0x02
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00000000_01000100
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000009
