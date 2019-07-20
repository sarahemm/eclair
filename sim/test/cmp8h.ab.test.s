// immediate load two high 8s
// this must also initialize the low byte becuase of a simulator quirk
ldi a, 0x5A00
ldi b, 0xA5FF
// compare the two which should load them into X/Y
cir
cmp ah, bh
// expect: reg_x=00000000_01011010
// expect: reg_y=11111111_10100101
// expect: status=XXXXX0X0
ldi b, 0x5AFF
cmp ah, bh
// expect: reg_x=00000000_01011010
// expect: reg_y=11111111_01011010
// expect: status=XXXXX1X0
halt
