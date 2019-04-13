ldi a, 0b0001000100010001
cir
shr a, 0x04
// expect: reg_a=00000001_00010001
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shr a, 0x02
halt
// expect: reg_a=00000000_01000100
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000009
