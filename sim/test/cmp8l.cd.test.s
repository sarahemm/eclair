// immediate load two low 8s
ldi cl, 0x5A
ldi dl, 0xA5
// compare the two which should load them into X/Y
cir
cmp cl, dl
// expect: reg_x=xxxxxxxx_01011010
// expect: reg_y=xxxxxxxx_10100101
halt
