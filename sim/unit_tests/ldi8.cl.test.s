ldi cl, 0xC7
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_11000111
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000002
