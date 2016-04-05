;Ryu's Normals Code SFA3 980904
;Extracted with dasm in Mame
;dasm filename,location,numberofbytes
;0x34394~0x34664

;crouch check
034394: 4A2E 0080                  tst.b   ($80,A6)
034398: 6600 0272                  bne     $3460c

03439C: 422E 02C8                  clr.b   ($2c8,A6)

;Kick check
0343A0: 4A2E 0081                  tst.b   ($81,A6)
0343A4: 6600 011E                  bne     $344c4

0343A8: 102E 0007                  move.b  ($7,A6), D0
0343AC: 323B 0006                  move.w  ($6,PC,D0.w), D1
0343B0: 4EFB 1002                  jmp     ($2,PC,D1.w) ;343B0 + 4 + Table value below
;0008 00BE 00C4 00EA

;jsr     $2ef6c.l; Meter gain function

;0008
0343BC: 542E 0007                  addq.b  #2, ($7,A6)
0343C0: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
0343C6: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
0343CC: 4EB9 0002 AEBC             jsr     $2aebc.l

;Comand normal checks
;Forward Input Check
0343D2: 082E 0001 0083             btst    #$1, ($83,A6)
0343D8: 6742                       beq     $3441c
;MP Check
0343DA: 0C2E 0002 0082             cmpi.b  #$2, ($82,A6)
0343E0: 6724                       beq     $34406;Branch to 6MP Animation
;X-Ism Check
0343E2: 4A2E 0132                  tst.b   ($132,A6)
0343E6: 6734                       beq     $3441c
;HP check
0343E8: 0C2E 0004 0082             cmpi.b  #$4, ($82,A6)
0343EE: 662C                       bne     $3441c

;6HP Animation
0343F0: 1D7C 0006 0007             move.b  #$6, ($7,A6)
0343F6: 7002                       moveq   #$2, D0
0343F8: 4EB9 0002 EF6C             jsr     $2ef6c.l;Meter gain function
0343FE: 7021                       moveq   #$21, D0;Animation Write
034400: 4EF9 0002 A710             jmp     $2a710.l;Set cancels

;6MP Animation
034406: 1D7C 0004 0007             move.b  #$4, ($7,A6)
03440C: 7001                       moveq   #$1, D0
03440E: 4EB9 0002 EF6C             jsr     $2ef6c.l;Meter gain function
034414: 701E                       moveq   #$1e, D0;Animation Write
034416: 4EF9 0002 A710             jmp     $2a710.l;Set cancels

;Other Punch Normals
03441C: 7000                       moveq   #$0, D0
03441E: 102E 0082                  move.b  ($82,A6), D0
034422: E208                       lsr.b   #1, D0
034424: 4EB9 0002 EF6C             jsr     $2ef6c.l;Meter gain function

03442A: 7200                       moveq   #$0, D1
03442C: 7000                       moveq   #$0, D0
03442E: 122E 0082                  move.b  ($82,A6), D1;Getting the Button Strength
034432: D001                       add.b   D1, D0

;Cpu Player Check apparently cpu can't use 4+P as a normal with ryu?
034434: 4A2E 0125                  tst.b   ($125,A6)
034438: 6612                       bne     $3444c

;Vism check
03443A: 0C2E 0001 0132             cmpi.b  #$1, ($132,A6)
034440: 660A                       bne     $3444c
;Input check
034442: 082E 0000 0083             btst    #$0, ($83,A6)
034448: 661C                       bne     $34466;Branch if there is input
03444A: 6018                       bra     $34464;branch if there is no input

;Distance grab
03444C: 363B 101E                  move.w  ($1e,PC,D1.w), D3;Distance write
;Xism Check
034450: 0C2E 00FF 0132             cmpi.b  #-$1, ($132,A6)
034456: 6604                       bne     $3445c
;Distance grab again
034458: 363B 1012                  move.w  ($12,PC,D1.w), D3;Distance write
03445C: 342E 021C                  move.w  ($21c,A6), D2;Distance grab
034460: B642                       cmp.w   D2, D3;Distance Compare
034462: 6402                       bcc     $34466
034464: 5200                       addq.b  #1, D0;Write normal
034466: 4EF9 0002 A710             jmp     $2a710.l
;03446C 0018 0038 003A Punch Distances

;00BE
034472: 4EF9 0002 F5AC             jmp     $2f5ac.l;St.Punch Normals end

;00C4 6MP Effect
034478: 4A2E 0033                  tst.b   ($33,A6)
03447C: 6B00 14FC                  bmi     $3597a
034480: 4A2E 0035                  tst.b   ($35,A6)
034484: 6712                       beq     $34498
034486: 203C 0002 0000             move.l  #$20000, D0;Movement
03448C: 4A2E 000B                  tst.b   ($b,A6);Side Check
034490: 6602                       bne     $34494
034492: 4480                       neg.l   D0
034494: D1AE 0010                  add.l   D0, ($10,A6);add to X Acceleration
034498: 4EF9 0002 A7EA             jmp     $2a7ea.l

;00EA 6HP Effect
03449E: 4A2E 0033                  tst.b   ($33,A6)
0344A2: 6B00 14D6                  bmi     $3597a
0344A6: 4A2E 0035                  tst.b   ($35,A6)
0344AA: 6712                       beq     $344be
0344AC: 203C 0003 8000             move.l  #$38000, D0;Movement also where i added the jump in video
;Side check
0344B2: 4A2E 000B                  tst.b   ($b,A6)
0344B6: 6602                       bne     $344ba
0344B8: 4480                       neg.l   D0
0344BA: D1AE 0010                  add.l   D0, ($10,A6);add to X Acceleration
0344BE: 4EF9 0002 A7EA             jmp     $2a7ea.l

;St.Kicks
0344C4: 102E 0007                  move.b  ($7,A6), D0
0344C8: 323B 0006                  move.w  ($6,PC,D0.w), D1
0344CC: 4EFB 1002                  jmp     ($2,PC,D1.w)
;Table
;0008 00BE 00C4 0128

;0008 6MK
0344D8: 542E 0007                  addq.b  #2, ($7,A6)
0344DC: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
0344E2: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
0344E8: 4EB9 0002 AEBC             jsr     $2aebc.l

;Xism Check
0344EE: 0C2E 00FF 0132             cmpi.b  #-$1, ($132,A6)
0344F4: 6700 004E                  beq     $34544
;Button Check
0344F8: 0C2E 0002 0082             cmpi.b  #$2, ($82,A6)
0344FE: 6644                       bne     $34544
;Stick Check
034500: 082E 0001 0083             btst    #$1, ($83,A6)
034506: 673C                       beq     $34544

034508: 1D7C 0004 0007             move.b  #$4, ($7,A6)
03450E: 7001                       moveq   #$1, D0
034510: 4EB9 0002 EF6C             jsr     $2ef6c.l;Meter gain function
034516: 223C 0003 6000             move.l  #$36000, D1

;Side Check
03451C: 4A2E 000B                  tst.b   ($b,A6)
034520: 6602                       bne     $34524
034522: 4481                       neg.l   D1

;6MK Animation
034524: 2D41 0040                  move.l  D1, ($40,A6)
034528: 2D7C 0004 0000 0044        move.l  #$40000, ($44,A6)
034530: 2D7C FFFF A000 004C        move.l  #$ffffa000, ($4c,A6)
034538: 422E 005B                  clr.b   ($5b,A6)
03453C: 701F                       moveq   #$1f, D0
03453E: 4EF9 0002 A710             jmp     $2a710.l

;Kicks
034544: 7000                       moveq   #$0, D0
;Grab Inputs
034546: 102E 0082                  move.b  ($82,A6), D0
03454A: E208                       lsr.b   #1, D0

03454C: 4EB9 0002 EF6C             jsr     $2ef6c.l;Meter gain

034552: 7200                       moveq   #$0, D1;Clear metergain math
034554: 7006                       moveq   #$6, D0;Addition to get Kick animations
034556: 122E 0082                  move.b  ($82,A6), D1;;Getting the Button Strength
03455A: D001                       add.b   D1, D0

;Cpu Player Check
03455C: 4A2E 0125                  tst.b   ($125,A6)
034560: 6612                       bne     $34574

;Vism Check to make close kicks 6+K
034562: 0C2E 0001 0132             cmpi.b  #$1, ($132,A6)
034568: 660A                       bne     $34574

;Stick input
03456A: 082E 0000 0083             btst    #$0, ($83,A6)
034570: 6610                       bne     $34582
034572: 600C                       bra     $34580

;Close Normals
034574: 323B 1012                  move.w  ($12,PC,D1.w), D1;34588 0030 0030 0030 Distances for Close Kicks
034578: 342E 021C                  move.w  ($21c,A6), D2
03457C: B242                       cmp.w   D2, D1
03457E: 6402                       bcc     $34582

;Output
034580: 5200                       addq.b  #1, D0
034582: 4EF9 0002 A710             jmp     $2a710.l
;0030 0030 0030 Distances for Close Kicks

;00BE ???
03458E: 4EF9 0002 F5AC             jmp     $2f5ac.l;St.Kick Normals end

;00C4 6MK
034594: 4A2E 005B                  tst.b   ($5b,A6)
034598: 670C                       beq     $0345a6
03459A: 422E 005B                  clr.b   ($5b,A6)
03459E: 700D                       moveq   #$d, D0
0345A0: 4EB9 0000 38E4             jsr     $38e4.l
0345A6: 4A2E 0035                  tst.b   ($35,A6)
0345AA: 6600 13DA                  bne     $35986
0345AE: 1D7C 0001 0031             move.b  #$1, ($31,A6)
0345B4: 202E 0040                  move.l  ($40,A6), D0
0345B8: D1AE 0010                  add.l   D0, ($10,A6)
0345BC: 202E 0044                  move.l  ($44,A6), D0
0345C0: D1AE 0014                  add.l   D0, ($14,A6)
0345C4: 202E 004C                  move.l  ($4c,A6), D0
0345C8: D1AE 0044                  add.l   D0, ($44,A6)
0345CC: 302E 0064                  move.w  ($64,A6), D0
0345D0: B06E 0014                  cmp.w   ($14,A6), D0
0345D4: 6500 13B0                  bcs     $035986;Air normal Code?
0345D8: 542E 0007                  addq.b  #2, ($7,A6)
0345DC: 3D6E 0064 0014             move.w  ($64,A6), ($14,A6)
0345E2: 422E 0031                  clr.b   ($31,A6)
0345E6: 422E 00A9                  clr.b   ($a9,A6)
0345EA: 4EB9 0000 369C             jsr     $369c.l
0345F0: 7020                       moveq   #$20, D0
0345F2: 4EF9 0002 A710             jmp     $2a710.l

;0128 6MK Landing
0345F8: 4A2E 0033                  tst.b   ($33,A6)
0345FC: 6A00 1388                  bpl     $35986
034600: 4EB9 0002 E35A             jsr     $2e35a.l
034606: 4EF9 0002 BAF2             jmp     $2baf2.l

;Crouching
03460C: 1D7C 0001 02C8             move.b  #$1, ($2c8,A6)
034612: 102E 0007                  move.b  ($7,A6), D0
034616: 323B 0006                  move.w  ($6,PC,D0.w), D1
03461A: 4EFB 1002                  jmp     ($2,PC,D1.w)
;Jumps 0004 0040

;0004 34622
034622: 542E 0007                  addq.b  #2, ($7,A6)
034626: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
03462C: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034632: 4EB9 0002 AEBC             jsr     $2aebc.l
034638: 7000                       moveq   #$0, D0
03463A: 102E 0082                  move.b  ($82,A6), D0
03463E: E208                       lsr.b   #1, D0
034640: 4EB9 0002 EF6C             jsr     $2ef6c.l;Meter gain
034646: 122E 0082                  move.b  ($82,A6), D1
03464A: E209                       lsr.b   #1, D1
03464C: 4A2E 0081                  tst.b   ($81,A6)
034650: 6702                       beq     $34654
034652: 5601                       addq.b  #3, D1
034654: 700C                       moveq   #$c, D0
034656: D001                       add.b   D1, D0
034658: 4EF9 0002 A710             jmp     $2a710.l

;0040 3465E
03465E: 4EF9 0002 F5AC             jmp     $2f5ac.l;Crouching End

;END
