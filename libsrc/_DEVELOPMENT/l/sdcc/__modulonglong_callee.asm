
SECTION code_clib
SECTION code_l_sdcc

PUBLIC __modulonglong_callee

EXTERN l_divu_64_64x64, __sdcc_exit_mod_64_callee

__modulonglong_callee:

   ; unsigned 64-bit division
   ;
   ; enter :         +------------------------
   ;                 | +19 
   ;                 | ...  divisor (8 bytes)
   ;                 | +12 
   ;         stack = |------------------------
   ;                 | +11
   ;                 | ...  dividend (8 bytes)
   ;                 | +4
   ;                 |------------------------
   ;                 | +3
   ;                 | +2   remainder *
   ;                 |------------------------
   ;                 | +1
   ;                 | +0   return address
   ;                 +------------------------
   ;
   ; exit  : stack repaired
   ;
   ;         success
   ;
   ;            *remainder = remainer
   ;            carry reset
   ;
   ;         divide by zero
   ;
   ;            *remainder = dividend
   ;            carry set, errno set
   ;
   ; uses  : af, bc, de, hl, af', bc', de', hl'

   push ix
   
   ld ix,6
   add ix,sp                   ; ix = & dividend
   
   call l_divu_64_64x64        ; remainder = dehl'dehl
   
   jp __sdcc_exit_mod_64_callee  ; store result
