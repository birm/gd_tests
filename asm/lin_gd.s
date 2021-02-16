  .global _start
  .text
data:
  theta: .float 1.00
  upper: .float 1.01
  lower: .float 0.99
  five : .float 5.00
  seven: .float 7.00
  iters: .int 1000000000


_start:
  fld theta
  mov $100000000, %rcx
  loopstart:
    fld upper
    fmul %st(0), %st(1)
    fsub five
    fmul %st, %st
    fadd seven
    fld lower
    fmul %st(0), %st(2)
    fsub five
    fmul %st, %st
    fadd seven
    fsubp
    faddp
    dec %rcx
    jnz loopstart
