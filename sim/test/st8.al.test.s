#include "std_paging.testfrag"
.org 0x040
ldi dp, 0x0000
ldi al, 0xa5
cir
st  al, 0x0400
halt
// expect: pc=0x000049
// expect: ram[0x100000]=0xa5
