
; int ioctl(int fildes, int request, ...)

SECTION code_fcntl

PUBLIC _ioctl

_ioctl:

   INCLUDE "fcntl/z80/asm_ioctl.asm"
