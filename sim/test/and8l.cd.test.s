ldi cl, 0x93
ldi dl, 0x1E
and cl, dl
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_00010010
// expect: reg_d=xxxxxxxx_00011110
// expect: pc=0x000006
