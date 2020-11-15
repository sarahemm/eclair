ldi b, 0x93D1
ldi c, 0xA21E
or b, c
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=10110011_11011111
// expect: reg_c=10100010_00011110
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
