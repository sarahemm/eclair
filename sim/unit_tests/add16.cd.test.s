ldi c, 0x44C5
ldi d, 0x6005
add c, d
halt

// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=10100100_11001010
// expect: reg_d=01100000_00000101
// expect: pc=0x000008
