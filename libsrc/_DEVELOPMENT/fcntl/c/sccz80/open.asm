
; int open(const char *path, int oflag, ...)

SECTION code_fcntl

PUBLIC open

open:

   INCLUDE "fcntl/z80/asm_open.asm"
