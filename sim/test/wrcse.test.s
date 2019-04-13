ldi a,  0xAAAA
ldi b,  0x5555
ldi c,  0x1234
ldi d,  0x4321
ldi dp, 0x0078
wrcse
halt

// expect: pc=0x000010
// expect: reg_a=10101010_10101010
// expect: reg_b=01010101_01010101
// expect: reg_c=00010010_00110100
// expect: reg_d=01000011_00100001
// expect: reg_dp=00000000_01111000
// expect: cs[0x78]=0x432112345555aaaa
