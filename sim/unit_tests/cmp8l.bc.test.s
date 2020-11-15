// immediate load two low 8s
ldi bl, 0x5A
ldi cl, 0xA5
// compare the two which should load them into X/Y
cir
cmp bl, cl
// expect: reg_x=xxxxxxxx_01011010
// expect: reg_y=xxxxxxxx_10100101
halt
