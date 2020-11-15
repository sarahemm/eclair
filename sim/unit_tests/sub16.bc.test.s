ldi b, 0x6005
ldi c, 0x44C5
sub b, c
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=00011011_01000000
// expect: reg_c=01000100_11000101
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
