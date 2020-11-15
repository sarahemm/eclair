ldi a, 0x6005
ldi b, 0x44C5
sub a, b
halt

// expect: reg_a=00011011_01000000
// expect: reg_b=01000100_11000101
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
