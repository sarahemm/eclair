ldi c, 0b0001000100010001
cir
shl c, 0x04
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00010001_00010000
// expect: reg_d=xxxxxxxx_xxxxxxxx
shl c, 0x02
cir
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=01000100_01000000
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000009
