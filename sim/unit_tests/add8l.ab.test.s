ldi al, 0x0F
ldi bl, 0x14
add al, bl
halt

// expect: reg_a=xxxxxxxx_00100011
// expect: reg_b=xxxxxxxx_00010100
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
