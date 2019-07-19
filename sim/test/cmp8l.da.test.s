// immediate load two low 8s
ldi dl, 0x5A
ldi al, 0xA5
// compare the two which should load them into X/Y
cir
cmp dl, al
// expect: reg_x=xxxxxxxx_01011010
// expect: reg_y=xxxxxxxx_10100101
halt
