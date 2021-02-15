# Trying to out-optimize the optimizer
Can I do better than the optimizer? My hopes aren't very high, but I'll try a few things anyway.

## compiling the ASM
(Example)
```bash
gcc -nostdlib gcc_gd.s -no-pie -o gcc_gd.out
```

# gcc_gd.s
The -O0 run of gcc on gd.c
mostly for comparison

# lin_gd.s
We know what order this is done in, let's try putting instructions in order. Avoid needing stack frames. Also, use immediates where possible.
It segfaults after finish, probably due to some esoteric things about x86asm, but it works.
