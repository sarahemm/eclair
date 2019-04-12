ldi16 a, 0xC4C5
halt

// expect: reg_a=11000100_11000101
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000003
