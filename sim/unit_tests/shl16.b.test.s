ldi b, 0b0001000100010001
cir
shl b, 0x04
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00010001_00010000
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shl b, 0x02
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=01000100_01000000
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000009
