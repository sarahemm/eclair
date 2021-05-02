// flow is 0x000 -> 0x001 -> jump to 0x005 -> jump to 0x00c ->
// revjmp to 0x008 -> halt

.org 0x000
cir // used as a noop so relative/absolute jump isn't the same result
.org 0x001
jmp 1 // jump to 0x005
.org 0x004
halt  // should jump over here
.org 0x005
jmp 4 // come from 0x001, jump to 0x00c
// expect: reg_a=xxxxxxxx_xxxxxxxx
// expect: reg_b=xxxxxxxx_xxxxxxxx
// expect: reg_c=xxxxxxxx_xxxxxxxx
// expect: reg_d=xxxxxxxx_xxxxxxxx
// expect: pc=0x000007
.org 0x008
halt // come from 0x00c, ends the test
// expect: pc=0x000008
.org 0x00c
jmp -6 // come from 0x005, jump to 0x00c 
// expect: pc=0x00000e
halt  // should never get here
