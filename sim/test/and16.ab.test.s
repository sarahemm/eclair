ldi a, 0x93D1
ldi b, 0xA21E
and a, b
halt

// expect: reg_a=10000010_00010000
// expect: reg_b=10100010_00011110
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
