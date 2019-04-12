ldi16 c, 0xA5E1
cir
inv c
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=01011010_00011110
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000005
