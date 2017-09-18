
; BSD
; void bcopy(const void *src, void *dst, size_t len)

SECTION code_clib
SECTION code_string

PUBLIC bcopy_callee

EXTERN asm_bcopy

bcopy_callee:

   pop hl
   pop bc
   pop de
   ex (sp),hl
   
   jp asm_bcopy

; SDCC bridge for Classic
IF __CLASSIC
PUBLIC _bcopy_callee
defc _bcopy_callee = bcopy_callee
ENDIF

