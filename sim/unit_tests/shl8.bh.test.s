ldi bh, 0b00010001
cir
shl bh, 0x02
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=01000100_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shl bh, 0x03
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00100000_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
