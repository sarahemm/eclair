// immediate load two low 8s
ldi al, 0x5A
ldi bl, 0xA5
// compare the two which should load them into X/Y
cir
cmp al, bl
// expect: reg_x=xxxxxxxx_01011010
// expect: reg_y=xxxxxxxx_10100101
halt
