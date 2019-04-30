ldi dh, 0x93
ldi ah, 0x1E
and dh, ah
halt

// expect: reg_a=00011110_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=00010010_xxxxxxxx
// expect: pc=0x000006
