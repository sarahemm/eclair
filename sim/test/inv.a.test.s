ldi a, 0xA5E1
cir
inv a
halt
// expect: reg_a=01011010_00011110
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000005
