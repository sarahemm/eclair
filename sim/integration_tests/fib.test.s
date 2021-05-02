// al = two numbers ago
// bl = previous number
// cl = buffer
// ah = loop variable
// bh = constant for looping
// ch = number to stop the loop variable at (2)

ldi ah, 13 // loop counter, calculate fib(13)
ldi al, 1
ldi bl, 1
ldi bh, 1 // constant to subtract
ldi ch, 2 // stop at CL=2

.org 10
//loop:
// move cl into al (we need a better way to do this) 
ldi cl, 0
add cl, al
// compute the next number into the buffer
add cl, bl
// shift the previous result into the two-results-ago register
ldi al, 0
add al, bl
// move the newest result into the previous-result register
ldi bl, 0
add bl, cl

// see if we need to continue looping
sub ah, bh // subtract 1 from ah
cmp ah, ch
jmpne -21
halt

// expect: reg_c=XXXXXXXX_11101001
