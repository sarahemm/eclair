ldi dl, 0x93
ldi al, 0x1E
or dl, al
halt

// expect: reg_a=xxxxxxxx_00011110
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_10011111
// expect: pc=0x000006
