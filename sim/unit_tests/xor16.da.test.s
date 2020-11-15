ldi d, 0x93D1
ldi a, 0xA21E
xor d, a
halt

// expect: reg_a=10100010_00011110
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=00110001_11001111
// expect: pc=0x000008
