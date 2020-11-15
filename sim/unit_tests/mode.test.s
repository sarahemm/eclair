// switch to page table block 1, switch to user mode and make sure it took effect
ldi ptb,   0x01
ldi flags, 0x02  // switch to user mode
// expect: ptb=000001
// now switch to system mode and make sure it overrides PTB to 0
ldi flags, 0x00  // switch to system mode
// expect: ptb=000000
