ldi cl, 0x0F
ldi dl, 0x14
add cl, dl
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_00100011
// expect: reg_d=xxxxxxxx_00010100
