
	SECTION	code_fp_math16
	PUBLIC	f16_mul10
	EXTERN	asm_f16_mul10

	defc	f16_mul10 = asm_f16_mul10


; SDCC bridge for Classic
IF __CLASSIC
PUBLIC _f16_mul10
EXTERN cm16_sdcc_mul10
defc _f16_mul10 = cm16_sdcc_mul10
ENDIF

