# GD and Optimizer Flags
While I'm here, I may as well look at the asm that gcc outputs, and compare its optimizations.

# O0 to O1
* Gets rid of a lot of seemingly unnecessary MOVx instructions by using the general purpose registers more effectively.
* Setting up and accessing the stack takes fewer instructions on call.
* Calls generated are grouped differently, seemingly to share references better.

# O1 to O2
* the functions are more interleaved, so fewer CALLs needed.
* I can't tell if memory offsets are different solely because of the above, or if that's another optimization.

# O2 to O3
* The loops are flattened.
