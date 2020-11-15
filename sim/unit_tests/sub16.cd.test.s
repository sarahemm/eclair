ldi c, 0x6005
ldi d, 0x44C5
sub c, d
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=00011011_01000000
// expect: reg_d=01000100_11000101
// expect: pc=0x000008
