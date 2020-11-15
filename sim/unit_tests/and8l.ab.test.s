ldi al, 0x93
ldi bl, 0x1E
and al, bl
halt

// expect: reg_a=xxxxxxxx_00010010
// expect: reg_b=xxxxxxxx_00011110
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000006
