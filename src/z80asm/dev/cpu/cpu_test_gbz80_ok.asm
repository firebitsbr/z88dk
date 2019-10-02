 aci -128                       ; CE 80
 aci 127                        ; CE 7F
 aci 255                        ; CE FF
 adc (hl)                       ; 8E
 adc -128                       ; CE 80
 adc 127                        ; CE 7F
 adc 255                        ; CE FF
 adc a                          ; 8F
 adc a, (hl)                    ; 8E
 adc a, -128                    ; CE 80
 adc a, 127                     ; CE 7F
 adc a, 255                     ; CE FF
 adc a, a                       ; 8F
 adc a, b                       ; 88
 adc a, c                       ; 89
 adc a, d                       ; 8A
 adc a, e                       ; 8B
 adc a, h                       ; 8C
 adc a, l                       ; 8D
 adc b                          ; 88
 adc c                          ; 89
 adc d                          ; 8A
 adc e                          ; 8B
 adc h                          ; 8C
 adc hl, bc                     ; CD @__z80asm__adc_hl_bc
 adc hl, de                     ; CD @__z80asm__adc_hl_de
 adc hl, hl                     ; CD @__z80asm__adc_hl_hl
 adc l                          ; 8D
 adc m                          ; 8E
 add (hl)                       ; 86
 add -128                       ; C6 80
 add 127                        ; C6 7F
 add 255                        ; C6 FF
 add a                          ; 87
 add a, (hl)                    ; 86
 add a, -128                    ; C6 80
 add a, 127                     ; C6 7F
 add a, 255                     ; C6 FF
 add a, a                       ; 87
 add a, b                       ; 80
 add a, c                       ; 81
 add a, d                       ; 82
 add a, e                       ; 83
 add a, h                       ; 84
 add a, l                       ; 85
 add b                          ; 80
 add bc, -32768                 ; E5 21 00 80 09 44 4D E1
 add bc, 32767                  ; E5 21 FF 7F 09 44 4D E1
 add bc, 65535                  ; E5 21 FF FF 09 44 4D E1
 add bc, a                      ; CD @__z80asm__add_bc_a
 add c                          ; 81
 add d                          ; 82
 add de, -32768                 ; E5 21 00 80 19 54 5D E1
 add de, 32767                  ; E5 21 FF 7F 19 54 5D E1
 add de, 65535                  ; E5 21 FF FF 19 54 5D E1
 add de, a                      ; CD @__z80asm__add_de_a
 add e                          ; 83
 add h                          ; 84
 add hl, -32768                 ; D5 11 00 80 19 D1
 add hl, 32767                  ; D5 11 FF 7F 19 D1
 add hl, 65535                  ; D5 11 FF FF 19 D1
 add hl, a                      ; CD @__z80asm__add_hl_a
 add hl, bc                     ; 09
 add hl, de                     ; 19
 add hl, hl                     ; 29
 add hl, sp                     ; 39
 add l                          ; 85
 add m                          ; 86
 add sp, -128                   ; E8 80
 add sp, 127                    ; E8 7F
 add.a sp, -128                 ; E8 80
 add.a sp, 127                  ; E8 7F
 adi -128                       ; C6 80
 adi 127                        ; C6 7F
 adi 255                        ; C6 FF
 ana a                          ; A7
 ana b                          ; A0
 ana c                          ; A1
 ana d                          ; A2
 ana e                          ; A3
 ana h                          ; A4
 ana l                          ; A5
 ana m                          ; A6
 and (hl)                       ; A6
 and -128                       ; E6 80
 and 127                        ; E6 7F
 and 255                        ; E6 FF
 and a                          ; A7
 and a, (hl)                    ; A6
 and a, -128                    ; E6 80
 and a, 127                     ; E6 7F
 and a, 255                     ; E6 FF
 and a, a                       ; A7
 and a, b                       ; A0
 and a, c                       ; A1
 and a, d                       ; A2
 and a, e                       ; A3
 and a, h                       ; A4
 and a, l                       ; A5
 and b                          ; A0
 and c                          ; A1
 and d                          ; A2
 and e                          ; A3
 and h                          ; A4
 and l                          ; A5
 and.a hl, bc                   ; 7C A0 67 7D A1 6F
 and.a hl, de                   ; 7C A2 67 7D A3 6F
 ani -128                       ; E6 80
 ani 127                        ; E6 7F
 ani 255                        ; E6 FF
 bit 0, (hl)                    ; CB 46
 bit 0, a                       ; CB 47
 bit 0, b                       ; CB 40
 bit 0, c                       ; CB 41
 bit 0, d                       ; CB 42
 bit 0, e                       ; CB 43
 bit 0, h                       ; CB 44
 bit 0, l                       ; CB 45
 bit 1, (hl)                    ; CB 4E
 bit 1, a                       ; CB 4F
 bit 1, b                       ; CB 48
 bit 1, c                       ; CB 49
 bit 1, d                       ; CB 4A
 bit 1, e                       ; CB 4B
 bit 1, h                       ; CB 4C
 bit 1, l                       ; CB 4D
 bit 2, (hl)                    ; CB 56
 bit 2, a                       ; CB 57
 bit 2, b                       ; CB 50
 bit 2, c                       ; CB 51
 bit 2, d                       ; CB 52
 bit 2, e                       ; CB 53
 bit 2, h                       ; CB 54
 bit 2, l                       ; CB 55
 bit 3, (hl)                    ; CB 5E
 bit 3, a                       ; CB 5F
 bit 3, b                       ; CB 58
 bit 3, c                       ; CB 59
 bit 3, d                       ; CB 5A
 bit 3, e                       ; CB 5B
 bit 3, h                       ; CB 5C
 bit 3, l                       ; CB 5D
 bit 4, (hl)                    ; CB 66
 bit 4, a                       ; CB 67
 bit 4, b                       ; CB 60
 bit 4, c                       ; CB 61
 bit 4, d                       ; CB 62
 bit 4, e                       ; CB 63
 bit 4, h                       ; CB 64
 bit 4, l                       ; CB 65
 bit 5, (hl)                    ; CB 6E
 bit 5, a                       ; CB 6F
 bit 5, b                       ; CB 68
 bit 5, c                       ; CB 69
 bit 5, d                       ; CB 6A
 bit 5, e                       ; CB 6B
 bit 5, h                       ; CB 6C
 bit 5, l                       ; CB 6D
 bit 6, (hl)                    ; CB 76
 bit 6, a                       ; CB 77
 bit 6, b                       ; CB 70
 bit 6, c                       ; CB 71
 bit 6, d                       ; CB 72
 bit 6, e                       ; CB 73
 bit 6, h                       ; CB 74
 bit 6, l                       ; CB 75
 bit 7, (hl)                    ; CB 7E
 bit 7, a                       ; CB 7F
 bit 7, b                       ; CB 78
 bit 7, c                       ; CB 79
 bit 7, d                       ; CB 7A
 bit 7, e                       ; CB 7B
 bit 7, h                       ; CB 7C
 bit 7, l                       ; CB 7D
 bit.a 0, (hl)                  ; CB 46
 bit.a 0, a                     ; CB 47
 bit.a 0, b                     ; CB 40
 bit.a 0, c                     ; CB 41
 bit.a 0, d                     ; CB 42
 bit.a 0, e                     ; CB 43
 bit.a 0, h                     ; CB 44
 bit.a 0, l                     ; CB 45
 bit.a 1, (hl)                  ; CB 4E
 bit.a 1, a                     ; CB 4F
 bit.a 1, b                     ; CB 48
 bit.a 1, c                     ; CB 49
 bit.a 1, d                     ; CB 4A
 bit.a 1, e                     ; CB 4B
 bit.a 1, h                     ; CB 4C
 bit.a 1, l                     ; CB 4D
 bit.a 2, (hl)                  ; CB 56
 bit.a 2, a                     ; CB 57
 bit.a 2, b                     ; CB 50
 bit.a 2, c                     ; CB 51
 bit.a 2, d                     ; CB 52
 bit.a 2, e                     ; CB 53
 bit.a 2, h                     ; CB 54
 bit.a 2, l                     ; CB 55
 bit.a 3, (hl)                  ; CB 5E
 bit.a 3, a                     ; CB 5F
 bit.a 3, b                     ; CB 58
 bit.a 3, c                     ; CB 59
 bit.a 3, d                     ; CB 5A
 bit.a 3, e                     ; CB 5B
 bit.a 3, h                     ; CB 5C
 bit.a 3, l                     ; CB 5D
 bit.a 4, (hl)                  ; CB 66
 bit.a 4, a                     ; CB 67
 bit.a 4, b                     ; CB 60
 bit.a 4, c                     ; CB 61
 bit.a 4, d                     ; CB 62
 bit.a 4, e                     ; CB 63
 bit.a 4, h                     ; CB 64
 bit.a 4, l                     ; CB 65
 bit.a 5, (hl)                  ; CB 6E
 bit.a 5, a                     ; CB 6F
 bit.a 5, b                     ; CB 68
 bit.a 5, c                     ; CB 69
 bit.a 5, d                     ; CB 6A
 bit.a 5, e                     ; CB 6B
 bit.a 5, h                     ; CB 6C
 bit.a 5, l                     ; CB 6D
 bit.a 6, (hl)                  ; CB 76
 bit.a 6, a                     ; CB 77
 bit.a 6, b                     ; CB 70
 bit.a 6, c                     ; CB 71
 bit.a 6, d                     ; CB 72
 bit.a 6, e                     ; CB 73
 bit.a 6, h                     ; CB 74
 bit.a 6, l                     ; CB 75
 bit.a 7, (hl)                  ; CB 7E
 bit.a 7, a                     ; CB 7F
 bit.a 7, b                     ; CB 78
 bit.a 7, c                     ; CB 79
 bit.a 7, d                     ; CB 7A
 bit.a 7, e                     ; CB 7B
 bit.a 7, h                     ; CB 7C
 bit.a 7, l                     ; CB 7D
 call -32768                    ; CD 00 80
 call 32767                     ; CD FF 7F
 call 65535                     ; CD FF FF
 call c, -32768                 ; DC 00 80
 call c, 32767                  ; DC FF 7F
 call c, 65535                  ; DC FF FF
 call nc, -32768                ; D4 00 80
 call nc, 32767                 ; D4 FF 7F
 call nc, 65535                 ; D4 FF FF
 call nz, -32768                ; C4 00 80
 call nz, 32767                 ; C4 FF 7F
 call nz, 65535                 ; C4 FF FF
 call z, -32768                 ; CC 00 80
 call z, 32767                  ; CC FF 7F
 call z, 65535                  ; CC FF FF
 cc -32768                      ; DC 00 80
 cc 32767                       ; DC FF 7F
 cc 65535                       ; DC FF FF
 ccf                            ; 3F
 ccf f                          ; 3F
 cma                            ; 2F
 cmc                            ; 3F
 cmp (hl)                       ; BE
 cmp -128                       ; FE 80
 cmp 127                        ; FE 7F
 cmp 255                        ; FE FF
 cmp a                          ; BF
 cmp a, (hl)                    ; BE
 cmp a, -128                    ; FE 80
 cmp a, 127                     ; FE 7F
 cmp a, 255                     ; FE FF
 cmp a, a                       ; BF
 cmp a, b                       ; B8
 cmp a, c                       ; B9
 cmp a, d                       ; BA
 cmp a, e                       ; BB
 cmp a, h                       ; BC
 cmp a, l                       ; BD
 cmp b                          ; B8
 cmp c                          ; B9
 cmp d                          ; BA
 cmp e                          ; BB
 cmp h                          ; BC
 cmp l                          ; BD
 cmp m                          ; BE
 cnc -32768                     ; D4 00 80
 cnc 32767                      ; D4 FF 7F
 cnc 65535                      ; D4 FF FF
 cnz -32768                     ; C4 00 80
 cnz 32767                      ; C4 FF 7F
 cnz 65535                      ; C4 FF FF
 cp (hl)                        ; BE
 cp -128                        ; FE 80
 cp 127                         ; FE 7F
 cp 255                         ; FE FF
 cp a                           ; BF
 cp a, (hl)                     ; BE
 cp a, -128                     ; FE 80
 cp a, 127                      ; FE 7F
 cp a, 255                      ; FE FF
 cp a, a                        ; BF
 cp a, b                        ; B8
 cp a, c                        ; B9
 cp a, d                        ; BA
 cp a, e                        ; BB
 cp a, h                        ; BC
 cp a, l                        ; BD
 cp b                           ; B8
 cp c                           ; B9
 cp d                           ; BA
 cp e                           ; BB
 cp h                           ; BC
 cp l                           ; BD
 cpi -128                       ; FE 80
 cpi 127                        ; FE 7F
 cpi 255                        ; FE FF
 cpl                            ; 2F
 cpl a                          ; 2F
 cz -32768                      ; CC 00 80
 cz 32767                       ; CC FF 7F
 cz 65535                       ; CC FF FF
 daa                            ; 27
 dad b                          ; 09
 dad bc                         ; 09
 dad d                          ; 19
 dad de                         ; 19
 dad h                          ; 29
 dad hl                         ; 29
 dad sp                         ; 39
 dcr a                          ; 3D
 dcr b                          ; 05
 dcr c                          ; 0D
 dcr d                          ; 15
 dcr e                          ; 1D
 dcr h                          ; 25
 dcr l                          ; 2D
 dcr m                          ; 35
 dcx b                          ; 0B
 dcx bc                         ; 0B
 dcx d                          ; 1B
 dcx de                         ; 1B
 dcx h                          ; 2B
 dcx hl                         ; 2B
 dcx sp                         ; 3B
 dec (hl)                       ; 35
 dec a                          ; 3D
 dec b                          ; 05
 dec bc                         ; 0B
 dec c                          ; 0D
 dec d                          ; 15
 dec de                         ; 1B
 dec e                          ; 1D
 dec h                          ; 25
 dec hl                         ; 2B
 dec l                          ; 2D
 dec sp                         ; 3B
 di                             ; F3
 djnz ASMPC                     ; 05 20 FE
 djnz b, ASMPC                  ; 05 20 FE
 ei                             ; FB
 ex (sp), hl                    ; CD @__z80asm__ex_sp_hl
 ex de, hl                      ; E5 D5 E1 D1
 halt                           ; 76
 hlt                            ; 76
 inc (hl)                       ; 34
 inc a                          ; 3C
 inc b                          ; 04
 inc bc                         ; 03
 inc c                          ; 0C
 inc d                          ; 14
 inc de                         ; 13
 inc e                          ; 1C
 inc h                          ; 24
 inc hl                         ; 23
 inc l                          ; 2C
 inc sp                         ; 33
 inr a                          ; 3C
 inr b                          ; 04
 inr c                          ; 0C
 inr d                          ; 14
 inr e                          ; 1C
 inr h                          ; 24
 inr l                          ; 2C
 inr m                          ; 34
 inx b                          ; 03
 inx bc                         ; 03
 inx d                          ; 13
 inx de                         ; 13
 inx h                          ; 23
 inx hl                         ; 23
 inx sp                         ; 33
 jc -32768                      ; DA 00 80
 jc 32767                       ; DA FF 7F
 jc 65535                       ; DA FF FF
 jmp -32768                     ; C3 00 80
 jmp 32767                      ; C3 FF 7F
 jmp 65535                      ; C3 FF FF
 jnc -32768                     ; D2 00 80
 jnc 32767                      ; D2 FF 7F
 jnc 65535                      ; D2 FF FF
 jnz -32768                     ; C2 00 80
 jnz 32767                      ; C2 FF 7F
 jnz 65535                      ; C2 FF FF
 jp (hl)                        ; E9
 jp -32768                      ; C3 00 80
 jp 32767                       ; C3 FF 7F
 jp 65535                       ; C3 FF FF
 jp c, -32768                   ; DA 00 80
 jp c, 32767                    ; DA FF 7F
 jp c, 65535                    ; DA FF FF
 jp nc, -32768                  ; D2 00 80
 jp nc, 32767                   ; D2 FF 7F
 jp nc, 65535                   ; D2 FF FF
 jp nz, -32768                  ; C2 00 80
 jp nz, 32767                   ; C2 FF 7F
 jp nz, 65535                   ; C2 FF FF
 jp z, -32768                   ; CA 00 80
 jp z, 32767                    ; CA FF 7F
 jp z, 65535                    ; CA FF FF
 jr ASMPC                       ; 18 FE
 jr c, ASMPC                    ; 38 FE
 jr nc, ASMPC                   ; 30 FE
 jr nz, ASMPC                   ; 20 FE
 jr z, ASMPC                    ; 28 FE
 jz -32768                      ; CA 00 80
 jz 32767                       ; CA FF 7F
 jz 65535                       ; CA FF FF
 ld (-32768), a                 ; EA 00 80
 ld (-32768), sp                ; 08 00 80
 ld (32767), a                  ; EA FF 7F
 ld (32767), sp                 ; 08 FF 7F
 ld (65535), a                  ; EA FF FF
 ld (65535), sp                 ; 08 FF FF
 ld (bc), a                     ; 02
 ld (bc+), a                    ; 02 03
 ld (bc-), a                    ; 02 0B
 ld (c), a                      ; E2
 ld (de), a                     ; 12
 ld (de+), a                    ; 12 13
 ld (de-), a                    ; 12 1B
 ld (hl), -128                  ; 36 80
 ld (hl), 127                   ; 36 7F
 ld (hl), 255                   ; 36 FF
 ld (hl), a                     ; 77
 ld (hl), b                     ; 70
 ld (hl), c                     ; 71
 ld (hl), d                     ; 72
 ld (hl), e                     ; 73
 ld (hl), h                     ; 74
 ld (hl), l                     ; 75
 ld (hl+), a                    ; 22
 ld (hl-), a                    ; 32
 ld a, (-32768)                 ; FA 00 80
 ld a, (32767)                  ; FA FF 7F
 ld a, (65535)                  ; FA FF FF
 ld a, (bc)                     ; 0A
 ld a, (bc+)                    ; 0A 03
 ld a, (bc-)                    ; 0A 0B
 ld a, (c)                      ; F2
 ld a, (de)                     ; 1A
 ld a, (de+)                    ; 1A 13
 ld a, (de-)                    ; 1A 1B
 ld a, (hl)                     ; 7E
 ld a, (hl+)                    ; 2A
 ld a, (hl-)                    ; 3A
 ld a, -128                     ; 3E 80
 ld a, 127                      ; 3E 7F
 ld a, 255                      ; 3E FF
 ld a, a                        ; 7F
 ld a, b                        ; 78
 ld a, c                        ; 79
 ld a, d                        ; 7A
 ld a, e                        ; 7B
 ld a, h                        ; 7C
 ld a, l                        ; 7D
 ld b, (hl)                     ; 46
 ld b, -128                     ; 06 80
 ld b, 127                      ; 06 7F
 ld b, 255                      ; 06 FF
 ld b, a                        ; 47
 ld b, b                        ; 40
 ld b, c                        ; 41
 ld b, d                        ; 42
 ld b, e                        ; 43
 ld b, h                        ; 44
 ld b, l                        ; 45
 ld bc, -32768                  ; 01 00 80
 ld bc, 32767                   ; 01 FF 7F
 ld bc, 65535                   ; 01 FF FF
 ld bc, de                      ; 42 4B
 ld bc, hl                      ; 44 4D
 ld c, (hl)                     ; 4E
 ld c, -128                     ; 0E 80
 ld c, 127                      ; 0E 7F
 ld c, 255                      ; 0E FF
 ld c, a                        ; 4F
 ld c, b                        ; 48
 ld c, c                        ; 49
 ld c, d                        ; 4A
 ld c, e                        ; 4B
 ld c, h                        ; 4C
 ld c, l                        ; 4D
 ld d, (hl)                     ; 56
 ld d, -128                     ; 16 80
 ld d, 127                      ; 16 7F
 ld d, 255                      ; 16 FF
 ld d, a                        ; 57
 ld d, b                        ; 50
 ld d, c                        ; 51
 ld d, d                        ; 52
 ld d, e                        ; 53
 ld d, h                        ; 54
 ld d, l                        ; 55
 ld de, -32768                  ; 11 00 80
 ld de, 32767                   ; 11 FF 7F
 ld de, 65535                   ; 11 FF FF
 ld de, bc                      ; 50 59
 ld de, hl                      ; 54 5D
 ld e, (hl)                     ; 5E
 ld e, -128                     ; 1E 80
 ld e, 127                      ; 1E 7F
 ld e, 255                      ; 1E FF
 ld e, a                        ; 5F
 ld e, b                        ; 58
 ld e, c                        ; 59
 ld e, d                        ; 5A
 ld e, e                        ; 5B
 ld e, h                        ; 5C
 ld e, l                        ; 5D
 ld h, (hl)                     ; 66
 ld h, -128                     ; 26 80
 ld h, 127                      ; 26 7F
 ld h, 255                      ; 26 FF
 ld h, a                        ; 67
 ld h, b                        ; 60
 ld h, c                        ; 61
 ld h, d                        ; 62
 ld h, e                        ; 63
 ld h, h                        ; 64
 ld h, l                        ; 65
 ld hl, -32768                  ; 21 00 80
 ld hl, 32767                   ; 21 FF 7F
 ld hl, 65535                   ; 21 FF FF
 ld hl, bc                      ; 60 69
 ld hl, de                      ; 62 6B
 ld hl, sp                      ; F8 00
 ld hl, sp+-128                 ; F8 80
 ld hl, sp+127                  ; F8 7F
 ld ix, -32768                  ; DD 21 00 80
 ld ix, 32767                   ; DD 21 FF 7F
 ld ix, 65535                   ; DD 21 FF FF
 ld iy, -32768                  ; FD 21 00 80
 ld iy, 32767                   ; FD 21 FF 7F
 ld iy, 65535                   ; FD 21 FF FF
 ld l, (hl)                     ; 6E
 ld l, -128                     ; 2E 80
 ld l, 127                      ; 2E 7F
 ld l, 255                      ; 2E FF
 ld l, a                        ; 6F
 ld l, b                        ; 68
 ld l, c                        ; 69
 ld l, d                        ; 6A
 ld l, e                        ; 6B
 ld l, h                        ; 6C
 ld l, l                        ; 6D
 ld sp, -32768                  ; 31 00 80
 ld sp, 32767                   ; 31 FF 7F
 ld sp, 65535                   ; 31 FF FF
 ld sp, hl                      ; F9
 lda -32768                     ; FA 00 80
 lda 32767                      ; FA FF 7F
 lda 65535                      ; FA FF FF
 ldax b                         ; 0A
 ldax bc                        ; 0A
 ldax d                         ; 1A
 ldax de                        ; 1A
 ldd                            ; CD @__z80asm__ldd
 ldd (bc), a                    ; 02 0B
 ldd (de), a                    ; 12 1B
 ldd (hl), a                    ; 32
 ldd a, (bc)                    ; 0A 0B
 ldd a, (de)                    ; 1A 1B
 ldd a, (hl)                    ; 3A
 lddr                           ; CD @__z80asm__lddr
 ldh (-128), a                  ; E0 80
 ldh (127), a                   ; E0 7F
 ldh (255), a                   ; E0 FF
 ldh (c), a                     ; E2
 ldh a, (-128)                  ; F0 80
 ldh a, (127)                   ; F0 7F
 ldh a, (255)                   ; F0 FF
 ldh a, (c)                     ; F2
 ldhl sp, -128                  ; F8 80
 ldhl sp, 127                   ; F8 7F
 ldi                            ; CD @__z80asm__ldi
 ldi (bc), a                    ; 02 03
 ldi (de), a                    ; 12 13
 ldi (hl), a                    ; 22
 ldi a, (bc)                    ; 0A 03
 ldi a, (de)                    ; 1A 13
 ldi a, (hl)                    ; 2A
 ldir                           ; CD @__z80asm__ldir
 lxi b, -32768                  ; 01 00 80
 lxi b, 32767                   ; 01 FF 7F
 lxi b, 65535                   ; 01 FF FF
 lxi bc, -32768                 ; 01 00 80
 lxi bc, 32767                  ; 01 FF 7F
 lxi bc, 65535                  ; 01 FF FF
 lxi d, -32768                  ; 11 00 80
 lxi d, 32767                   ; 11 FF 7F
 lxi d, 65535                   ; 11 FF FF
 lxi de, -32768                 ; 11 00 80
 lxi de, 32767                  ; 11 FF 7F
 lxi de, 65535                  ; 11 FF FF
 lxi h, -32768                  ; 21 00 80
 lxi h, 32767                   ; 21 FF 7F
 lxi h, 65535                   ; 21 FF FF
 lxi hl, -32768                 ; 21 00 80
 lxi hl, 32767                  ; 21 FF 7F
 lxi hl, 65535                  ; 21 FF FF
 lxi sp, -32768                 ; 31 00 80
 lxi sp, 32767                  ; 31 FF 7F
 lxi sp, 65535                  ; 31 FF FF
 mov a, a                       ; 7F
 mov a, b                       ; 78
 mov a, c                       ; 79
 mov a, d                       ; 7A
 mov a, e                       ; 7B
 mov a, h                       ; 7C
 mov a, l                       ; 7D
 mov a, m                       ; 7E
 mov b, a                       ; 47
 mov b, b                       ; 40
 mov b, c                       ; 41
 mov b, d                       ; 42
 mov b, e                       ; 43
 mov b, h                       ; 44
 mov b, l                       ; 45
 mov b, m                       ; 46
 mov c, a                       ; 4F
 mov c, b                       ; 48
 mov c, c                       ; 49
 mov c, d                       ; 4A
 mov c, e                       ; 4B
 mov c, h                       ; 4C
 mov c, l                       ; 4D
 mov c, m                       ; 4E
 mov d, a                       ; 57
 mov d, b                       ; 50
 mov d, c                       ; 51
 mov d, d                       ; 52
 mov d, e                       ; 53
 mov d, h                       ; 54
 mov d, l                       ; 55
 mov d, m                       ; 56
 mov e, a                       ; 5F
 mov e, b                       ; 58
 mov e, c                       ; 59
 mov e, d                       ; 5A
 mov e, e                       ; 5B
 mov e, h                       ; 5C
 mov e, l                       ; 5D
 mov e, m                       ; 5E
 mov h, a                       ; 67
 mov h, b                       ; 60
 mov h, c                       ; 61
 mov h, d                       ; 62
 mov h, e                       ; 63
 mov h, h                       ; 64
 mov h, l                       ; 65
 mov h, m                       ; 66
 mov l, a                       ; 6F
 mov l, b                       ; 68
 mov l, c                       ; 69
 mov l, d                       ; 6A
 mov l, e                       ; 6B
 mov l, h                       ; 6C
 mov l, l                       ; 6D
 mov l, m                       ; 6E
 mov m, a                       ; 77
 mov m, b                       ; 70
 mov m, c                       ; 71
 mov m, d                       ; 72
 mov m, e                       ; 73
 mov m, h                       ; 74
 mov m, l                       ; 75
 mvi a, -128                    ; 3E 80
 mvi a, 127                     ; 3E 7F
 mvi a, 255                     ; 3E FF
 mvi b, -128                    ; 06 80
 mvi b, 127                     ; 06 7F
 mvi b, 255                     ; 06 FF
 mvi c, -128                    ; 0E 80
 mvi c, 127                     ; 0E 7F
 mvi c, 255                     ; 0E FF
 mvi d, -128                    ; 16 80
 mvi d, 127                     ; 16 7F
 mvi d, 255                     ; 16 FF
 mvi e, -128                    ; 1E 80
 mvi e, 127                     ; 1E 7F
 mvi e, 255                     ; 1E FF
 mvi h, -128                    ; 26 80
 mvi h, 127                     ; 26 7F
 mvi h, 255                     ; 26 FF
 mvi l, -128                    ; 2E 80
 mvi l, 127                     ; 2E 7F
 mvi l, 255                     ; 2E FF
 mvi m, -128                    ; 36 80
 mvi m, 127                     ; 36 7F
 mvi m, 255                     ; 36 FF
 nop                            ; 00
 or (hl)                        ; B6
 or -128                        ; F6 80
 or 127                         ; F6 7F
 or 255                         ; F6 FF
 or a                           ; B7
 or a, (hl)                     ; B6
 or a, -128                     ; F6 80
 or a, 127                      ; F6 7F
 or a, 255                      ; F6 FF
 or a, a                        ; B7
 or a, b                        ; B0
 or a, c                        ; B1
 or a, d                        ; B2
 or a, e                        ; B3
 or a, h                        ; B4
 or a, l                        ; B5
 or b                           ; B0
 or c                           ; B1
 or d                           ; B2
 or e                           ; B3
 or h                           ; B4
 or l                           ; B5
 ora a                          ; B7
 ora b                          ; B0
 ora c                          ; B1
 ora d                          ; B2
 ora e                          ; B3
 ora h                          ; B4
 ora l                          ; B5
 ora m                          ; B6
 ori -128                       ; F6 80
 ori 127                        ; F6 7F
 ori 255                        ; F6 FF
 pchl                           ; E9
 pop af                         ; F1
 pop b                          ; C1
 pop bc                         ; C1
 pop d                          ; D1
 pop de                         ; D1
 pop h                          ; E1
 pop hl                         ; E1
 pop psw                        ; F1
 push af                        ; F5
 push b                         ; C5
 push bc                        ; C5
 push d                         ; D5
 push de                        ; D5
 push h                         ; E5
 push hl                        ; E5
 push psw                       ; F5
 ral                            ; 17
 rar                            ; 1F
 rc                             ; D8
 res 0, (hl)                    ; CB 86
 res 0, a                       ; CB 87
 res 0, b                       ; CB 80
 res 0, c                       ; CB 81
 res 0, d                       ; CB 82
 res 0, e                       ; CB 83
 res 0, h                       ; CB 84
 res 0, l                       ; CB 85
 res 1, (hl)                    ; CB 8E
 res 1, a                       ; CB 8F
 res 1, b                       ; CB 88
 res 1, c                       ; CB 89
 res 1, d                       ; CB 8A
 res 1, e                       ; CB 8B
 res 1, h                       ; CB 8C
 res 1, l                       ; CB 8D
 res 2, (hl)                    ; CB 96
 res 2, a                       ; CB 97
 res 2, b                       ; CB 90
 res 2, c                       ; CB 91
 res 2, d                       ; CB 92
 res 2, e                       ; CB 93
 res 2, h                       ; CB 94
 res 2, l                       ; CB 95
 res 3, (hl)                    ; CB 9E
 res 3, a                       ; CB 9F
 res 3, b                       ; CB 98
 res 3, c                       ; CB 99
 res 3, d                       ; CB 9A
 res 3, e                       ; CB 9B
 res 3, h                       ; CB 9C
 res 3, l                       ; CB 9D
 res 4, (hl)                    ; CB A6
 res 4, a                       ; CB A7
 res 4, b                       ; CB A0
 res 4, c                       ; CB A1
 res 4, d                       ; CB A2
 res 4, e                       ; CB A3
 res 4, h                       ; CB A4
 res 4, l                       ; CB A5
 res 5, (hl)                    ; CB AE
 res 5, a                       ; CB AF
 res 5, b                       ; CB A8
 res 5, c                       ; CB A9
 res 5, d                       ; CB AA
 res 5, e                       ; CB AB
 res 5, h                       ; CB AC
 res 5, l                       ; CB AD
 res 6, (hl)                    ; CB B6
 res 6, a                       ; CB B7
 res 6, b                       ; CB B0
 res 6, c                       ; CB B1
 res 6, d                       ; CB B2
 res 6, e                       ; CB B3
 res 6, h                       ; CB B4
 res 6, l                       ; CB B5
 res 7, (hl)                    ; CB BE
 res 7, a                       ; CB BF
 res 7, b                       ; CB B8
 res 7, c                       ; CB B9
 res 7, d                       ; CB BA
 res 7, e                       ; CB BB
 res 7, h                       ; CB BC
 res 7, l                       ; CB BD
 res.a 0, (hl)                  ; CB 86
 res.a 0, a                     ; CB 87
 res.a 0, b                     ; CB 80
 res.a 0, c                     ; CB 81
 res.a 0, d                     ; CB 82
 res.a 0, e                     ; CB 83
 res.a 0, h                     ; CB 84
 res.a 0, l                     ; CB 85
 res.a 1, (hl)                  ; CB 8E
 res.a 1, a                     ; CB 8F
 res.a 1, b                     ; CB 88
 res.a 1, c                     ; CB 89
 res.a 1, d                     ; CB 8A
 res.a 1, e                     ; CB 8B
 res.a 1, h                     ; CB 8C
 res.a 1, l                     ; CB 8D
 res.a 2, (hl)                  ; CB 96
 res.a 2, a                     ; CB 97
 res.a 2, b                     ; CB 90
 res.a 2, c                     ; CB 91
 res.a 2, d                     ; CB 92
 res.a 2, e                     ; CB 93
 res.a 2, h                     ; CB 94
 res.a 2, l                     ; CB 95
 res.a 3, (hl)                  ; CB 9E
 res.a 3, a                     ; CB 9F
 res.a 3, b                     ; CB 98
 res.a 3, c                     ; CB 99
 res.a 3, d                     ; CB 9A
 res.a 3, e                     ; CB 9B
 res.a 3, h                     ; CB 9C
 res.a 3, l                     ; CB 9D
 res.a 4, (hl)                  ; CB A6
 res.a 4, a                     ; CB A7
 res.a 4, b                     ; CB A0
 res.a 4, c                     ; CB A1
 res.a 4, d                     ; CB A2
 res.a 4, e                     ; CB A3
 res.a 4, h                     ; CB A4
 res.a 4, l                     ; CB A5
 res.a 5, (hl)                  ; CB AE
 res.a 5, a                     ; CB AF
 res.a 5, b                     ; CB A8
 res.a 5, c                     ; CB A9
 res.a 5, d                     ; CB AA
 res.a 5, e                     ; CB AB
 res.a 5, h                     ; CB AC
 res.a 5, l                     ; CB AD
 res.a 6, (hl)                  ; CB B6
 res.a 6, a                     ; CB B7
 res.a 6, b                     ; CB B0
 res.a 6, c                     ; CB B1
 res.a 6, d                     ; CB B2
 res.a 6, e                     ; CB B3
 res.a 6, h                     ; CB B4
 res.a 6, l                     ; CB B5
 res.a 7, (hl)                  ; CB BE
 res.a 7, a                     ; CB BF
 res.a 7, b                     ; CB B8
 res.a 7, c                     ; CB B9
 res.a 7, d                     ; CB BA
 res.a 7, e                     ; CB BB
 res.a 7, h                     ; CB BC
 res.a 7, l                     ; CB BD
 ret                            ; C9
 ret c                          ; D8
 ret nc                         ; D0
 ret nz                         ; C0
 ret z                          ; C8
 reti                           ; D9
 rl (hl)                        ; CB 16
 rl a                           ; CB 17
 rl b                           ; CB 10
 rl c                           ; CB 11
 rl d                           ; CB 12
 rl e                           ; CB 13
 rl h                           ; CB 14
 rl l                           ; CB 15
 rla                            ; 17
 rlc                            ; 07
 rlc (hl)                       ; CB 06
 rlc a                          ; CB 07
 rlc b                          ; CB 00
 rlc c                          ; CB 01
 rlc d                          ; CB 02
 rlc e                          ; CB 03
 rlc h                          ; CB 04
 rlc l                          ; CB 05
 rlca                           ; 07
 rnc                            ; D0
 rnz                            ; C0
 rr (hl)                        ; CB 1E
 rr a                           ; CB 1F
 rr b                           ; CB 18
 rr c                           ; CB 19
 rr d                           ; CB 1A
 rr e                           ; CB 1B
 rr h                           ; CB 1C
 rr l                           ; CB 1D
 rra                            ; 1F
 rrc                            ; 0F
 rrc (hl)                       ; CB 0E
 rrc a                          ; CB 0F
 rrc b                          ; CB 08
 rrc c                          ; CB 09
 rrc d                          ; CB 0A
 rrc e                          ; CB 0B
 rrc h                          ; CB 0C
 rrc l                          ; CB 0D
 rrca                           ; 0F
 rst 0                          ; C7
 rst 1                          ; CF
 rst 16                         ; D7
 rst 2                          ; D7
 rst 24                         ; DF
 rst 3                          ; DF
 rst 32                         ; E7
 rst 4                          ; E7
 rst 40                         ; EF
 rst 48                         ; F7
 rst 5                          ; EF
 rst 56                         ; FF
 rst 6                          ; F7
 rst 7                          ; FF
 rst 8                          ; CF
 rz                             ; C8
 sbb a                          ; 9F
 sbb b                          ; 98
 sbb c                          ; 99
 sbb d                          ; 9A
 sbb e                          ; 9B
 sbb h                          ; 9C
 sbb l                          ; 9D
 sbb m                          ; 9E
 sbc (hl)                       ; 9E
 sbc -128                       ; DE 80
 sbc 127                        ; DE 7F
 sbc 255                        ; DE FF
 sbc a                          ; 9F
 sbc a, (hl)                    ; 9E
 sbc a, -128                    ; DE 80
 sbc a, 127                     ; DE 7F
 sbc a, 255                     ; DE FF
 sbc a, a                       ; 9F
 sbc a, b                       ; 98
 sbc a, c                       ; 99
 sbc a, d                       ; 9A
 sbc a, e                       ; 9B
 sbc a, h                       ; 9C
 sbc a, l                       ; 9D
 sbc b                          ; 98
 sbc c                          ; 99
 sbc d                          ; 9A
 sbc e                          ; 9B
 sbc h                          ; 9C
 sbc l                          ; 9D
 sbi -128                       ; DE 80
 sbi 127                        ; DE 7F
 sbi 255                        ; DE FF
 scf                            ; 37
 scf f                          ; 37
 set 0, (hl)                    ; CB C6
 set 0, a                       ; CB C7
 set 0, b                       ; CB C0
 set 0, c                       ; CB C1
 set 0, d                       ; CB C2
 set 0, e                       ; CB C3
 set 0, h                       ; CB C4
 set 0, l                       ; CB C5
 set 1, (hl)                    ; CB CE
 set 1, a                       ; CB CF
 set 1, b                       ; CB C8
 set 1, c                       ; CB C9
 set 1, d                       ; CB CA
 set 1, e                       ; CB CB
 set 1, h                       ; CB CC
 set 1, l                       ; CB CD
 set 2, (hl)                    ; CB D6
 set 2, a                       ; CB D7
 set 2, b                       ; CB D0
 set 2, c                       ; CB D1
 set 2, d                       ; CB D2
 set 2, e                       ; CB D3
 set 2, h                       ; CB D4
 set 2, l                       ; CB D5
 set 3, (hl)                    ; CB DE
 set 3, a                       ; CB DF
 set 3, b                       ; CB D8
 set 3, c                       ; CB D9
 set 3, d                       ; CB DA
 set 3, e                       ; CB DB
 set 3, h                       ; CB DC
 set 3, l                       ; CB DD
 set 4, (hl)                    ; CB E6
 set 4, a                       ; CB E7
 set 4, b                       ; CB E0
 set 4, c                       ; CB E1
 set 4, d                       ; CB E2
 set 4, e                       ; CB E3
 set 4, h                       ; CB E4
 set 4, l                       ; CB E5
 set 5, (hl)                    ; CB EE
 set 5, a                       ; CB EF
 set 5, b                       ; CB E8
 set 5, c                       ; CB E9
 set 5, d                       ; CB EA
 set 5, e                       ; CB EB
 set 5, h                       ; CB EC
 set 5, l                       ; CB ED
 set 6, (hl)                    ; CB F6
 set 6, a                       ; CB F7
 set 6, b                       ; CB F0
 set 6, c                       ; CB F1
 set 6, d                       ; CB F2
 set 6, e                       ; CB F3
 set 6, h                       ; CB F4
 set 6, l                       ; CB F5
 set 7, (hl)                    ; CB FE
 set 7, a                       ; CB FF
 set 7, b                       ; CB F8
 set 7, c                       ; CB F9
 set 7, d                       ; CB FA
 set 7, e                       ; CB FB
 set 7, h                       ; CB FC
 set 7, l                       ; CB FD
 set.a 0, (hl)                  ; CB C6
 set.a 0, a                     ; CB C7
 set.a 0, b                     ; CB C0
 set.a 0, c                     ; CB C1
 set.a 0, d                     ; CB C2
 set.a 0, e                     ; CB C3
 set.a 0, h                     ; CB C4
 set.a 0, l                     ; CB C5
 set.a 1, (hl)                  ; CB CE
 set.a 1, a                     ; CB CF
 set.a 1, b                     ; CB C8
 set.a 1, c                     ; CB C9
 set.a 1, d                     ; CB CA
 set.a 1, e                     ; CB CB
 set.a 1, h                     ; CB CC
 set.a 1, l                     ; CB CD
 set.a 2, (hl)                  ; CB D6
 set.a 2, a                     ; CB D7
 set.a 2, b                     ; CB D0
 set.a 2, c                     ; CB D1
 set.a 2, d                     ; CB D2
 set.a 2, e                     ; CB D3
 set.a 2, h                     ; CB D4
 set.a 2, l                     ; CB D5
 set.a 3, (hl)                  ; CB DE
 set.a 3, a                     ; CB DF
 set.a 3, b                     ; CB D8
 set.a 3, c                     ; CB D9
 set.a 3, d                     ; CB DA
 set.a 3, e                     ; CB DB
 set.a 3, h                     ; CB DC
 set.a 3, l                     ; CB DD
 set.a 4, (hl)                  ; CB E6
 set.a 4, a                     ; CB E7
 set.a 4, b                     ; CB E0
 set.a 4, c                     ; CB E1
 set.a 4, d                     ; CB E2
 set.a 4, e                     ; CB E3
 set.a 4, h                     ; CB E4
 set.a 4, l                     ; CB E5
 set.a 5, (hl)                  ; CB EE
 set.a 5, a                     ; CB EF
 set.a 5, b                     ; CB E8
 set.a 5, c                     ; CB E9
 set.a 5, d                     ; CB EA
 set.a 5, e                     ; CB EB
 set.a 5, h                     ; CB EC
 set.a 5, l                     ; CB ED
 set.a 6, (hl)                  ; CB F6
 set.a 6, a                     ; CB F7
 set.a 6, b                     ; CB F0
 set.a 6, c                     ; CB F1
 set.a 6, d                     ; CB F2
 set.a 6, e                     ; CB F3
 set.a 6, h                     ; CB F4
 set.a 6, l                     ; CB F5
 set.a 7, (hl)                  ; CB FE
 set.a 7, a                     ; CB FF
 set.a 7, b                     ; CB F8
 set.a 7, c                     ; CB F9
 set.a 7, d                     ; CB FA
 set.a 7, e                     ; CB FB
 set.a 7, h                     ; CB FC
 set.a 7, l                     ; CB FD
 sla (hl)                       ; CB 26
 sla a                          ; CB 27
 sla b                          ; CB 20
 sla c                          ; CB 21
 sla d                          ; CB 22
 sla e                          ; CB 23
 sla h                          ; CB 24
 sla l                          ; CB 25
 sra (hl)                       ; CB 2E
 sra a                          ; CB 2F
 sra b                          ; CB 28
 sra c                          ; CB 29
 sra d                          ; CB 2A
 sra e                          ; CB 2B
 sra h                          ; CB 2C
 sra l                          ; CB 2D
 srl (hl)                       ; CB 3E
 srl a                          ; CB 3F
 srl b                          ; CB 38
 srl c                          ; CB 39
 srl d                          ; CB 3A
 srl e                          ; CB 3B
 srl h                          ; CB 3C
 srl l                          ; CB 3D
 sta -32768                     ; EA 00 80
 sta 32767                      ; EA FF 7F
 sta 65535                      ; EA FF FF
 stax b                         ; 02
 stax bc                        ; 02
 stax d                         ; 12
 stax de                        ; 12
 stc                            ; 37
 stop                           ; 10 00
 sub (hl)                       ; 96
 sub -128                       ; D6 80
 sub 127                        ; D6 7F
 sub 255                        ; D6 FF
 sub a                          ; 97
 sub a, (hl)                    ; 96
 sub a, -128                    ; D6 80
 sub a, 127                     ; D6 7F
 sub a, 255                     ; D6 FF
 sub a, a                       ; 97
 sub a, b                       ; 90
 sub a, c                       ; 91
 sub a, d                       ; 92
 sub a, e                       ; 93
 sub a, h                       ; 94
 sub a, l                       ; 95
 sub b                          ; 90
 sub c                          ; 91
 sub d                          ; 92
 sub e                          ; 93
 sub h                          ; 94
 sub l                          ; 95
 sub m                          ; 96
 sui -128                       ; D6 80
 sui 127                        ; D6 7F
 sui 255                        ; D6 FF
 swap (hl)                      ; CB 36
 swap a                         ; CB 37
 swap b                         ; CB 30
 swap c                         ; CB 31
 swap d                         ; CB 32
 swap e                         ; CB 33
 swap h                         ; CB 34
 swap l                         ; CB 35
 xor (hl)                       ; AE
 xor -128                       ; EE 80
 xor 127                        ; EE 7F
 xor 255                        ; EE FF
 xor a                          ; AF
 xor a, (hl)                    ; AE
 xor a, -128                    ; EE 80
 xor a, 127                     ; EE 7F
 xor a, 255                     ; EE FF
 xor a, a                       ; AF
 xor a, b                       ; A8
 xor a, c                       ; A9
 xor a, d                       ; AA
 xor a, e                       ; AB
 xor a, h                       ; AC
 xor a, l                       ; AD
 xor b                          ; A8
 xor c                          ; A9
 xor d                          ; AA
 xor e                          ; AB
 xor h                          ; AC
 xor l                          ; AD
 xra a                          ; AF
 xra b                          ; A8
 xra c                          ; A9
 xra d                          ; AA
 xra e                          ; AB
 xra h                          ; AC
 xra l                          ; AD
 xra m                          ; AE
 xri -128                       ; EE 80
 xri 127                        ; EE 7F
 xri 255                        ; EE FF
