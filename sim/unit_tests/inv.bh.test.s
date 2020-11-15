ldi bh, 0b01101001
cir
inv bh
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=10010110_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000004
