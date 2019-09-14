
; size_t strnlen(const char *s, size_t maxlen)

SECTION code_clib
SECTION code_string

PUBLIC strnlen_callee

EXTERN asm_strnlen

strnlen_callee:

IF __CPU_GBZ80__
   pop af
   pop bc
   pop hl
   push af
ELSE
   pop hl
   pop bc
   ex (sp),hl
ENDIF
   
   jp asm_strnlen

; SDCC bridge for Classic
IF __CLASSIC
PUBLIC _strnlen_callee
defc _strnlen_callee = strnlen_callee
ENDIF

