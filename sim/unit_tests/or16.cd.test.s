ldi c, 0x93D1
ldi d, 0xA21E
or c, d
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=10110011_11011111
// expect: reg_d=10100010_00011110
// expect: pc=0x000008
