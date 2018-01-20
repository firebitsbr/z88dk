include(`z88dk.m4')

dnl############################################################
dnl##       ZXN_CRT_776.M4 - RAM MODEL DOTN COMMAND          ##
dnl############################################################
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;          zx spectrum nextos extended dot command          ;;
;;       generated by target/zxn/startup/zxn_crt_776.m4      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; GLOBAL SYMBOLS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "config_zxn_public.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CRT AND CLIB CONFIGURATION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "../crt_defaults.inc"
include "crt_config.inc"
include(`../crt_rules.inc')
include(`zxn_rules.inc')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SET UP MEMORY MODEL ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include(`crt_memory_map.inc')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; INSTANTIATE DRIVERS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ifndef CRT_OTERM_FONT_FZX

   PUBLIC CRT_OTERM_FONT_FZX
   EXTERN _ff_ind_Termino
   defc CRT_OTERM_FONT_FZX = _ff_ind_Termino

endif

include(`../clib_instantiate_begin.m4')

ifelse(eval(M4__CRT_INCLUDE_DRIVER_INSTANTIATION == 0), 1,
`
   include(`driver/terminal/zx_01_input_kbd_inkey.m4')dnl
   m4_zx_01_input_kbd_inkey(_stdin, __i_fcntl_fdstruct_1, CRT_ITERM_TERMINAL_FLAGS, M4__CRT_ITERM_EDIT_BUFFER_SIZE, CRT_ITERM_INKEY_DEBOUNCE, CRT_ITERM_INKEY_REPEAT_START, CRT_ITERM_INKEY_REPEAT_RATE)dnl

   include(`driver/terminal/zx_01_output_fzx.m4')dnl
   m4_zx_01_output_fzx(_stdout, CRT_OTERM_TERMINAL_FLAGS, 0, 0, CRT_OTERM_WINDOW_X, CRT_OTERM_WINDOW_WIDTH, CRT_OTERM_WINDOW_Y, CRT_OTERM_WINDOW_HEIGHT, 0, CRT_OTERM_FONT_FZX, CRT_OTERM_TEXT_COLOR, CRT_OTERM_TEXT_COLOR_MASK, CRT_OTERM_BACKGROUND_COLOR, CRT_OTERM_FZX_PAPER_X, CRT_OTERM_FZX_PAPER_WIDTH, CRT_OTERM_FZX_PAPER_Y, CRT_OTERM_FZX_PAPER_HEIGHT, M4__CRT_OTERM_FZX_DRAW_MODE, CRT_OTERM_FZX_LINE_SPACING, CRT_OTERM_FZX_LEFT_MARGIN, CRT_OTERM_FZX_SPACE_EXPAND)dnl

   include(`../m4_file_dup.m4')dnl
   m4_file_dup(_stderr, 0x80, __i_fcntl_fdstruct_1)dnl
',
`
   include(`crt_driver_instantiation.asm.m4')
')

include(`../clib_instantiate_end.m4')

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; STARTUP ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SECTION CODE

PUBLIC __Start, __Exit

EXTERN _main

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CRT INIT ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

__Start:

   di

   ;; returning to basic
   
   push iy
   exx
   push hl

   IF __crt_enable_commandline >= 2
   
      exx
      
   ENDIF

   ;; move stack to current divmmc page
   
   ld (__sp_or_ret),sp
   ld sp,DOTN_REGISTER_SP

   ;; command line
   
   IF __crt_enable_commandline = 1
   
      include "../crt_cmdline_empty.inc"
      
   ENDIF

   IF __crt_enable_commandline >= 3
   
      include "crt_cmdline_esxdos.inc"
      
   ENDIF

   IF __crt_enable_commandline >= 1
   
      push hl                  ; argv
      push bc                  ; argc
      
   ENDIF

   ;; save mmu state

   EXTERN asm_zxn_read_mmu_state

   ld hl,__dotn_mmu_state
   call asm_zxn_read_mmu_state
   
   ; copy to runtime mmu state
   ; done in case user has paged something into top 16k
   
   ld hl,__dotn_mmu_state
   ld de,__dotn_mmu_runtime_state
   ld bc,8
   
   ldir

   ;; verify that this is 128k NextOS mode
   ;; method provided by Garry Lancaster
   
   ld hl,(__SYSVAR_ERRSP)
   inc hl
   
   ld a,(hl)                   ; 48k mode if error routine is in lower 16k
   cp 0x40
   
   jr nc, mode_128k

mode48k:

   IF __USE_ZXN_OPCODES & __USE_ZXN_OPCODES_OTHER
   
      push error_model_s
   
   ELSE
   
      ld hl,error_model_s
      push hl
   
   ENDIF
   
   jp error_model
   
   error_model_s:

      defm "Requires 128k NextO", 'S'+0x80
   
mode_128k:
   
   ;; banking state 1ffd, 7ffd

   EXTERN asm_zxn_read_sysvar_bank_state
   EXTERN asm_zxn_write_sysvar_bank_state
   EXTERN asm_zxn_mangle_bank_state
   
   call asm_zxn_read_sysvar_bank_state  ; h = BANK678, l = BANKM
   call asm_zxn_mangle_bank_state       ; mangle for SWAP
   
   ld (__dotn_msysvar_bank_state),hl
   
   call asm_zxn_mangle_bank_state       ; undo mangle

   ; prepare +3DOS banking state
   
   ; h = BANK678 (1ffd)
   ; l = BANKM (7ffd)
   
   ld a,l
   and $ef                     ; 7ffd, pick rom 2
   or $07                      ; 7ffd, pick bank 7
   ld l,a

   call asm_zxn_mangle_bank_state       ; mangle for SWAP
   call asm_zxn_write_sysvar_bank_state ; write into sysvars for upcoming NextOS call
   
   ld (__dotn_mnextos_bank_state),hl

   ;; copy NextOS allocation code to temp stack in bank 5
   
   ld hl,__allocate_pages_end - 1
   ld de,__SYSVAR_TSTACK
   ld bc,__allocate_pages_end - __allocate_pages_begin
   
   lddr

   ; disable divmmc and jump to allocation code in temp stack

   ld bc,(__dotn_num_extra_pages)  ; b = dotn_num_main_pages, c = dotn_num_extra_pages
   push bc
   
   ld a,b
   add a,c
   ld b,a
   
   ld (__dotn_sp),sp
   
   ex de,hl
   inc hl
   ld sp,hl                    ; move stack to bank 5

   ld hl,(__dotn_msysvar_bank_state)
   
   ; hl = mangled 1ffd/7ffd restore state
   ;  b = num pages needed
   
   rst __ESXDOS_ROMCALL
   defw abs_allocate_pages
   
   di
   ld sp,(__dotn_sp)           ; move stack back to divmmc
   
   pop bc                      ; b = dotn_num_main_pages, c = dotn_num_extra_pages
   jr c, allocation_successful

allocation_failed:

   IF __USE_ZXN_OPCODES & __USE_ZXN_OPCODES_OTHER
   
      push error_memory_s
   
   ELSE
   
      ld hl,error_memory_s
      push hl
   
   ENDIF
   
   jp error_memory
   
   error_memory_s:
   
      defm "4 Out of memor", 'y'+0x80
   
allocation_successful:
   
   ; copy allocated pages to runtime mmu state
   
   EXTERN __DTN_head
   EXTERN asm_zxn_mmu_from_addr
   
   ld hl,__DTN_head
   call asm_zxn_mmu_from_addr  ; a = mmu slot of first byte
   
   add a,__dotn_mmu_runtime_state & 0xff
   ld e,a
   adc a,__dotn_mmu_runtime_state / 256
   sub e
   ld d,a

   ld hl,abs_allocated_pages
   
   ld a,c                      ;  a = dotn_num_extra_pages

   ld c,b
   ld b,0                      ; bc = dotn_num_main_pages

   push bc  
   
   ldir

   pop bc

   ; record allocated pages
   
   ld hl,abs_allocated_pages
   ld de,__dotn_main_pages
   
   ldir

   or a
   jr z, extra_pages_none
   
   ld de,__dotn_extra_pages
   ld c,a                      ; bc = dotn_num_extra_pages
   
   ldir
   
extra_pages_none:

   ;; map runtime mmu state into the memory map
   
   EXTERN asm_zxn_write_mmu_state
   
   ld hl,__dotn_mmu_runtime_state
   call asm_zxn_write_mmu_state

   ;; load second part of dotn into memory

   include "crt_load_esxdos_dotn.inc"

   ; initialize data section

   include "../clib_init_data.inc"

   ; initialize bss section

   include "../clib_init_bss.inc"

   ; interrupt mode
   
   include "../crt_set_interrupt_mode.inc"

   ; move stack to main location

   IF __crt_enable_commandline = 2
   
      pop bc                   ; bc = argc
      pop hl                   ; hl = argv
   
   ELSE
   
      IF __crt_enable_commandline >= 1

         pop hl                   ; hl = argc
         pop de                   ; de = argv
      
      ENDIF

   ENDIF
   
   IF (__crt_stack_size > 0)
   
      EXTERN __BSS_STACK_TOP_head
      ld sp,__BSS_STACK_TOP_head
      
   ELSE
   
      include "../crt_init_sp.inc"

   ENDIF
   
   ; copy command line to new stack location
   
   IF (__crt_enable_commandline >= 1) && (__crt_enable_commandline != 2)
   
      ; hl = argc
      ; de = argv in divmmc stack
      ; interrupts are disabled
      
      ld (__argc),hl
      
      ld hl,DOTN_REGISTER_SP
      
      xor a
      sbc hl,de                ; hl = number of bytes to copy
      
      ld c,l
      ld b,h
      
      ld de,DOTN_REGISTER_SP - 1
      
      ld hl,-1
      add hl,sp
      
      ex de,hl
      
      ; hl = top byte in divmmc stack
      ; de = top byte in main stack
      ; bc = num bytes to copy
      
      lddr
      
      xor a
      sbc hl,de                ; hl = argv pointer adjust
      
      ex de,hl
      inc hl
      ld sp,hl

      ld bc,(__argc)
      
      ; bc = argc
      ; hl = argv
      ; de = argv pointer adjust
   
   ENDIF
   
   IF __crt_enable_commandline >= 1
   
      push hl                  ; argv
      push bc                  ; argc
      
   ENDIF
   
   IF (__crt_enable_commandline >= 1) && (__crt_enable_commandline != 2)
   
      ; adjust all the argv pointers
      
      ; hl = argv
      ; bc = argc
      ; de = argv pointer adjust
      
      EXTERN l_neg_de
      call   l_neg_de
      
      ld a,c
      
      ld c,e
      ld b,d
      
   argv_ptr_loop:
      
      ld e,(hl)
      inc hl
      ld d,(hl)                ; de = argv[n]
      
      ex de,hl
      add hl,bc                ; de = argv[n] + ptr adjust
      ex de,hl
      
      dec hl
      ld (hl),e
      inc hl
      ld (hl),d
      inc hl
      
      dec a
      jr nz, argv_ptr_loop
   
   ENDIF
   
   ; register basic error intercept to release memory and close files
   
   ld hl,_dotn_basic_error_hook
   
   rst  __ESXDOS_SYSCALL
   defb __ESX_M_ERRH
   
SECTION code_crt_init          ; user and library initialization
SECTION code_crt_main

   include "../crt_start_ei.inc"

   ; call user program
   
   call _main                  ; hl = return status

error_basic:

   ; run exit stack

   IF __clib_exit_stack_size > 0
   
      EXTERN asm_exit
      jp asm_exit              ; exit function jumps to __Exit
   
   ENDIF

__Exit:

   ld sp,DOTN_REGISTER_SP      ; move stack back to divmmc
   push hl                     ; save return status

SECTION code_crt_exit          ; user and library cleanup
SECTION code_crt_return

   ; close files
   
   include "../clib_close.inc"

   ; terminate
   
   di

   ;; ensure dffd is zero
   
   ld bc,$dffd
   xor a
   out (c),a
   
error_memory:
error_load:

   ;; page in system variables

   IF __USE_ZXN_OPCODES & __USE_ZXN_OPCODES_NEXTREG
   
      mmu2 10
      
   ELSE
   
      ld bc,__IO_NEXTREG_REG
      ld a,__REG_MMU2
      out (c),a
      inc b
      ld a,10
      out (c),a
      
   ENDIF

   ;; run NextOS deallocation code in temp stack in bank 5
   
   ld hl,(__dotn_mnextos_bank_state)       ; mangled NextOS 1ffd/7ffd banking state
   call asm_zxn_write_sysvar_bank_state    ; write into sysvars for upcoming NextOS call

   ; copy NextOS deallocation code to temp stack in bank 5 
   
   ld hl,__deallocate_pages_end - 1
   ld de,__SYSVAR_TSTACK
   ld bc,__deallocate_pages_end - __deallocate_pages_begin
   
   lddr
   
   ld (__dotn_sp),sp
   
   ex de,hl
   inc hl
   ld sp,hl                    ; move stack to bank 5

   ; copy allocated pages to temp stack
   
   ld hl,__dotn_main_pages
   ld de,abs_deallocated_pages
   ld bc,DOTN_EXTRA_PAGES + 6
   
   ldir
   
   ; deallocate
   
   ld hl,(__dotn_msysvar_bank_state)  ; mangled 1ffd/7ffd restore state
   
   rst __ESXDOS_ROMCALL
   defw abs_deallocate_pages
   
   di
   ld sp,(__dotn_sp)           ; move stack back to divmmc

error_model:

   ;; restore mmu state
   
   ld hl,__dotn_mmu_state
   call asm_zxn_write_mmu_state

   ;; returning to basic
   
   pop hl                      ; hl = return status

   ld sp,(__sp_or_ret)
   
   exx
   pop hl
   exx
   pop iy

   IF (__crt_interrupt_mode = 0) || (__crt_interrupt_mode = 2)
   
      im 1
   
   ENDIF

   ei
   
   ; If you exit with carry set and A<>0, the corresponding error code will be printed in BASIC.
   ; If carry set and A=0, HL should be pointing to a custom error message (with last char +$80 as END marker).
   ; If carry reset, exit cleanly to BASIC
      
   ld a,h
   or l
   ret z                       ; status == 0, no error
      
   scf
   ld a,l
      
   inc h
   dec h
      
   ret z                       ; status < 256, basic error code in status&0xff
      
   ld a,0                      ; status = & custom error message
   ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; BASIC ERROR ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

PUBLIC _dotn_basic_error_hook

_dotn_basic_error_hook:

   ; basic error has occurred during a rst $10 or rst $18
   ; must free allocated pages and close open files
   
   ; enter :  a = basic error code - 1
   ;         de = return address after restart with stack properly adjusted
   ;         (you can resume the program if you jump to this address)

   ld hl,error_dbreak_s
   
   cp __ERRB_D_BREAK_CONT_REPEATS - 1
   jp z, error_basic
   
   ld hl,__ESXDOS_ENONSENSE
   jp error_basic

error_dbreak_s:

   defm "D BREAK - no repea", 't'+0x80

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; NEXTOS PAGE ALLOCATION & DEALLOCATION ;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   include "crt_alloc_esxdos_dotn.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; RUNTIME VARS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

SECTION bss_dot_uninitialized

__sp_or_ret               :  defw 0
__dotn_sp                 :  defw 0

__dotn_msysvar_bank_state :  defw 0   ; mangled for SWAP
__dotn_mnextos_bank_state :  defw 0   ; mangled for SWAP

defc __argc = __dotn_sp   ; re-use some space

SECTION data_dot

__esxdos_dtx_fname        :  defs 18

__dotn_mmu_state          :  defs 8,0xff
__dotn_mmu_runtime_state  :  defs 8,0xff

__dotn_num_extra_pages    :  defb DOTN_EXTRA_PAGES         ; these two items in order
__dotn_num_main_pages     :  defb 0                        ; these two items in order

SECTION dtn_allocated_pages

__dotn_main_pages         :  defs 6,0xff                   ; these two items in order
__dotn_extra_pages        :  defs DOTN_EXTRA_PAGES+1,0xff  ; these two items in order

; C/asm interface to extra allocated pages

PUBLIC _DOTN_PAGE
PUBLIC _DOTN_PAGE_NUM

defc _DOTN_PAGE = __dotn_extra_pages
defc _DOTN_PAGE_NUM = __dotn_num_extra_pages

; C/asm interface to second binary file details

PUBLIC _DOT_FILENAME
PUBLIC _DOT_BINLEN

defc _DOT_FILENAME = __esxdos_dtx_fname
defc _DOT_BINLEN   = __esxdos_dotx_len

include "../clib_variables.inc"

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; CLIB STUBS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

include "../clib_stubs.inc"
