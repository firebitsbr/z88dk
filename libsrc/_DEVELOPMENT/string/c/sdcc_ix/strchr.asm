
; char *strchr(const char *s, int c)

SECTION code_string

PUBLIC _strchr

_strchr:

   pop af
   pop hl
   pop bc
   
   push bc
   push hl
   push af

   INCLUDE "string/z80/asm_strchr.asm"
