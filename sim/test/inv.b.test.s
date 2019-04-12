ldi16 b, 0xA5E1
cir
inv b
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=01011010_00011110
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000005
