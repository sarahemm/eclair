ldi ah, 0x93
ldi bh, 0x1E
xor ah, bh
halt

// expect: reg_a=10001101_xxxxxxxx
// expect: reg_b=00011110_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000006
