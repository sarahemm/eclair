ldi d, 0x6005
ldi a, 0x44C5
sub d, a
halt

// expect: reg_a=01000100_11000101
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=00011011_01000000
// expect: pc=0x000008
