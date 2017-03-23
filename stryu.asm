07F83E: 4EB8 448A                  jsr     $448a.w
07F842: 6600 0830                  bne     $80074 ;Ground Normals
07F846: 7000                       moveq   #$0, D0
07F848: 4E75                       rts

07F84A: 4EB8 448A                  jsr     $448a.w
07F84E: 6600 0A0E                  bne     $8025e; Crouching normals
07F852: 7000                       moveq   #$0, D0
07F854: 4E75                       rts

07F856: 4EB8 448A                  jsr     $448a.w
07F85A: 6600 0A4A                  bne     $802a6; Jump Normals
07F85E: 7000                       moveq   #$0, D0
07F860: 4E75                       rts

;Special Moves Needs Clean up
07F862: 422E 016D                  clr.b   ($16d,A6)
07F866: 6100 0050                  bsr     $7f8b8
07F86A: 6100 033C                  bsr     $7fba8
07F86E: 6100 01DA                  bsr     $7fa4a
07F872: 6100 065E                  bsr     $7fed2
07F876: 6000 04F6                  bra     $7fd6e
07F87A: 4A2E 0169                  tst.b   ($169,A6)
07F87E: 672A                       beq     $7f8aa
07F880: 0C2E 0008 016A             cmpi.b  #$8, ($16a,A6)
07F886: 6608                       bne     $7f890
07F888: 4EB8 452A                  jsr     $452a.w
07F88C: 661C                       bne     $7f8aa
07F88E: 6006                       bra     $7f896
07F890: 4EB8 4542                  jsr     $4542.w
07F894: 6614                       bne     $7f8aa
07F896: 1D6E 016A 0088             move.b  ($16a,A6), ($88,A6)
07F89C: 7000                       moveq   #$0, D0
07F89E: 102E 0088                  move.b  ($88,A6), D0
07F8A2: 323B 000A                  move.w  ($a,PC,D0.w), D1
07F8A6: 4EFB 1006                  jmp     ($6,PC,D1.w)
07F8AA: 7000                       moveq   #$0, D0
07F8AC: 4E75                       rts
07F8AE: 05F4 0168                  bset    D2, INVALID 34
07F8B2: 02CA                       dc.w    $02ca; ILLEGAL
07F8B4: 0796                       bclr    D3, (A6)
07F8B6: 0496 7000 102E             subi.l  #$7000102e, (A6)
07F8BC: 0090 323B 0006             ori.l   #$323b0006, (A0)
07F8C2: 4EFB 1002                  jmp     ($2,PC,D1.w)
07F8C6: 0008                       dc.w    $0008; ILLEGAL
07F8C8: 0024 0042                  ori.b   #$42, -(A4)
07F8CC: 0076 302E 03A6             ori.w   #$302e, INVALID 36
07F8D2: 0240 000F                  andi.w  #$f, D0
07F8D6: 0C40 0004                  cmpi.w  #$4, D0
07F8DA: 6608                       bne     $7f8e4
07F8DC: 542E 0090                  addq.b  #2, ($90,A6)
07F8E0: 6000 00DE                  bra     $7f9c0
07F8E4: 422E 0090                  clr.b   ($90,A6)
07F8E8: 4E75                       rts
07F8EA: 532E 0091                  subq.b  #1, ($91,A6)
07F8EE: 67F4                       beq     $7f8e4
07F8F0: 302E 03A6                  move.w  ($3a6,A6), D0
07F8F4: 0240 000F                  andi.w  #$f, D0
07F8F8: 0C40 0005                  cmpi.w  #$5, D0
07F8FC: 6608                       bne     $7f906
07F8FE: 542E 0090                  addq.b  #2, ($90,A6)
07F902: 6000 00BC                  bra     $7f9c0
07F906: 4E75                       rts
07F908: 532E 0091                  subq.b  #1, ($91,A6)
07F90C: 67D6                       beq     $7f8e4
07F90E: 302E 03A6                  move.w  ($3a6,A6), D0
07F912: 0240 000F                  andi.w  #$f, D0
07F916: 0C40 0001                  cmpi.w  #$1, D0
07F91A: 661E                       bne     $7f93a
07F91C: 542E 0090                  addq.b  #2, ($90,A6)
07F920: 1D7C 000C 0091             move.b  #$c, ($91,A6)
07F926: 323C 0700                  move.w  #$700, D1
07F92A: 4EB8 44D0                  jsr     $44d0.w
07F92E: 6626                       bne     $7f956
07F930: 323C 0700                  move.w  #$700, D1
07F934: 4EB8 44DE                  jsr     $44de.w
07F938: 661C                       bne     $7f956
07F93A: 4E75                       rts
07F93C: 532E 0091                  subq.b  #1, ($91,A6)
07F940: 67A2                       beq     $7f8e4
07F942: 323C 0700                  move.w  #$700, D1
07F946: 4EB8 44D0                  jsr     $44d0.w
07F94A: 660A                       bne     $7f956
07F94C: 323C 0700                  move.w  #$700, D1
07F950: 4EB8 44DE                  jsr     $44de.w
07F954: 674E                       beq     $7f9a4
07F956: 7200                       moveq   #$0, D1
07F958: 0800 0008                  btst    #$8, D0
07F95C: 660A                       bne     $7f968
07F95E: 7202                       moveq   #$2, D1
07F960: 0800 0009                  btst    #$9, D0
07F964: 6602                       bne     $7f968
07F966: 7204                       moveq   #$4, D1
07F968: 303B 1050                  move.w  ($50,PC,D1.w), D0
07F96C: B02E 0091                  cmp.b   ($91,A6), D0
07F970: 6232                       bhi     $7f9a4
07F972: 1D41 0092                  move.b  D1, ($92,A6)
07F976: 4A2E 0181                  tst.b   ($181,A6)
07F97A: 6674                       bne     $7f9f0
07F97C: 4A2E 016D                  tst.b   ($16d,A6)
07F980: 660A                       bne     $7f98c
07F982: 1D7C 0002 016A             move.b  #$2, ($16a,A6)
07F988: 1D41 016B                  move.b  D1, ($16b,A6)
07F98C: 4EB8 4542                  jsr     $4542.w
07F990: 6714                       beq     $7f9a6
07F992: 4A2E 016D                  tst.b   ($16d,A6)
07F996: 660C                       bne     $7f9a4
07F998: 4A2E 0169                  tst.b   ($169,A6)
07F99C: 6706                       beq     $7f9a4
07F99E: 1D7C 0001 016D             move.b  #$1, ($16d,A6)
07F9A4: 4E75                       rts
07F9A6: 422E 009C                  clr.b   ($9c,A6)
07F9AA: 1D7C 0002 0088             move.b  #$2, ($88,A6)
07F9B0: 1D6E 0092 0093             move.b  ($92,A6), ($93,A6)
07F9B6: 6000 0068                  bra     $7fa20
07F9BA: 0000 0002                  ori.b   #$2, D0
07F9BE: 0004 4EB8                  ori.b   #$b8, D4
07F9C2: 2E96                       move.l  (A6), (A7)
07F9C4: 0240 001F                  andi.w  #$1f, D0
07F9C8: 1D7B 0006 0091             move.b  ($6,PC,D0.w), ($91,A6)
07F9CE: 4E75                       rts

07F9D0:
0A08 080B 0808 0908 0908 080A 0808 0B0D
080F 0908 0A0C 0808 0B08 0908 0E0C 080A

07F9F0: 0C6E 0038 000A             cmpi.w  #$38, ($a,A6)
07F9F6: 6506                       bcs     $7f9fe
07F9F8: 4EB8 4532                  jsr     $4532.w
07F9FC: 6702                       beq     $7fa00
07F9FE: 4E75                       rts
07FA00: 1D7C 0001 009C             move.b  #$1, ($9c,A6)
07FA06: 1D7C 0002 0088             move.b  #$2, ($88,A6)
07FA0C: 1D6E 0092 0093             move.b  ($92,A6), ($93,A6)
07FA12: 6000 000C                  bra     $7fa20
07FA16: 1D6E 016B 0093             move.b  ($16b,A6), ($93,A6)
07FA1C: 422E 009C                  clr.b   ($9c,A6)
07FA20: 1D7C 000C 0003             move.b  #$c, ($3,A6)
07FA26: 422E 0090                  clr.b   ($90,A6)
07FA2A: 422E 0004                  clr.b   ($4,A6)
07FA2E: 422E 0005                  clr.b   ($5,A6)
07FA32: 1D7C 0001 018B             move.b  #$1, ($18b,A6)
07FA38: 526D 0DE2                  addq.w  #1, ($de2,A5)
07FA3C: 4EB8 5B60                  jsr     $5b60.w
07FA40: 7006                       moveq   #$6, D0
07FA42: 4EB8 4052                  jsr     $4052.w
07FA46: 7001                       moveq   #$1, D0
07FA48: 4E75                       rts
07FA4A: 7000                       moveq   #$0, D0
07FA4C: 102E 0098                  move.b  ($98,A6), D0
07FA50: 323B 0006                  move.w  ($6,PC,D0.w), D1
07FA54: 4EFB 1002                  jmp     ($2,PC,D1.w)
07FA58: 0008                       dc.w    $0008; ILLEGAL
07FA5A: 0024 0042                  ori.b   #$42, -(A4)
07FA5E: 0076 302E 03A6             ori.w   #$302e, INVALID 36
07FA64: 0240 000F                  andi.w  #$f, D0
07FA68: 0C40 0002                  cmpi.w  #$2, D0
07FA6C: 6608                       bne     $7fa76
07FA6E: 542E 0098                  addq.b  #2, ($98,A6)
07FA72: 6000 00D4                  bra     $7fb48
07FA76: 422E 0098                  clr.b   ($98,A6)
07FA7A: 4E75                       rts
07FA7C: 532E 0099                  subq.b  #1, ($99,A6)
07FA80: 67F4                       beq     $7fa76
07FA82: 302E 03A6                  move.w  ($3a6,A6), D0
07FA86: 0240 000F                  andi.w  #$f, D0
07FA8A: 0C40 0004                  cmpi.w  #$4, D0
07FA8E: 6608                       bne     $7fa98
07FA90: 542E 0098                  addq.b  #2, ($98,A6)
07FA94: 6000 00B2                  bra     $7fb48
07FA98: 4E75                       rts
07FA9A: 532E 0099                  subq.b  #1, ($99,A6)
07FA9E: 67D6                       beq     $7fa76
07FAA0: 302E 03A6                  move.w  ($3a6,A6), D0
07FAA4: 0240 000F                  andi.w  #$f, D0
07FAA8: 0C40 0006                  cmpi.w  #$6, D0
07FAAC: 661E                       bne     $7facc
07FAAE: 542E 0098                  addq.b  #2, ($98,A6)
07FAB2: 1D7C 000C 0099             move.b  #$c, ($99,A6)
07FAB8: 323C 0070                  move.w  #$70, D1
07FABC: 4EB8 44D0                  jsr     $44d0.w
07FAC0: 6626                       bne     $7fae8
07FAC2: 323C 0070                  move.w  #$70, D1
07FAC6: 4EB8 44DE                  jsr     $44de.w
07FACA: 661C                       bne     $7fae8
07FACC: 4E75                       rts
07FACE: 532E 0099                  subq.b  #1, ($99,A6)
07FAD2: 67A2                       beq     $7fa76
07FAD4: 323C 0070                  move.w  #$70, D1
07FAD8: 4EB8 44D0                  jsr     $44d0.w
07FADC: 660A                       bne     $7fae8
07FADE: 323C 0070                  move.w  #$70, D1
07FAE2: 4EB8 44DE                  jsr     $44de.w
07FAE6: 6748                       beq     $7fb30
07FAE8: 7200                       moveq   #$0, D1
07FAEA: 0800 0004                  btst    #$4, D0
07FAEE: 660A                       bne     $7fafa
07FAF0: 7202                       moveq   #$2, D1
07FAF2: 0800 0005                  btst    #$5, D0
07FAF6: 6602                       bne     $7fafa
07FAF8: 7204                       moveq   #$4, D1
07FAFA: 303B 1046                  move.w  ($46,PC,D1.w), D0
07FAFE: B02E 0099                  cmp.b   ($99,A6), D0
07FB02: 622C                       bhi     $7fb30
07FB04: 1D41 009A                  move.b  D1, ($9a,A6)
07FB08: 4A2E 016D                  tst.b   ($16d,A6)
07FB0C: 660A                       bne     $7fb18
07FB0E: 1D7C 0004 016A             move.b  #$4, ($16a,A6)
07FB14: 1D41 016B                  move.b  D1, ($16b,A6)
07FB18: 4EB8 4542                  jsr     $4542.w
07FB1C: 6714                       beq     $7fb32
07FB1E: 4A2E 016D                  tst.b   ($16d,A6)
07FB22: 660C                       bne     $7fb30
07FB24: 4A2E 0169                  tst.b   ($169,A6)
07FB28: 6706                       beq     $7fb30
07FB2A: 1D7C 0001 016D             move.b  #$1, ($16d,A6)
07FB30: 4E75                       rts
07FB32: 1D7C 0004 0088             move.b  #$4, ($88,A6)
07FB38: 1D6E 009A 009B             move.b  ($9a,A6), ($9b,A6)
07FB3E: 6000 003E                  bra     $7fb7e
07FB42: 0000 0002                  ori.b   #$2, D0
07FB46: 0004 4EB8                  ori.b   #$b8, D4
07FB4A: 2E96                       move.l  (A6), (A7)
07FB4C: 0240 001F                  andi.w  #$1f, D0
07FB50: 1D7B 0006 0099             move.b  ($6,PC,D0.w), ($99,A6)
07FB56: 4E75                       rts
07FB58: 0A08                       dc.w    $0a08; ILLEGAL
07FB5A: 080B                       dc.w    $080b; ILLEGAL
07FB5C: 0808                       dc.w    $0808; ILLEGAL
07FB5E: 0908 0908                  movep.w ($908,A0), D4
07FB62: 080A                       dc.w    $080a; ILLEGAL
07FB64: 0808                       dc.w    $0808; ILLEGAL
07FB66: 0B0D 080F                  movep.w ($80f,A5), D5
07FB6A: 0908 0A0C                  movep.w ($a0c,A0), D4
07FB6E: 0808                       dc.w    $0808; ILLEGAL
07FB70: 0B08 0908                  movep.w ($908,A0), D5
07FB74: 0E0C                       dc.w    $0e0c; ILLEGAL
07FB76: 080A                       dc.w    $080a; ILLEGAL
07FB78: 1D6E 016B 009B             move.b  ($16b,A6), ($9b,A6)
07FB7E: 1D7C 000C 0003             move.b  #$c, ($3,A6)
07FB84: 422E 0098                  clr.b   ($98,A6)
07FB88: 422E 0004                  clr.b   ($4,A6)
07FB8C: 422E 0005                  clr.b   ($5,A6)
07FB90: 1D7C 0001 018B             move.b  #$1, ($18b,A6)
07FB96: 526D 0DE2                  addq.w  #1, ($de2,A5)
07FB9A: 4EB8 5B60                  jsr     $5b60.w
07FB9E: 7007                       moveq   #$7, D0
07FBA0: 4EB8 4052                  jsr     $4052.w
07FBA4: 7001                       moveq   #$1, D0
07FBA6: 4E75                       rts
07FBA8: 4EB8 4038                  jsr     $4038.w
07FBAC: 6600 0056                  bne     $7fc04
07FBB0: 7000                       moveq   #$0, D0
07FBB2: 102E 00A0                  move.b  ($a0,A6), D0
07FBB6: 323B 0006                  move.w  ($6,PC,D0.w), D1
07FBBA: 4EFB 1002                  jmp     ($2,PC,D1.w)
07FBBE: 000E                       dc.w    $000e; ILLEGAL
07FBC0: 002A 0048 0064             ori.b   #$48, ($64,A2)
07FBC6: 0080 009C 00D0             ori.l   #$9c00d0, D0
07FBCC: 302E 03A6                  move.w  ($3a6,A6), D0
07FBD0: 0240 000F                  andi.w  #$f, D0
07FBD4: 0C40 0004                  cmpi.w  #$4, D0
07FBD8: 6608                       bne     $7fbe2
07FBDA: 542E 00A0                  addq.b  #2, ($a0,A6)
07FBDE: 6000 0130                  bra     $7fd10
07FBE2: 422E 00A0                  clr.b   ($a0,A6)
07FBE6: 4E75                       rts
07FBE8: 532E 00A1                  subq.b  #1, ($a1,A6)
07FBEC: 67F4                       beq     $7fbe2
07FBEE: 302E 03A6                  move.w  ($3a6,A6), D0
07FBF2: 0240 000F                  andi.w  #$f, D0
07FBF6: 0C40 0006                  cmpi.w  #$6, D0
07FBFA: 6608                       bne     $7fc04
07FBFC: 542E 00A0                  addq.b  #2, ($a0,A6)
07FC00: 6000 010E                  bra     $7fd10
07FC04: 4E75                       rts
07FC06: 532E 00A1                  subq.b  #1, ($a1,A6)
07FC0A: 67D6                       beq     $7fbe2
07FC0C: 302E 03A6                  move.w  ($3a6,A6), D0
07FC10: 0240 000F                  andi.w  #$f, D0
07FC14: 0C40 0002                  cmpi.w  #$2, D0
07FC18: 66EA                       bne     $7fc04
07FC1A: 542E 00A0                  addq.b  #2, ($a0,A6)
07FC1E: 6000 00F0                  bra     $7fd10
07FC22: 532E 00A1                  subq.b  #1, ($a1,A6)
07FC26: 67BA                       beq     $7fbe2
07FC28: 302E 03A6                  move.w  ($3a6,A6), D0
07FC2C: 0240 000F                  andi.w  #$f, D0
07FC30: 0C40 0004                  cmpi.w  #$4, D0
07FC34: 66CE                       bne     $7fc04
07FC36: 542E 00A0                  addq.b  #2, ($a0,A6)
07FC3A: 6000 00D4                  bra     $7fd10
07FC3E: 532E 00A1                  subq.b  #1, ($a1,A6)
07FC42: 679E                       beq     $7fbe2
07FC44: 302E 03A6                  move.w  ($3a6,A6), D0
07FC48: 0240 000F                  andi.w  #$f, D0
07FC4C: 0C40 0006                  cmpi.w  #$6, D0
07FC50: 66B2                       bne     $7fc04
07FC52: 542E 00A0                  addq.b  #2, ($a0,A6)
07FC56: 6000 00B8                  bra     $7fd10
07FC5A: 532E 00A1                  subq.b  #1, ($a1,A6)
07FC5E: 6782                       beq     $7fbe2
07FC60: 302E 03A6                  move.w  ($3a6,A6), D0
07FC64: 0240 000F                  andi.w  #$f, D0
07FC68: 0C40 0002                  cmpi.w  #$2, D0
07FC6C: 6696                       bne     $7fc04
07FC6E: 542E 00A0                  addq.b  #2, ($a0,A6)
07FC72: 1D7C 000C 00A1             move.b  #$c, ($a1,A6)
07FC78: 323C 0070                  move.w  #$70, D1
07FC7C: 4EB8 44D0                  jsr     $44d0.w
07FC80: 6628                       bne     $7fcaa
07FC82: 323C 0070                  move.w  #$70, D1
07FC86: 4EB8 44DE                  jsr     $44de.w
07FC8A: 661E                       bne     $7fcaa
07FC8C: 4E75                       rts
07FC8E: 532E 00A1                  subq.b  #1, ($a1,A6)
07FC92: 6700 FF4E                  beq     $7fbe2
07FC96: 323C 0070                  move.w  #$70, D1
07FC9A: 4EB8 44D0                  jsr     $44d0.w
07FC9E: 660A                       bne     $7fcaa
07FCA0: 323C 0070                  move.w  #$70, D1
07FCA4: 4EB8 44DE                  jsr     $44de.w
07FCA8: 674E                       beq     $7fcf8
07FCAA: 7204                       moveq   #$4, D1
07FCAC: 0800 0004                  btst    #$4, D0
07FCB0: 660A                       bne     $7fcbc
07FCB2: 7204                       moveq   #$4, D1
07FCB4: 0800 0005                  btst    #$5, D0
07FCB8: 6602                       bne     $7fcbc
07FCBA: 7204                       moveq   #$4, D1
07FCBC: 303C 0002                  move.w  #$2, D0
07FCC0: B02E 00A1                  cmp.b   ($a1,A6), D0
07FCC4: 6232                       bhi     $7fcf8
07FCC6: 4A6E 01D4                  tst.w   ($1d4,A6)
07FCCA: 662C                       bne     $7fcf8
07FCCC: 1D41 00A2                  move.b  D1, ($a2,A6)
07FCD0: 4A2E 016D                  tst.b   ($16d,A6)
07FCD4: 660A                       bne     $7fce0
07FCD6: 1D7C 0008 016A             move.b  #$8, ($16a,A6)
07FCDC: 1D41 016B                  move.b  D1, ($16b,A6)
07FCE0: 4EB8 452A                  jsr     $452a.w

07FCE4: 6714                       beq     $7fcfa
07FCE6: 4A2E 016D                  tst.b   ($16d,A6)
07FCEA: 660C                       bne     $7fcf8
07FCEC: 4A2E 0169                  tst.b   ($169,A6)
07FCF0: 6706                       beq     $7fcf8
07FCF2: 1D7C 0001 016D             move.b  #$1, ($16d,A6)
07FCF8: 4E75                       rts

07FCFA: 1D7C 0008 0088             move.b  #$8, ($88,A6)
07FD00: 1D6E 00A2 00A3             move.b  ($a2,A6), ($a3,A6)
07FD06: 6000 0042                  bra     $7fd4a
07FD0A: 0000 0002                  ori.b   #$2, D0
07FD0E: 0004 4EB8                  ori.b   #$b8, D4
07FD12: 2E96                       move.l  (A6), (A7)
07FD14: 0240 001F                  andi.w  #$1f, D0
07FD18: 1D7B 000A 00A1             move.b  ($a,PC,D0.w), ($a1,A6)
07FD1E: 502E 00A1                  addq.b  #8, ($a1,A6)
07FD22: 4E75                       rts
07FD24: 0A08                       dc.w    $0a08; ILLEGAL
07FD26: 080B                       dc.w    $080b; ILLEGAL
07FD28: 0808                       dc.w    $0808; ILLEGAL
07FD2A: 0908 0908                  movep.w ($908,A0), D4
07FD2E: 080A                       dc.w    $080a; ILLEGAL
07FD30: 0808                       dc.w    $0808; ILLEGAL
07FD32: 0B0D 080F                  movep.w ($80f,A5), D5
07FD36: 0908 0A0C                  movep.w ($a0c,A0), D4
07FD3A: 0808                       dc.w    $0808; ILLEGAL
07FD3C: 0B08 0908                  movep.w ($908,A0), D5
07FD40: 0E0C                       dc.w    $0e0c; ILLEGAL
07FD42: 080A                       dc.w    $080a; ILLEGAL
07FD44: 1D6E 016B 00A3             move.b  ($16b,A6), ($a3,A6)
07FD4A: 1D7C 000C 0003             move.b  #$c, ($3,A6)
07FD50: 422E 00A0                  clr.b   ($a0,A6)
07FD54: 422E 0004                  clr.b   ($4,A6)
07FD58: 422E 0005                  clr.b   ($5,A6)
07FD5C: 1D7C 0001 018B             move.b  #$1, ($18b,A6)
07FD62: 526D 0DE2                  addq.w  #1, ($de2,A5)
07FD66: 4EB8 5B60                  jsr     $5b60.w
07FD6A: 7001                       moveq   #$1, D0
07FD6C: 4E75                       rts
07FD6E: 7000                       moveq   #$0, D0
07FD70: 102E 0094                  move.b  ($94,A6), D0
07FD74: 323B 0006                  move.w  ($6,PC,D0.w), D1
07FD78: 4EFB 1002                  jmp     ($2,PC,D1.w)
07FD7C: 0008                       dc.w    $0008; ILLEGAL
07FD7E: 0024 0042                  ori.b   #$42, -(A4)
07FD82: 0076 302E 03A6             ori.w   #$302e, INVALID 36
07FD88: 0240 000F                  andi.w  #$f, D0
07FD8C: 0C40 0004                  cmpi.w  #$4, D0
07FD90: 6608                       bne     $7fd9a
07FD92: 542E 0094                  addq.b  #2, ($94,A6)
07FD96: 6000 00DA                  bra     $7fe72
07FD9A: 422E 0094                  clr.b   ($94,A6)
07FD9E: 4E75                       rts
07FDA0: 532E 0095                  subq.b  #1, ($95,A6)
07FDA4: 67F4                       beq     $7fd9a
07FDA6: 302E 03A6                  move.w  ($3a6,A6), D0
07FDAA: 0240 000F                  andi.w  #$f, D0
07FDAE: 0C40 0006                  cmpi.w  #$6, D0
07FDB2: 6608                       bne     $7fdbc
07FDB4: 542E 0094                  addq.b  #2, ($94,A6)
07FDB8: 6000 00B8                  bra     $7fe72
07FDBC: 4E75                       rts
07FDBE: 532E 0095                  subq.b  #1, ($95,A6)
07FDC2: 67D6                       beq     $7fd9a
07FDC4: 302E 03A6                  move.w  ($3a6,A6), D0
07FDC8: 0240 000F                  andi.w  #$f, D0
07FDCC: 0C40 0002                  cmpi.w  #$2, D0
07FDD0: 661E                       bne     $7fdf0
07FDD2: 542E 0094                  addq.b  #2, ($94,A6)
07FDD6: 1D7C 000C 0095             move.b  #$c, ($95,A6)
07FDDC: 323C 0070                  move.w  #$70, D1
07FDE0: 4EB8 44D0                  jsr     $44d0.w
07FDE4: 6626                       bne     $7fe0c
07FDE6: 323C 0070                  move.w  #$70, D1
07FDEA: 4EB8 44DE                  jsr     $44de.w
07FDEE: 661C                       bne     $7fe0c
07FDF0: 4E75                       rts
07FDF2: 532E 0095                  subq.b  #1, ($95,A6)
07FDF6: 67A2                       beq     $7fd9a
07FDF8: 323C 0070                  move.w  #$70, D1
07FDFC: 4EB8 44D0                  jsr     $44d0.w
07FE00: 660A                       bne     $7fe0c
07FE02: 323C 0070                  move.w  #$70, D1
07FE06: 4EB8 44DE                  jsr     $44de.w
07FE0A: 674E                       beq     $7fe5a
07FE0C: 7200                       moveq   #$0, D1
07FE0E: 0800 0004                  btst    #$4, D0
07FE12: 660A                       bne     $7fe1e
07FE14: 7202                       moveq   #$2, D1
07FE16: 0800 0005                  btst    #$5, D0
07FE1A: 6602                       bne     $7fe1e
07FE1C: 7204                       moveq   #$4, D1
07FE1E: 303B 104C                  move.w  ($4c,PC,D1.w), D0
07FE22: B02E 0095                  cmp.b   ($95,A6), D0
07FE26: 6232                       bhi     $7fe5a
07FE28: 4A6E 01D4                  tst.w   ($1d4,A6)
07FE2C: 662C                       bne     $7fe5a
07FE2E: 1D41 0096                  move.b  D1, ($96,A6)
07FE32: 4A2E 016D                  tst.b   ($16d,A6)
07FE36: 660A                       bne     $7fe42
07FE38: 1D7C 0000 016A             move.b  #$0, ($16a,A6)
07FE3E: 1D41 016B                  move.b  D1, ($16b,A6)
07FE42: 4EB8 4542                  jsr     $4542.w
07FE46: 6714                       beq     $7fe5c
07FE48: 4A2E 016D                  tst.b   ($16d,A6)
07FE4C: 660C                       bne     $7fe5a
07FE4E: 4A2E 0169                  tst.b   ($169,A6)
07FE52: 6706                       beq     $7fe5a
07FE54: 1D7C 0001 016D             move.b  #$1, ($16d,A6)
07FE5A: 4E75                       rts
07FE5C: 1D7C 0000 0088             move.b  #$0, ($88,A6)
07FE62: 1D6E 0096 0097             move.b  ($96,A6), ($97,A6)
07FE68: 6000 003E                  bra     $7fea8
07FE6C: 0000 0002                  ori.b   #$2, D0
07FE70: 0004 4EB8                  ori.b   #$b8, D4
07FE74: 2E96                       move.l  (A6), (A7)
07FE76: 0240 001F                  andi.w  #$1f, D0
07FE7A: 1D7B 0006 0095             move.b  ($6,PC,D0.w), ($95,A6)
07FE80: 4E75                       rts
07FE82: 0A08                       dc.w    $0a08; ILLEGAL
07FE84: 080B                       dc.w    $080b; ILLEGAL
07FE86: 0808                       dc.w    $0808; ILLEGAL
07FE88: 0908 0908                  movep.w ($908,A0), D4
07FE8C: 080A                       dc.w    $080a; ILLEGAL
07FE8E: 0808                       dc.w    $0808; ILLEGAL
07FE90: 0B0D 080F                  movep.w ($80f,A5), D5
07FE94: 0908 0A0C                  movep.w ($a0c,A0), D4
07FE98: 0808                       dc.w    $0808; ILLEGAL
07FE9A: 0B08 0908                  movep.w ($908,A0), D5
07FE9E: 0E0C                       dc.w    $0e0c; ILLEGAL
07FEA0: 080A                       dc.w    $080a; ILLEGAL
07FEA2: 1D6E 016B 0097             move.b  ($16b,A6), ($97,A6)
07FEA8: 1D7C 000C 0003             move.b  #$c, ($3,A6)
07FEAE: 422E 0094                  clr.b   ($94,A6)
07FEB2: 422E 0004                  clr.b   ($4,A6)
07FEB6: 422E 0005                  clr.b   ($5,A6)
07FEBA: 1D7C 0001 018B             move.b  #$1, ($18b,A6)
07FEC0: 526D 0DE2                  addq.w  #1, ($de2,A5)
07FEC4: 4EB8 5B60                  jsr     $5b60.w
07FEC8: 7002                       moveq   #$2, D0
07FECA: 4EB8 4052                  jsr     $4052.w
07FECE: 7001                       moveq   #$1, D0
07FED0: 4E75                       rts
07FED2: 7000                       moveq   #$0, D0
07FED4: 102E 00E0                  move.b  ($e0,A6), D0
07FED8: 323B 0006                  move.w  ($6,PC,D0.w), D1
07FEDC: 4EFB 1002                  jmp     ($2,PC,D1.w)
07FEE0: 000C                       dc.w    $000c; ILLEGAL
07FEE2: 0028 0044 0060             ori.b   #$44, ($60,A0)
07FEE8: 007E                       dc.w    $007e; ILLEGAL
07FEEA: 00B2 302E 03A6 0240        ori.l   #$302e03a6, INVALID 32
07FEF2: 000F                       dc.w    $000f; ILLEGAL
07FEF4: 0C40 0001                  cmpi.w  #$1, D0
07FEF8: 6608                       bne     $7ff02
07FEFA: 542E 00E0                  addq.b  #2, ($e0,A6)
07FEFE: 6000 0114                  bra     $80014
07FF02: 422E 00E0                  clr.b   ($e0,A6)
07FF06: 4E75                       rts
07FF08: 532E 00E1                  subq.b  #1, ($e1,A6)
07FF0C: 67F4                       beq     $7ff02
07FF0E: 302E 03A6                  move.w  ($3a6,A6), D0
07FF12: 0240 000F                  andi.w  #$f, D0
07FF16: 0C40 0005                  cmpi.w  #$5, D0
07FF1A: 6640                       bne     $7ff5c
07FF1C: 542E 00E0                  addq.b  #2, ($e0,A6)
07FF20: 6000 00F2                  bra     $80014
07FF24: 532E 00E1                  subq.b  #1, ($e1,A6)
07FF28: 67D8                       beq     $7ff02
07FF2A: 302E 03A6                  move.w  ($3a6,A6), D0
07FF2E: 0240 000F                  andi.w  #$f, D0
07FF32: 0C40 0004                  cmpi.w  #$4, D0
07FF36: 6624                       bne     $7ff5c
07FF38: 542E 00E0                  addq.b  #2, ($e0,A6)
07FF3C: 6000 00D6                  bra     $80014
07FF40: 532E 00E1                  subq.b  #1, ($e1,A6)
07FF44: 67BC                       beq     $7ff02
07FF46: 302E 03A6                  move.w  ($3a6,A6), D0
07FF4A: 0240 000F                  andi.w  #$f, D0
07FF4E: 0C40 0006                  cmpi.w  #$6, D0
07FF52: 6608                       bne     $7ff5c
07FF54: 542E 00E0                  addq.b  #2, ($e0,A6)
07FF58: 6000 00BA                  bra     $80014
07FF5C: 4E75                       rts
07FF5E: 532E 00E1                  subq.b  #1, ($e1,A6)
07FF62: 679E                       beq     $7ff02
07FF64: 302E 03A6                  move.w  ($3a6,A6), D0
07FF68: 0240 000F                  andi.w  #$f, D0
07FF6C: 0C40 0002                  cmpi.w  #$2, D0
07FF70: 661E                       bne     $7ff90
07FF72: 542E 00E0                  addq.b  #2, ($e0,A6)
07FF76: 1D7C 000C 00E1             move.b  #$c, ($e1,A6)
07FF7C: 323C 0070                  move.w  #$70, D1
07FF80: 4EB8 44D0                  jsr     $44d0.w
07FF84: 6628                       bne     $7ffae
07FF86: 323C 0070                  move.w  #$70, D1
07FF8A: 4EB8 44DE                  jsr     $44de.w
07FF8E: 661E                       bne     $7ffae
07FF90: 4E75                       rts
07FF92: 532E 00E1                  subq.b  #1, ($e1,A6)
07FF96: 6700 FF6A                  beq     $7ff02
07FF9A: 323C 0070                  move.w  #$70, D1
07FF9E: 4EB8 44D0                  jsr     $44d0.w
07FFA2: 660A                       bne     $7ffae
07FFA4: 323C 0070                  move.w  #$70, D1
07FFA8: 4EB8 44DE                  jsr     $44de.w
07FFAC: 674E                       beq     $7fffc
07FFAE: 7200                       moveq   #$0, D1
07FFB0: 0800 0004                  btst    #$4, D0
07FFB4: 660A                       bne     $7ffc0
07FFB6: 7202                       moveq   #$2, D1
07FFB8: 0800 0005                  btst    #$5, D0
07FFBC: 6602                       bne     $7ffc0
07FFBE: 7204                       moveq   #$4, D1
07FFC0: 303B 104C                  move.w  ($4c,PC,D1.w), D0
07FFC4: B02E 00E1                  cmp.b   ($e1,A6), D0
07FFC8: 6232                       bhi     $7fffc
07FFCA: 4A6E 01D4                  tst.w   ($1d4,A6)
07FFCE: 662C                       bne     $7fffc
07FFD0: 1D41 00E2                  move.b  D1, ($e2,A6)
07FFD4: 4A2E 016D                  tst.b   ($16d,A6)
07FFD8: 660A                       bne     $7ffe4
07FFDA: 1D7C 0006 016A             move.b  #$6, ($16a,A6)
07FFE0: 1D41 016B                  move.b  D1, ($16b,A6)
07FFE4: 4EB8 4542                  jsr     $4542.w
07FFE8: 6714                       beq     $7fffe
07FFEA: 4A2E 016D                  tst.b   ($16d,A6)
07FFEE: 660C                       bne     $7fffc
07FFF0: 4A2E 0169                  tst.b   ($169,A6)
07FFF4: 6706                       beq     $7fffc
07FFF6: 1D7C 0001 016D             move.b  #$1, ($16d,A6)
07FFFC: 4E75                       rts
07FFFE: 1D7C 0006 0088             move.b  #$6, ($88,A6)
080004: 1D6E 00E2 00E3             move.b  ($e2,A6), ($e3,A6)
08000A: 6000 003E                  bra     $8004a
08000E: 0000 0002                  ori.b   #$2, D0
080012: 0004 4EB8                  ori.b   #$b8, D4
080016: 2E96                       move.l  (A6), (A7)
080018: 0240 001F                  andi.w  #$1f, D0
08001C: 1D7B 0006 00E1             move.b  ($6,PC,D0.w), ($e1,A6)
080022: 4E75                       rts
080024:Input Windows
0A08 080B 0808 0908 0908 080A 0808 0B0D
080F 0908 0A0C 0808 0B08 0908 0E0C 080A

080044: 1D6E 016B 00E3             move.b  ($16b,A6), ($e3,A6)
08004A: 1D7C 000C 0003             move.b  #$c, ($3,A6)
080050: 422E 00E0                  clr.b   ($e0,A6)
080054: 422E 0004                  clr.b   ($4,A6)
080058: 422E 0005                  clr.b   ($5,A6)
08005C: 1D7C 0001 018B             move.b  #$1, ($18b,A6)
080062: 526D 0DE2                  addq.w  #1, ($de2,A5)
080066: 7002                       moveq   #$2, D0
080068: 4EB8 4052                  jsr     $4052.w
08006C: 4EB8 5B60                  jsr     $5b60.w
080070: 7001                       moveq   #$1, D0
080072: 4E75                       rts

;Ground Normals
080074: 3C2E 03A6                  move.w  ($3a6,A6), D6
080078: 7000                       moveq   #$0, D0
08007A: 1D40 0188                  move.b  D0, ($188,A6)
08007E: 102E 0186                  move.b  ($186,A6), D0
080082: 323B 000E                  move.w  ($e,PC,D0.w), D1
080086: 4EBB 100A                  jsr     ($a,PC,D1.w);Punches or Kicks!
08008A: 526D 0DE2                  addq.w  #1, ($de2,A5)
08008E: 7001                       moveq   #$1, D0
080090: 4E75                       rts
;Code jumps Punches or Kicks
080092: 0004 00FC

;Stand Punches
080096: 102E 0187                  move.b  ($187,A6), D0
08009A: 323B 0006                  move.w  ($6,PC,D0.w), D1
08009E: 4EFB 1002                  jmp     ($2,PC,D1.w)
;Jumps
0800A2: 0006 003C 0094

0800A8: 1D7C 0001 0087             move.b  #$1, ($87,A6)
0800AE: 3D7C 0010 0080             move.w  #$10, ($80,A6)
0800B4: 1D7C 0001 0086             move.b  #$1, ($86,A6)
0800BA: 3D7C 0019 0084             move.w  #$19, ($84,A6)
0800C0: 1D7C 0001 0180             move.b  #$1, ($180,A6)
0800C6: 0C6E 0019 0182             cmpi.w  #$19, ($182,A6)
0800CC: 640A                       bcc     $800d8
0800CE: 422E 0087                  clr.b   ($87,A6)
0800D2: 1D7C 0000 0180             move.b  #$0, ($180,A6)
0800D8: 7000                       moveq   #$0, D0
0800DA: 4EF8 7CBA                  jmp     $7cba.w

0800DE: 422E 0087                  clr.b   ($87,A6)
0800E2: 3D7C 0020 0080             move.w  #$20, ($80,A6)
0800E8: 1D7C 0003 0086             move.b  #$3, ($86,A6)
0800EE: 3D7C 001F 0084             move.w  #$1f, ($84,A6)
0800F4: 0246 0003                  andi.w  #$3, D6
0800F8: 6722                       beq     $8011c
0800FA: 7000                       moveq   #$0, D0
0800FC: 4EB8 461E                  jsr     $461e.w

080100: 6708                       beq     $8010a
080102: 1D7C 0006 0180             move.b  #$6, ($180,A6)
080108: 4E75                       rts
08010A: 3C2E 03A6                  move.w  ($3a6,A6), D6
08010E: 0246 0002                  andi.w  #$2, D6
080112: 6708                       beq     $8011c
080114: 1D7C 0007 0180             move.b  #$7, ($180,A6)
08011A: 6014                       bra     $80130
08011C: 1D7C 0003 0180             move.b  #$3, ($180,A6)
080122: 0C6E 001F 0182             cmpi.w  #$1f, ($182,A6)
080128: 6406                       bcc     $80130
08012A: 1D7C 0002 0180             move.b  #$2, ($180,A6)
080130: 7001                       moveq   #$1, D0
080132: 4EF8 7CBA                  jmp     $7cba.w

;Heavy Punch
080136: 422E 0087                  clr.b   ($87,A6)
08013A: 3D7C 0040 0080             move.w  #$40, ($80,A6)
080140: 1D7C 0005 0086             move.b  #$5, ($86,A6)
080146: 3D7C 0029 0084             move.w  #$29, ($84,A6)
08014C: 0246 0003                  andi.w  #$3, D6
080150: 6722                       beq     $80174; branch if not forward

080152: 7000                       moveq   #$0, D0
080154: 4EB8 461E                  jsr     $461e.w
080158: 6708                       beq     $80162
08015A: 1D7C 0006 0180             move.b  #$6, ($180,A6);throw
080160: 4E75                       rts

080162: 3C2E 03A6                  move.w  ($3a6,A6), D6
080166: 0246 0002                  andi.w  #$2, D6
08016A: 6708                       beq     $80174
08016C: 1D7C 0008 0180             move.b  #$8, ($180,A6)
080172: 6014                       bra     $80188
080174: 1D7C 0005 0180             move.b  #$5, ($180,A6)
08017A: 0C6E 0029 0182             cmpi.w  #$29, ($182,A6)
080180: 6406                       bcc     $80188
080182: 1D7C 0004 0180             move.b  #$4, ($180,A6)
080188: 7002                       moveq   #$2, D0
08018A: 4EF8 7CBA                  jmp     $7cba.w

;Standing Kicks
08018E: 102E 0187                  move.b  ($187,A6), D0
080192: 323B 0006                  move.w  ($6,PC,D0.w), D1
080196: 4EFB 1002                  jmp     ($2,PC,D1.w)
08019A: 0006 0038 007E 
 
0801A0: 1D7C 0001 0087             move.b  #$1, ($87,A6)

0801A6: 3D7C 0100 0080             move.w  #$100, ($80,A6)
0801AC: 1D7C 0001 0086             move.b  #$1, ($86,A6)
0801B2: 3D7C 0000 0084             move.w  #$0, ($84,A6)
0801B8: 1D7C 0000 0180             move.b  #$0, ($180,A6)
0801BE: 0C6E 0000 0182             cmpi.w  #$0, ($182,A6)
0801C4: 6306                       bls     $801cc
0801C6: 1D7C 0001 0180             move.b  #$1, ($180,A6)
0801CC: 7000                       moveq   #$0, D0
0801CE: 4EF8 7CBA                  jmp     $7cba.w

0801D2: 422E 0087                  clr.b   ($87,A6)
0801D6: 3D7C 0200 0080             move.w  #$200, ($80,A6)
0801DC: 1D7C 0003 0086             move.b  #$3, ($86,A6)
0801E2: 3D7C 0000 0084             move.w  #$0, ($84,A6)
0801E8: 0246 0003                  andi.w  #$3, D6
0801EC: 6710                       beq     $801fe
0801EE: 7001                       moveq   #$1, D0
0801F0: 1D7C 0006 0180             move.b  #$6, ($180,A6)
0801F6: 4EB8 461E                  jsr     $461e.w
0801FA: 6702                       beq     $801fe
0801FC: 4E75                       rts
0801FE: 1D7C 0002 0180             move.b  #$2, ($180,A6)
080204: 0C6E 0000 0182             cmpi.w  #$0, ($182,A6)
08020A: 6306                       bls     $80212
08020C: 1D7C 0003 0180             move.b  #$3, ($180,A6)
080212: 7001                       moveq   #$1, D0
080214: 4EF8 7CBA                  jmp     $7cba.w

;Heavy kick
080218: 422E 0087                  clr.b   ($87,A6)
08021C: 3D7C 0400 0080             move.w  #$400, ($80,A6)
080222: 1D7C 0005 0086             move.b  #$5, ($86,A6)
080228: 3D7C 0028 0084             move.w  #$28, ($84,A6)
08022E: 0246 0003                  andi.w  #$3, D6
080232: 6710                       beq     $80244
080234: 7001                       moveq   #$1, D0
080236: 4EB8 461E                  jsr     $461e.w
08023A: 6708                       beq     $80244
08023C: 1D7C 0006 0180             move.b  #$6, ($180,A6) Throw
080242: 4E75                       rts

080244: 1D7C 0005 0180             move.b  #$5, ($180,A6);Far Attack
08024A: 0C6E 0038 0182             cmpi.w  #$38, ($182,A6)
080250: 6406                       bcc     $80258
080252: 1D7C 0004 0180             move.b  #$4, ($180,A6) Close Attack
080258: 7002                       moveq   #$2, D0
08025A: 4EF8 7CBA                  jmp     $7cba.w


;Crouching Normals
08025E: 1D7C 0002 0188             move.b  #$2, ($188,A6)
080264: 422E 0087                  clr.b   ($87,A6)
080268: 4A2E 0187                  tst.b   ($187,A6)
08026C: 6618                       bne     $80286
08026E: 1D7C 0001 0087             move.b  #$1, ($87,A6)
080274: 3D7C 0010 0080             move.w  #$10, ($80,A6)
08027A: 4A2E 0186                  tst.b   ($186,A6)
08027E: 6706                       beq     $80286
080280: 3D7C 0100 0080             move.w  #$100, ($80,A6)
080286: 102E 0187                  move.b  ($187,A6), D0
08028A: E248                       lsr.w   #1, D0
08028C: 1D40 0180                  move.b  D0, ($180,A6)
080290: 1D40 0086                  move.b  D0, ($86,A6)
080294: 3D7C 0000 0084             move.w  #$0, ($84,A6)
08029A: 4EB8 7CBA                  jsr     $7cba.w
08029E: 526D 0DE2                  addq.w  #1, ($de2,A5)
0802A2: 7001                       moveq   #$1, D0
0802A4: 4E75                       rts

;Jumping Normals
0802A6: 422E 0087                  clr.b   ($87,A6)
0802AA: 1D7C 0004 0188             move.b  #$4, ($188,A6)
0802B0: 1D6E 0187 0180             move.b  ($187,A6), ($180,A6)
0802B6: 4A6E 003C                  tst.w   ($3c,A6)
0802BA: 6704                       beq     $802c0
0802BC: 522E 0180                  addq.b  #1, ($180,A6)
0802C0: 102E 0180                  move.b  ($180,A6), D0
0802C4: 323C 0048                  move.w  #$48, D1
0802C8: 4A2E 0186                  tst.b   ($186,A6)
0802CC: 6704                       beq     $802d2
0802CE: 323C 004A                  move.w  #$4a, D1
0802D2: 4EB8 524E                  jsr     $524e.w
0802D6: 102E 0187                  move.b  ($187,A6), D0
0802DA: E248                       lsr.w   #1, D0
0802DC: 4EB8 7CBA                  jsr     $7cba.w
0802E0: 526D 0DE2                  addq.w  #1, ($de2,A5)
0802E4: 203C 0000 0001             move.l  #$1, D0
0802EA: 4E75                       rts
0802EC: 4A2E 0047                  tst.b   ($47,A6)
0802F0: 6706                       beq     $802f8
0802F2: 532E 0047                  subq.b  #1, ($47,A6)
0802F6: 4E75                       rts
0802F8: 102E 0188                  move.b  ($188,A6), D0
0802FC: 323B 0006                  move.w  ($6,PC,D0.w), D1
080300: 4EFB 1002                  jmp     ($2,PC,D1.w)
080304: 0008                       dc.w    $0008; ILLEGAL
080306: 0054 0006                  ori.w   #$6, (A4)
08030A: 4E75                       rts
08030C: 102E 0186                  move.b  ($186,A6), D0
080310: 323B 0006                  move.w  ($6,PC,D0.w), D1
080314: 4EFB 1002                  jmp     ($2,PC,D1.w)
080318: 0004 0024                  ori.b   #$24, D4
08031C: 102E 0180                  move.b  ($180,A6), D0
080320: D040                       add.w   D0, D0
080322: 323B 0006                  move.w  ($6,PC,D0.w), D1
080326: 4EFB 1002                  jmp     ($2,PC,D1.w)
08032A: 01B0 01B0                  bclr    D0, INVALID 30
08032E: 01B0 01B0                  bclr    D0, INVALID 30
080332: 01B0 01B0                  bclr    D0, INVALID 30
080336: 011E                       btst    D0, (A6)+
080338: 0042 0042                  ori.w   #$42, D2
08033C: 102E 0180                  move.b  ($180,A6), D0
080340: D040                       add.w   D0, D0
080342: 323B 0006                  move.w  ($6,PC,D0.w), D1
080346: 4EFB 1002                  jmp     ($2,PC,D1.w)
08034A: 0190                       bclr    D0, (A0)
08034C: 0190                       bclr    D0, (A0)
08034E: 0190                       bclr    D0, (A0)
080350: 0190                       bclr    D0, (A0)
080352: 0190                       bclr    D0, (A0)
080354: 0190                       bclr    D0, (A0)
080356: 00FE                       dc.w    $00fe; ILLEGAL
080358: 102E 0180                  move.b  ($180,A6), D0
08035C: D040                       add.w   D0, D0
08035E: 323B 0006                  move.w  ($6,PC,D0.w), D1
080362: 4EFB 1002                  jmp     ($2,PC,D1.w)
080366: 0174 0174                  bchg    D0, INVALID 34
08036A: 0174 102E                  bchg    D0, ($2e,A4,D1.w)
08036E: 0004 323B                  ori.b   #$3b, D4
080372: 0006 4EFB                  ori.b   #$fb, D6
080376: 1002                       move.b  D2, D0
080378: 0008                       dc.w    $0008; ILLEGAL
08037A: 0056 0064                  ori.w   #$64, (A6)
08037E: 0088                       dc.w    $0088; ILLEGAL
080380: 542E 0004                  addq.b  #2, ($4,A6)
080384: 422E 00E5                  clr.b   ($e5,A6)
080388: 422E 00E6                  clr.b   ($e6,A6)
08038C: 3D7C 0600 003C             move.w  #$600, ($3c,A6)
080392: 3D7C 00C0 0040             move.w  #$c0, ($40,A6)
080398: 0C2E 0007 0180             cmpi.b  #$7, ($180,A6)
08039E: 670C                       beq     $803ac
0803A0: 3D7C 0B20 003C             move.w  #$b20, ($3c,A6)
0803A6: 3D7C 00F0 0040             move.w  #$f0, ($40,A6)
0803AC: 4A2E 0012                  tst.b   ($12,A6)
0803B0: 6608                       bne     $803ba
0803B2: 446E 003C                  neg.w   ($3c,A6)
0803B6: 446E 0040                  neg.w   ($40,A6)
0803BA: 426E 003E                  clr.w   ($3e,A6)
0803BE: 426E 0042                  clr.w   ($42,A6)
0803C2: 323C 0040                  move.w  #$40, D1
0803C6: 102E 0180                  move.b  ($180,A6), D0
0803CA: 4EF8 524E                  jmp     $524e.w
0803CE: 4A2E 0015                  tst.b   ($15,A6)
0803D2: 6704                       beq     $803d8
0803D4: 542E 0004                  addq.b  #2, ($4,A6)
0803D8: 4EF8 2EE2                  jmp     $2ee2.w
0803DC: 4EB8 2F50                  jsr     $2f50.w
0803E0: 4A2E 0012                  tst.b   ($12,A6)
0803E4: 6708                       beq     $803ee
0803E6: 4A6E 003C                  tst.w   ($3c,A6)
0803EA: 6B08                       bmi     $803f4
0803EC: 600A                       bra     $803f8
0803EE: 4A6E 003C                  tst.w   ($3c,A6)
0803F2: 6B04                       bmi     $803f8
0803F4: 542E 0004                  addq.b  #2, ($4,A6)
0803F8: 6100 0016                  bsr     $80410
0803FC: 4EF8 2EE2                  jmp     $2ee2.w
080400: 4A6E 0014                  tst.w   ($14,A6)
080404: 6B00 0006                  bmi     $8040c
080408: 4EF8 2EE2                  jmp     $2ee2.w
08040C: 4EF8 44EC                  jmp     $44ec.w
080410: 4A2E 00E5                  tst.b   ($e5,A6)
080414: 662C                       bne     $80442
080416: 1D7C 0005 00E5             move.b  #$5, ($e5,A6)
08041C: 7400                       moveq   #$0, D2
08041E: 143C 001C                  move.b  #$1c, D2
080422: 0C2E 0007 0180             cmpi.b  #$7, ($180,A6)
080428: 6704                       beq     $8042e
08042A: 143C 0020                  move.b  #$20, D2
08042E: 0A2E 0001 00E6             eori.b  #$1, ($e6,A6)
080434: 4A2E 00E6                  tst.b   ($e6,A6)
080438: 6702                       beq     $8043c
08043A: 5402                       addq.b  #2, D2
08043C: 4EF9 0005 4CA8             jmp     $54ca8.l
080442: 532E 00E5                  subq.b  #1, ($e5,A6)
080446: 4E75                       rts
080448: 102E 0004                  move.b  ($4,A6), D0
08044C: 323B 0006                  move.w  ($6,PC,D0.w), D1
080450: 4EFB 1002                  jmp     ($2,PC,D1.w)
080454: 0006 0036                  ori.b   #$36, D6
080458: 006A 542E 0004             ori.w   #$542e, ($4,A2)
08045E: 302E 03A6                  move.w  ($3a6,A6), D0
080462: 0240 0001                  andi.w  #$1, D0
080466: 660C                       bne     $80474
080468: 0A2E 0001 01BE             eori.b  #$1, ($1be,A6)
08046E: 0A2E 0001 0012             eori.b  #$1, ($12,A6)
080474: 323C 0040                  move.w  #$40, D1
080478: 4A2E 0186                  tst.b   ($186,A6)
08047C: 6704                       beq     $80482
08047E: 323C 0042                  move.w  #$42, D1
080482: 102E 0180                  move.b  ($180,A6), D0
080486: 4EF8 524E                  jmp     $524e.w
08048A: 4A2E 0015                  tst.b   ($15,A6)
08048E: 672A                       beq     $804ba
080490: 6B16                       bmi     $804a8
080492: 542E 0004                  addq.b  #2, ($4,A6)
080496: 7000                       moveq   #$0, D0
080498: 122E 0012                  move.b  ($12,A6), D1
08049C: 0A01 0001                  eori.b  #$1, D1
0804A0: 740B                       moveq   #$b, D2
0804A2: 4EB8 4C22                  jsr     $4c22.w
0804A6: 6012                       bra     $804ba
0804A8: 223C 0139 0063             move.l  #$1390063, D1
0804AE: 363C 0080                  move.w  #$80, D3
0804B2: 4EB8 7BAC                  jsr     $7bac.w
0804B6: 422E 0015                  clr.b   ($15,A6)
0804BA: 4EF8 2EE2                  jmp     $2ee2.w
0804BE: 4A6E 0014                  tst.w   ($14,A6)
0804C2: 6AF6                       bpl     $804ba
0804C4: 7000                       moveq   #$0, D0
0804C6: 122E 0012                  move.b  ($12,A6), D1
0804CA: 0A01 0001                  eori.b  #$1, D1
0804CE: 1D41 0012                  move.b  D1, ($12,A6)
0804D2: 1D41 01BE                  move.b  D1, ($1be,A6)
0804D6: 4EF8 44EC                  jmp     $44ec.w
0804DA: 102E 0004                  move.b  ($4,A6), D0
0804DE: 323B 0006                  move.w  ($6,PC,D0.w), D1
0804E2: 4EFB 1002                  jmp     ($2,PC,D1.w)
0804E6: 0004 002E                  ori.b   #$2e, D4
0804EA: 542E 0004                  addq.b  #2, ($4,A6)
0804EE: 102E 0180                  move.b  ($180,A6), D0
0804F2: 102E 0188                  move.b  ($188,A6), D0
0804F6: D000                       add.b   D0, D0
0804F8: D02E 0186                  add.b   ($186,A6), D0
0804FC: 323B 000E                  move.w  ($e,PC,D0.w), D1
080500: 3D41 0082                  move.w  D1, ($82,A6)
080504: 102E 0180                  move.b  ($180,A6), D0
080508: 4EF8 524E                  jmp     $524e.w
08050C: 0040 0042                  ori.w   #$42, D0
080510: 0044 0046                  ori.w   #$46, D4
080514: 4A6E 0014                  tst.w   ($14,A6)
080518: 6A04                       bpl     $8051e
08051A: 4EF8 44EC                  jmp     $44ec.w
08051E: 4A2E 0015                  tst.b   ($15,A6)
080522: 6766                       beq     $8058a
080524: 4A2E 0087                  tst.b   ($87,A6)
080528: 6760                       beq     $8058a
08052A: 302E 0394                  move.w  ($394,A6), D0
08052E: 4640                       not.w   D0
080530: C06E 0392                  and.w   ($392,A6), D0
080534: C06E 0080                  and.w   ($80,A6), D0
080538: 6750                       beq     $8058a
08053A: 4EB9 0007 87E6             jsr     $787e6.l
080540: 6710                       beq     $80552
080542: 0C6E 0100 0080             cmpi.w  #$100, ($80,A6)
080548: 6644                       bne     $8058e
08054A: 026E 070F 0392             andi.w  #$70f, ($392,A6)
080550: 603C                       bra     $8058e
080552: 526D 0DE2                  addq.w  #1, ($de2,A5)
080556: 306E 039E                  movea.w ($39e,A6), A0
08055A: 4228 004A                  clr.b   ($4a,A0)
08055E: 102E 0187                  move.b  ($187,A6), D0
080562: E208                       lsr.b   #1, D0
080564: 4EB8 7CBA                  jsr     $7cba.w
080568: 322E 0082                  move.w  ($82,A6), D1
08056C: 302E 0182                  move.w  ($182,A6), D0
080570: B06E 0084                  cmp.w   ($84,A6), D0
080574: 6506                       bcs     $8057c
080576: 1D6E 0086 0180             move.b  ($86,A6), ($180,A6)
08057C: 102E 0180                  move.b  ($180,A6), D0
080580: 4EB8 524E                  jsr     $524e.w
080584: 526E 0018                  addq.w  #1, ($18,A6)
080588: 4E75                       rts
08058A: 4EF8 2EE2                  jmp     $2ee2.w
08058E: 4EF9 0007 884A             jmp     $7884a.l
080594: 4A2E 0047                  tst.b   ($47,A6)
080598: 6706                       beq     $805a0
08059A: 532E 0047                  subq.b  #1, ($47,A6)
08059E: 4E75                       rts
0805A0: 102E 0088                  move.b  ($88,A6), D0
0805A4: 323B 0006                  move.w  ($6,PC,D0.w), D1
0805A8: 4EFB 1002                  jmp     ($2,PC,D1.w)
0805AC: 00E2                       dc.w    $00e2; ILLEGAL
0805AE: 02DE                       dc.w    $02de; ILLEGAL
0805B0: 01B0 00E2                  bclr    D0, (-$1e,A0,D0.w)
0805B4: 000A                       dc.w    $000a; ILLEGAL
0805B6: 102E 0004                  move.b  ($4,A6), D0
0805BA: 323B 0006                  move.w  ($6,PC,D0.w), D1
0805BE: 4EFB 1002                  jmp     ($2,PC,D1.w)
0805C2: 000A                       dc.w    $000a; ILLEGAL
0805C4: 001A 0034                  ori.b   #$34, (A2)+
0805C8: 0044 00BE                  ori.w   #$be, D4
0805CC: 542E 0004                  addq.b  #2, ($4,A6)
0805D0: 1D7C 0001 02B5             move.b  #$1, ($2b5,A6)
0805D6: 7254                       moveq   #$54, D1
0805D8: 4EF8 5256                  jmp     $5256.w
0805DC: 4A2E 0015                  tst.b   ($15,A6)
0805E0: 6710                       beq     $805f2
0805E2: 542E 0004                  addq.b  #2, ($4,A6)
0805E6: 1D7C 0001 01FA             move.b  #$1, ($1fa,A6)
0805EC: 4EF9 0002 7F8A             jmp     $27f8a.l
0805F2: 4EF8 2EE2                  jmp     $2ee2.w
0805F6: 4A2E 02AD                  tst.b   ($2ad,A6)
0805FA: 6608                       bne     $80604
0805FC: 542E 0004                  addq.b  #2, ($4,A6)
080600: 422E 01FA                  clr.b   ($1fa,A6)
080604: 4E75                       rts
080606: 4EB8 2EE2                  jsr     $2ee2.w
08060A: 0C2E 0002 0015             cmpi.b  #$2, ($15,A6)
080610: 666C                       bne     $8067e
080612: 542E 0004                  addq.b  #2, ($4,A6)
080616: 4EB8 370E                  jsr     $370e.w
08061A: 6700 0062                  beq     $8067e
08061E: 197C 0001 0000             move.b  #$1, ($0,A4)
080624: 197C 0008 0020             move.b  #$8, ($20,A4)
08062A: 196E 00A3 0021             move.b  ($a3,A6), ($21,A4)
080630: 396E 0006 0006             move.w  ($6,A6), ($6,A4)
080636: 396E 000A 000A             move.w  ($a,A6), ($a,A4)
08063C: 196E 0012 0012             move.b  ($12,A6), ($12,A4)
080642: 394E 0026                  move.w  A6, ($26,A4)
080646: 3D4C 01D4                  move.w  A4, ($1d4,A6)
08064A: 4EB8 7D24                  jsr     $7d24.w
08064E: 223C 0000 0061             move.l  #$61, D1
080654: 4A2E 0381                  tst.b   ($381,A6)
080658: 6704                       beq     $8065e
08065A: 323C 0137                  move.w  #$137, D1
08065E: 243C 0006 2010             move.l  #$62010, D2
080664: 4A2E 0012                  tst.b   ($12,A6)
080668: 6706                       beq     $80670
08066A: 243C 0005 0010             move.l  #$50010, D2
080670: 263C 0150 0078             move.l  #$1500078, D3
080676: 4EB8 7A72                  jsr     $7a72.w
08067A: 4EF8 7D3A                  jmp     $7d3a.w
08067E: 4E75                       rts
080680: 4A6E 0014                  tst.w   ($14,A6)
080684: 6A04                       bpl     $8068a
080686: 4EF8 44EC                  jmp     $44ec.w
08068A: 4EF8 2EE2                  jmp     $2ee2.w
08068E: 102E 0004                  move.b  ($4,A6), D0
080692: 323B 0006                  move.w  ($6,PC,D0.w), D1
080696: 4EFB 1002                  jmp     ($2,PC,D1.w)
08069A: 0006 001E                  ori.b   #$1e, D6
08069E: 00B4 542E 0004 102E        ori.l   #$542e0004, ($2e,A4,D1.w)
0806A6: 0097 E208 4A2E             ori.l   #$e2084a2e, (A7)
0806AC: 0088                       dc.w    $0088; ILLEGAL
0806AE: 6702                       beq     $806b2
0806B0: 5600                       addq.b  #3, D0
0806B2: 724C                       moveq   #$4c, D1
0806B4: 4EF8 524E                  jmp     $524e.w
0806B8: 4A6E 0014                  tst.w   ($14,A6)
0806BC: 6A00 008C                  bpl     $8074a
0806C0: 542E 0004                  addq.b  #2, ($4,A6)
0806C4: 4EB8 370E                  jsr     $370e.w
0806C8: 6700 0076                  beq     $80740
0806CC: 197C 0001 0000             move.b  #$1, ($0,A4)
0806D2: 197C 0005 0020             move.b  #$5, ($20,A4)
0806D8: 396E 0006 0006             move.w  ($6,A6), ($6,A4)
0806DE: 396E 000A 000A             move.w  ($a,A6), ($a,A4)
0806E4: 196E 0012 0012             move.b  ($12,A6), ($12,A4)
0806EA: 394E 0026                  move.w  A6, ($26,A4)
0806EE: 3D4C 01D4                  move.w  A4, ($1d4,A6)
0806F2: 196E 0097 0021             move.b  ($97,A6), ($21,A4)
0806F8: 0C2E 0006 0088             cmpi.b  #$6, ($88,A6)
0806FE: 660C                       bne     $8070c
080700: 197C FFFF 0046             move.b  #$ff, ($46,A4)
080706: 196E 00E3 0021             move.b  ($e3,A6), ($21,A4)
08070C: 4EB8 7D24                  jsr     $7d24.w
080710: 223C 0000 0061             move.l  #$61, D1
080716: 4A2E 0381                  tst.b   ($381,A6)
08071A: 6704                       beq     $80720
08071C: 323C 0137                  move.w  #$137, D1
080720: 243C 0006 2010             move.l  #$62010, D2
080726: 4A2E 0012                  tst.b   ($12,A6)
08072A: 6706                       beq     $80732
08072C: 243C 0005 0010             move.l  #$50010, D2
080732: 263C 0150 0078             move.l  #$1500078, D3
080738: 4EB8 7A72                  jsr     $7a72.w
08073C: 4EB8 7D3A                  jsr     $7d3a.w
080740: 142E 0088                  move.b  ($88,A6), D2
080744: 4EB9 0009 81FE             jsr     $981fe.l
08074A: 4EF8 2EE2                  jmp     $2ee2.w
08074E: 532E 001E                  subq.b  #1, ($1e,A6)
080752: 6604                       bne     $80758
080754: 4EF8 44EC                  jmp     $44ec.w
080758: 4EF8 2EE2                  jmp     $2ee2.w
08075C: 102E 0004                  move.b  ($4,A6), D0
080760: 323B 0006                  move.w  ($6,PC,D0.w), D1
080764: 4EFB 1002                  jmp     ($2,PC,D1.w)
080768: 000C                       dc.w    $000c; ILLEGAL
08076A: 008C                       dc.w    $008c; ILLEGAL
08076C: 00A0 00DE 010A             ori.l   #$de010a, -(A0)
080772: 011E                       btst    D0, (A6)+
080774: 542E 0004                  addq.b  #2, ($4,A6)
080778: 4EB8 7D24                  jsr     $7d24.w
08077C: 223C 0000 0060             move.l  #$60, D1
080782: 4A2E 0381                  tst.b   ($381,A6)
080786: 6704                       beq     $8078c
080788: 323C 0136                  move.w  #$136, D1
08078C: 243C 0006 2010             move.l  #$62010, D2
080792: 4A2E 0012                  tst.b   ($12,A6)
080796: 6706                       beq     $8079e
080798: 243C 0005 0010             move.l  #$50010, D2
08079E: 263C 0180 0054             move.l  #$1800054, D3
0807A4: 4EB8 7A72                  jsr     $7a72.w
0807A8: 4EB8 7D3A                  jsr     $7d3a.w
0807AC: 7000                       moveq   #$0, D0
0807AE: 102E 009B                  move.b  ($9b,A6), D0
0807B2: E548                       lsl.w   #2, D0
0807B4: 41FA 0026                  lea     ($26,PC), A0; ($807dc)
0807B8: 3D70 0000 003C             move.w  (A0,D0.w), ($3c,A6)
0807BE: 3D70 0002 0040             move.w  ($2,A0,D0.w), ($40,A6)
0807C4: 3D70 0004 003E             move.w  ($4,A0,D0.w), ($3e,A6)
0807CA: 3D70 0006 0042             move.w  ($6,A0,D0.w), ($42,A6)
0807D0: 102E 009B                  move.b  ($9b,A6), D0
0807D4: E248                       lsr.w   #1, D0
0807D6: 724E                       moveq   #$4e, D1
0807D8: 4EF8 524E                  jmp     $524e.w
0807DC: 0400 0080                  subi.b  #-$80, D0
0807E0: 0500                       btst    D2, D0
0807E2: 0060 0600                  ori.w   #$600, -(A0)
0807E6: 0080 0700 0060             ori.l   #$7000060, D0
0807EC: 0800 0080                  btst    #$80, D0
0807F0: 0900                       btst    D4, D0
0807F2: 0060 4A2E                  ori.w   #$4a2e, -(A0)
0807F6: 0015 660A                  ori.b   #$a, (A5)
0807FA: 542E 0004                  addq.b  #2, ($4,A6)
0807FE: 1D7C 0001 0181             move.b  #$1, ($181,A6)
080804: 4EF8 2EE2                  jmp     $2ee2.w
080808: 4A6E 003C                  tst.w   ($3c,A6)
08080C: 6B24                       bmi     $80832
08080E: 4A2E 0012                  tst.b   ($12,A6)
080812: 6706                       beq     $8081a
080814: 6100 0328                  bsr     $80b3e
080818: 6014                       bra     $8082e
08081A: 446E 003C                  neg.w   ($3c,A6)
08081E: 446E 0040                  neg.w   ($40,A6)
080822: 6100 031A                  bsr     $80b3e
080826: 446E 003C                  neg.w   ($3c,A6)
08082A: 446E 0040                  neg.w   ($40,A6)
08082E: 4EF8 2EE2                  jmp     $2ee2.w
080832: 3D7C 0000 003C             move.w  #$0, ($3c,A6)
080838: 3D7C 0000 0040             move.w  #$0, ($40,A6)
08083E: 542E 0004                  addq.b  #2, ($4,A6)
080842: 4EF8 2EE2                  jmp     $2ee2.w
080846: 6100 02F6                  bsr     $80b3e
08084A: 4A6E 003E                  tst.w   ($3e,A6)
08084E: 6A06                       bpl     $80856
080850: 4EB8 4334                  jsr     $4334.w
080854: 660C                       bne     $80862
080856: 4A2E 0015                  tst.b   ($15,A6)
08085A: 6702                       beq     $8085e
08085C: 4E75                       rts
08085E: 4EF8 2EE2                  jmp     $2ee2.w
080862: 542E 0004                  addq.b  #2, ($4,A6)
080866: 422E 0181                  clr.b   ($181,A6)
08086A: 4EB8 7B90                  jsr     $7b90.w
08086E: 4EF8 2EE2                  jmp     $2ee2.w
080872: 4A2E 0014                  tst.b   ($14,A6)
080876: 6A0A                       bpl     $80882
080878: 542E 0004                  addq.b  #2, ($4,A6)
08087C: 422E 0005                  clr.b   ($5,A6)
080880: 4E75                       rts
080882: 4EF8 2EE2                  jmp     $2ee2.w
080886: 4EF8 44EC                  jmp     $44ec.w
08088A: 4A2E 009C                  tst.b   ($9c,A6)
08088E: 6700 0124                  beq     $809b4
080892: 102E 0004                  move.b  ($4,A6), D0
080896: 323B 0006                  move.w  ($6,PC,D0.w), D1
08089A: 4EFB 1002                  jmp     ($2,PC,D1.w)
08089E: 0006 008A                  ori.b   #$8a, D6
0808A2: 00FC                       dc.w    $00fc; ILLEGAL
0808A4: 542E 0004                  addq.b  #2, ($4,A6)
0808A8: 422E 00E4                  clr.b   ($e4,A6)
0808AC: 422E 009D                  clr.b   ($9d,A6)
0808B0: 4A6E 003E                  tst.w   ($3e,A6)
0808B4: 6B0E                       bmi     $808c4
0808B6: 0C6E 0050 000A             cmpi.w  #$50, ($a,A6)
0808BC: 6506                       bcs     $808c4
0808BE: 3D7C 0020 0042             move.w  #$20, ($42,A6)
0808C4: 7200                       moveq   #$0, D1
0808C6: 4A6E 003E                  tst.w   ($3e,A6)
0808CA: 6B2C                       bmi     $808f8
0808CC: 7000                       moveq   #$0, D0
0808CE: 102E 0093                  move.b  ($93,A6), D0
0808D2: 41FA 004E                  lea     ($4e,PC), A0; ($80922)
0808D6: 3230 0000                  move.w  (A0,D0.w), D1
0808DA: 4A2E 0012                  tst.b   ($12,A6)
0808DE: 660E                       bne     $808ee
0808E0: 4441                       neg.w   D1
0808E2: 4A6E 003C                  tst.w   ($3c,A6)
0808E6: 6710                       beq     $808f8
0808E8: 6B0E                       bmi     $808f8
0808EA: 4441                       neg.w   D1
0808EC: 600A                       bra     $808f8
0808EE: 4A6E 003C                  tst.w   ($3c,A6)
0808F2: 6704                       beq     $808f8
0808F4: 6A02                       bpl     $808f8
0808F6: 4441                       neg.w   D1
0808F8: D36E 003C                  add.w   D1, ($3c,A6)
0808FC: 102E 0093                  move.b  ($93,A6), D0
080900: 3200                       move.w  D0, D1
080902: E208                       lsr.b   #1, D0
080904: 1D40 001E                  move.b  D0, ($1e,A6)
080908: 4EB8 2F50                  jsr     $2f50.w
08090C: 6100 018E                  bsr     $80a9c
080910: 102E 0093                  move.b  ($93,A6), D0
080914: E208                       lsr.b   #1, D0
080916: 5A00                       addq.b  #5, D0
080918: 7250                       moveq   #$50, D1
08091A: 4EB8 524E                  jsr     $524e.w
08091E: 4EF8 40E2                  jmp     $40e2.w
080922: 0100                       btst    D0, D0
080924: 0180                       bclr    D0, D0
080926: 0200 4EB8                  andi.b  #$b8, D0
08092A: 2F50 4A6E                  move.l  (A0), ($4a6e,A7)
08092E: 003E                       dc.w    $003e; ILLEGAL
080930: 6A2E                       bpl     $80960
080932: 4EB8 4334                  jsr     $4334.w
080936: 6728                       beq     $80960
080938: 542E 0004                  addq.b  #2, ($4,A6)
08093C: 422E 0181                  clr.b   ($181,A6)
080940: 4EB8 2E96                  jsr     $2e96.w
080944: 0240 000F                  andi.w  #$f, D0
080948: 207C 0007 EFF8             movea.l #$7eff8, A0
08094E: 1D70 0000 0191             move.b  (A0,D0.w), ($191,A6)
080954: 7250                       moveq   #$50, D1
080956: 7009                       moveq   #$9, D0
080958: 4EB8 524E                  jsr     $524e.w
08095C: 4EF8 7B90                  jmp     $7b90.w
080960: 4EB8 2EE2                  jsr     $2ee2.w
080964: 4A2E 009D                  tst.b   ($9d,A6)
080968: 662A                       bne     $80994
08096A: 4A6E 0014                  tst.w   ($14,A6)
08096E: 6A24                       bpl     $80994
080970: 223C 0104 0048             move.l  #$1040048, D1
080976: 4EB8 7CA0                  jsr     $7ca0.w
08097A: 532E 001E                  subq.b  #1, ($1e,A6)
08097E: 6A14                       bpl     $80994
080980: 3D7C 0050 0042             move.w  #$50, ($42,A6)
080986: 1D7C 0001 009D             move.b  #$1, ($9d,A6)
08098C: 7008                       moveq   #$8, D0
08098E: 7250                       moveq   #$50, D1
080990: 4EF8 524E                  jmp     $524e.w
080994: 522E 00E4                  addq.b  #1, ($e4,A6)
080998: 4E75                       rts
08099A: 0C2E 001A 00E4             cmpi.b  #$1a, ($e4,A6)
0809A0: 6C04                       bge     $809a6
0809A2: 4EB8 7AEC                  jsr     $7aec.w
0809A6: 4A6E 0014                  tst.w   ($14,A6)
0809AA: 6A04                       bpl     $809b0
0809AC: 4EF8 44EC                  jmp     $44ec.w
0809B0: 4EF8 2EE2                  jmp     $2ee2.w
0809B4: 102E 0004                  move.b  ($4,A6), D0
0809B8: 323B 0006                  move.w  ($6,PC,D0.w), D1
0809BC: 4EFB 1002                  jmp     ($2,PC,D1.w)
0809C0: 0008                       dc.w    $0008; ILLEGAL
0809C2: 005E 007E                  ori.w   #$7e, (A6)+
0809C6: 00B0 542E 0004 6100        ori.l   #$542e0004, INVALID 30
0809CE: 00CE                       dc.w    $00ce; ILLEGAL
0809D0: 102E 0093                  move.b  ($93,A6), D0
0809D4: 3200                       move.w  D0, D1
0809D6: E208                       lsr.b   #1, D0
0809D8: 4A2E 0093                  tst.b   ($93,A6)
0809DC: 6702                       beq     $809e0
0809DE: 5400                       addq.b  #2, D0
0809E0: 1D40 001E                  move.b  D0, ($1e,A6)
0809E4: 4881                       ext.w   D1
0809E6: 3D7B 1030 003C             move.w  ($30,PC,D1.w), ($3c,A6)
0809EC: 426E 0040                  clr.w   ($40,A6)
0809F0: 4A2E 0012                  tst.b   ($12,A6)
0809F4: 6604                       bne     $809fa
0809F6: 446E 003C                  neg.w   ($3c,A6)
0809FA: 3D7C 0400 003E             move.w  #$400, ($3e,A6)
080A00: 3D7C 0060 0042             move.w  #$60, ($42,A6)
080A06: 426E 000C                  clr.w   ($c,A6)
080A0A: 1D7C 0001 0181             move.b  #$1, ($181,A6)
080A10: 7000                       moveq   #$0, D0
080A12: 7250                       moveq   #$50, D1
080A14: 4EF8 524E                  jmp     $524e.w
080A18: 0280 0320 03C0             andi.l  #$32003c0, D0
080A1E: 6100 011E                  bsr     $80b3e
080A22: 4A6E 003E                  tst.w   ($3e,A6)
080A26: 6A12                       bpl     $80a3a
080A28: 542E 0004                  addq.b  #2, ($4,A6)
080A2C: 102E 0093                  move.b  ($93,A6), D0
080A30: E208                       lsr.b   #1, D0
080A32: 5400                       addq.b  #2, D0
080A34: 7250                       moveq   #$50, D1
080A36: 4EF8 524E                  jmp     $524e.w
080A3A: 4EF8 2EE2                  jmp     $2ee2.w
080A3E: 4A6E 0014                  tst.w   ($14,A6)
080A42: 6A1C                       bpl     $80a60
080A44: 223C 0104 0048             move.l  #$1040048, D1
080A4A: 4EB8 7CA0                  jsr     $7ca0.w
080A4E: 532E 001E                  subq.b  #1, ($1e,A6)
080A52: 6A0C                       bpl     $80a60
080A54: 542E 0004                  addq.b  #2, ($4,A6)
080A58: 7001                       moveq   #$1, D0
080A5A: 7250                       moveq   #$50, D1
080A5C: 4EF8 524E                  jmp     $524e.w
080A60: 302E 003C                  move.w  ($3c,A6), D0
080A64: 48C0                       ext.l   D0
080A66: E180                       asl.l   #8, D0
080A68: D1AE 0006                  add.l   D0, ($6,A6); Ground Tatsu
080A6C: 4EF8 2EE2                  jmp     $2ee2.w
080A70: 6100 00CC                  bsr     $80b3e
080A74: 4EB8 4334                  jsr     $4334.w
080A78: 6604                       bne     $80a7e
080A7A: 4EF8 2EE2                  jmp     $2ee2.w
080A7E: 422E 0181                  clr.b   ($181,A6)
080A82: 4EB8 2E96                  jsr     $2e96.w
080A86: 0240 000F                  andi.w  #$f, D0
080A8A: 207C 0007 EFF8             movea.l #$7eff8, A0
080A90: 1D70 0000 0191             move.b  (A0,D0.w), ($191,A6)
080A96: 4EF9 0007 8652             jmp     $78652.l
080A9C: 4EB8 7D24                  jsr     $7d24.w
080AA0: 223C 0000 0062             move.l  #$62, D1
080AA6: 4A2E 0381                  tst.b   ($381,A6)
080AAA: 6704                       beq     $80ab0
080AAC: 323C 0138                  move.w  #$138, D1
080AB0: 243C 0006 2010             move.l  #$62010, D2
080AB6: 4A2E 0012                  tst.b   ($12,A6)
080ABA: 6706                       beq     $80ac2
080ABC: 243C 0005 0010             move.l  #$50010, D2
080AC2: 263C 0180 004C             move.l  #$180004c, D3
080AC8: 4EB8 7A72                  jsr     $7a72.w
080ACC: 4EF8 7D3A                  jmp     $7d3a.w
080AD0: 102E 0005                  move.b  ($5,A6), D0
080AD4: 323B 0006                  move.w  ($6,PC,D0.w), D1
080AD8: 4EFB 1002                  jmp     ($2,PC,D1.w)
080ADC: 0004 005E                  ori.b   #$5e, D4
080AE0: 4A2D 02F2                  tst.b   ($2f2,A5)
080AE4: 6652                       bne     $80b38
080AE6: 542E 0005                  addq.b  #2, ($5,A6)
080AEA: 1D7C 0001 01A0             move.b  #$1, ($1a0,A6)
080AF0: 1D6E 01BE 0012             move.b  ($1be,A6), ($12,A6)
080AF6: 1B7C 0001 0DE1             move.b  #$1, ($de1,A5)
080AFC: 343C 5555                  move.w  #$5555, D2
080B00: 4A2D 0349                  tst.b   ($349,A5)
080B04: 670A                       beq     $80b10
080B06: 4A2D 0CBC                  tst.b   ($cbc,A5)
080B0A: 6714                       beq     $80b20
080B0C: 7001                       moveq   #$1, D0
080B0E: 6022                       bra     $80b32
080B10: 343C 1082                  move.w  #$1082, D2
080B14: 102E 0390                  move.b  ($390,A6), D0
080B18: 5300                       subq.b  #1, D0
080B1A: 6704                       beq     $80b20
080B1C: 343C EF7D                  move.w  #$ef7d, D2
080B20: 4EB8 2E96                  jsr     $2e96.w
080B24: 3200                       move.w  D0, D1
080B26: 7000                       moveq   #$0, D0
080B28: 0241 000F                  andi.w  #$f, D1
080B2C: 0302                       btst    D1, D2
080B2E: 6702                       beq     $80b32
080B30: 7001                       moveq   #$1, D0
080B32: 7252                       moveq   #$52, D1
080B34: 4EF8 524E                  jmp     $524e.w
080B38: 4E75                       rts
080B3A: 4EF8 2EE2                  jmp     $2ee2.w
080B3E: 302E 003C                  move.w  ($3c,A6), D0
080B42: 48C0                       ext.l   D0
080B44: E180                       asl.l   #8, D0
080B46: D1AE 0006                  add.l   D0, ($6,A6);Ground Tatsu
080B4A: 302E 003E                  move.w  ($3e,A6), D0
080B4E: 48C0                       ext.l   D0
080B50: E180                       asl.l   #8, D0
080B52: D1AE 000A                  add.l   D0, ($a,A6)
080B56: 302E 003C                  move.w  ($3c,A6), D0
080B5A: 906E 0040                  sub.w   ($40,A6), D0
080B5E: 3D40 003C                  move.w  D0, ($3c,A6)
080B62: 302E 003E                  move.w  ($3e,A6), D0
080B66: 906E 0042                  sub.w   ($42,A6), D0
080B6A: 3D40 003E                  move.w  D0, ($3e,A6)
080B6E: 4E75                       rts


