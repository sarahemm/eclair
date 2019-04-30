ldi bl, 0x93
ldi cl, 0x1E
or bl, cl
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_10011111
// expect: reg_c=xxxxxxxx_00011110
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000006
