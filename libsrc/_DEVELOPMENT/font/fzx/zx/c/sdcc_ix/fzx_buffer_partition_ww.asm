
; void *fzx_buffer_partition_ww(void *buf, uint len, uint width)

SECTION code_font_fzx

PUBLIC _fzx_buffer_partition_ww

_fzx_buffer_partition_ww:

   pop af
   pop de
   pop bc
   pop hl
   
   push hl
   push bc
   push de
   push af
   
   push ix
   
   call asm_fzx_buffer_partition_ww
   
   pop ix
   ret
   
   INCLUDE "font/fzx/zx/z80/asm_fzx_buffer_partition_ww.asm"
