// immediate load two 16s
ldi c, 0x5A5A
ldi d, 0xA5A5
// compare the two which should load them into X/Y
cir
cmp c, d
// expect: reg_x=01011010_01011010
// expect: reg_y=10100101_10100101
halt
