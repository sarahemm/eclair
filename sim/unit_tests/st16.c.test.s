#include "std_paging.testfrag"
.org 0x040
ldi dp, 0x0000
ldi c,  0xa5a5
st  c,  0x0400
halt

// expect: ram[0x100000]=0xa5
// expect: ram[0x100001]=0xa5