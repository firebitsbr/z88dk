
; void srand(unsigned int seed)

SECTION code_stdlib

PUBLIC _srand

_srand:

   pop af
   pop hl
   
   push hl
   push af

   INCLUDE "stdlib/z80/asm_srand.asm"
