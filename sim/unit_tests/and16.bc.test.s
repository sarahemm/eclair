ldi b, 0x93D1
ldi c, 0xA21E
and b, c
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=10000010_00010000
// expect: reg_c=10100010_00011110
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
