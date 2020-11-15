ldi ch, 0b00010001
cir
shl ch, 0x02
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=01000100_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
cir
shl ch, 0x03
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00100000_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
