ldi a, 0x44C5
ldi b, 0x6005
add a, b
halt

// expect: reg_a=10100100_11001010
// expect: reg_b=01100000_00000101
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
