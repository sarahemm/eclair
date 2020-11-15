ldi b, 0x44C5
ldi c, 0x6005
add b, c
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=10100100_11001010
// expect: reg_c=01100000_00000101
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000008
