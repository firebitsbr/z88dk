;       Z88 Small C+ Run time Library
;       Moved functions over to proper libdefs
;       To make startup code smaller and neater!
;
;       6/9/98  djm

SECTION code_l_sccz80

PUBLIC l_ult

EXTERN l_ltu_de_hl

defc l_ult = l_ltu_de_hl
