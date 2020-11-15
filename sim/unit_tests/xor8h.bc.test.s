ldi bh, 0x93
ldi ch, 0x1E
xor bh, ch
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=10001101_xxxxxxxx
// expect: reg_c=00011110_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000006
