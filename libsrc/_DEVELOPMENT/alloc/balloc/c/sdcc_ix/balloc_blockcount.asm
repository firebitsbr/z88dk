
; size_t balloc_blockcount(unsigned int queue)

SECTION code_alloc_balloc

PUBLIC _balloc_blockcount

_balloc_blockcount:

   pop af
   pop hl
   
   push hl
   push af

   INCLUDE "alloc/balloc/z80/asm_balloc_blockcount.asm"
