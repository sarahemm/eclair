ldi8h dh, 0b01101001
cir
inv dh
halt
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=10010110_xxxxxxxx
// expect: pc=0x000004
