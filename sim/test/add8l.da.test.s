ldi dl, 0x0F
ldi al, 0x14
add dl, al
halt

// expect: reg_a=xxxxxxxx_00010100
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_00100011
