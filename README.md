# gd_tests
Tests about Gradient Descent, but really performance, optimizer, and ASM tests

## Constants
function : f(x) = (x-5)^2+7
alpha  = 0.5
delta: 0.01 (used as pseudo infinitesimal for gradient calculation)
initial point: 1.0
iterations: 1000000000 ( 1 billion )

## Speed
| Method | Description | Time:user |
| ------ | ----------- | ---- |
| c, gcc -O0 | c, not optimized | 0m33.972s |
| c, gcc -O1 | c, `Moderate optimization; optimizes reasonably well but does not degrade compilation time significantly.` | 0m0.157s |
| c, gcc -O2 | c, `Full optimization; generates highly optimized code and has the slowest compilation time.` | 0m0.001s |
| c, gcc -O3 | c, `Full optimization as in -O2; also uses more aggressive automatic inlining of subprograms within a unit (Inlining of Subprograms) and attempts to vectorize loops.` | 0m0.002s |
| asm, linear | Performing same calculations with pared down linear hand-written assembly | 0m0.498s |  


# Links
GCC Optimization Flag quotes - https://gcc.gnu.org/onlinedocs/gnat_ugn/Optimization-Levels.html
