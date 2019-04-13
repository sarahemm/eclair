ldi a, 0xAAAA
ldi b, 0xBBBB
ldi c, 0xCCCC
ldi d, 0xDDDD
shl a, 0x02
add a, b
cir
// expect: pc=0x000010
// expect: reg_x=00000000_00000000
// expect: reg_y=00000000_00000000
// expect: reg_mar=00000000_00000000
// expect: reg_mdr=00000000_00000000
// expect: rpt=0000_00000000
halt
// expect: pc=0x000011
