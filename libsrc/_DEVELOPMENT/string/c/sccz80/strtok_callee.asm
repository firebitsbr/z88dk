
; char *strtok(char * restrict s1, const char * restrict s2)

SECTION code_string

PUBLIC strtok_callee

strtok_callee:

   pop hl
   pop de
   ex (sp),hl
   
   INCLUDE "string/z80/asm_strtok.asm"
