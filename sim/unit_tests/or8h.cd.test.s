ldi ch, 0x93
ldi dh, 0x1E
or ch, dh
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=10011111_xxxxxxxx
// expect: reg_d=00011110_xxxxxxxx
// expect: pc=0x000006
