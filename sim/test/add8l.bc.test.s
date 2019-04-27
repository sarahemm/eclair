ldi bl, 0x0F
ldi cl, 0x14
add bl, cl
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_00100011
// expect: reg_c=xxxxxxxx_00010100
// expect: reg_d=xxxxxxxx_xxxxxxxx
