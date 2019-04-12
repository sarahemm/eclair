ldi16 b, 0xE005
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=11100000_00000101
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000003
