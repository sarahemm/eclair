// immediate load two 16s
ldi a, 0x5A5A
ldi b, 0xA5A5
// compare the two which should load them into X/Y
cir
cmp a, b
// expect: reg_x=01011010_01011010
// expect: reg_y=10100101_10100101
halt
