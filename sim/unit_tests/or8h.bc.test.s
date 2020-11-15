ldi bh, 0x93
ldi ch, 0x1E
or bh, ch
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=10011111_xxxxxxxx
// expect: reg_c=00011110_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000006
