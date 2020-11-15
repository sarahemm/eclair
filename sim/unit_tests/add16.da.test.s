ldi d, 0x44C5
ldi a, 0x6005
add d, a
halt

// expect: reg_a=01100000_00000101
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=10100100_11001010
// expect: pc=0x000008
