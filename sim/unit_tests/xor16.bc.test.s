ldi b, 0x93D1
ldi c, 0xA21E
xor b, c
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00110001_11001111
// expect: reg_c=10100010_00011110
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
