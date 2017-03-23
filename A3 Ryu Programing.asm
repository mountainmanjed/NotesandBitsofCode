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

;Command normal checks
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

;Air Normals ;There is a Table for this
;CPU check
034664: 4A2E 0125                  tst.b   ($125,A6)
034668: 6708                       beq     $34672

;?? Check
03466A: 082E 0003 020A             btst    #$3, ($20a,A6)
034670: 6642                       bne     $346b4

034672: 1D7C 0006 0007             move.b  #$6, ($7,A6)
034678: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
03467E: 4EB9 0002 B1FC             jsr     $2b1fc.l
034684: 7000                       moveq   #$0, D0
034686: 102E 0082                  move.b  ($82,A6), D0
03468A: E208                       lsr.b   #1, D0
03468C: 4EB9 0002 EF6C             jsr     $2ef6c.l
034692: 7012                       moveq   #$12, D0
034694: 4A2E 003C                  tst.b   ($3c,A6)
034698: 6702                       beq     $3469c
03469A: 7018                       moveq   #$18, D0
03469C: 4A2E 0081                  tst.b   ($81,A6)
0346A0: 6702                       beq     $346a4
0346A2: 5640                       addq.w  #3, D0
0346A4: 7200                       moveq   #$0, D1
0346A6: 122E 0082                  move.b  ($82,A6), D1
0346AA: E209                       lsr.b   #1, D1
0346AC: D001                       add.b   D1, D0
0346AE: 4EF9 0002 A710             jmp     $2a710.l

;Extra Air attack programming
0346B4: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
0346BC: 1D7C 0006 00AA             move.b  #$6, ($aa,A6)
0346C2: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
0346C8: 6000 0488                  bra     $34b52

;Special Move Inputs Table pointer to this as well
;CC Activate
0346CC: 4EB9 0002 E096             jsr     $2e096.l
0346D2: 6600 00BE                  bne     $34792
0346D6: 49EE 01A0                  lea     ($1a0,A6), A4
;Shinku Tatsu
0346DA: 4EB9 0002 D6B2             jsr     $2d6b2.l
0346E0: 6600 0314                  bne     $349f6
0346E4: 49EE 0198                  lea     ($198,A6), A4
;Shinku Hadouken
0346E8: 4EB9 0002 D6BA             jsr     $2d6ba.l
0346EE: 6600 02CA                  bne     $349ba
0346F2: 49EE 01B8                  lea     ($1b8,A6), A4
;Shin Shoryu
0346F6: 4EB9 0002 D69A             jsr     $2d69a.l
0346FC: 6600 036C                  bne     $34a6a
034700: 4A2E 00B9                  tst.b   ($b9,A6)
034704: 662C                       bne     $34732
034706: 49EE 0188                  lea     ($188,A6), A4
;Shoryuken
03470A: 4EB9 0002 D61A             jsr     $2d61a.l
034710: 6600 0198                  bne     $348aa
034714: 49EE 01B0                  lea     ($1b0,A6), A4
;Red Hadouken
034718: 4EB9 0002 D662             jsr     $2d662.l
03471E: 6600 0212                  bne     $34932
034722: 49EE 0180                  lea     ($180,A6), A4
;Hadouken
034726: 4EB9 0002 D5EA             jsr     $2d5ea.l
03472C: 6600 01AE                  bne     $348dc
034730: 602A                       bra     $3475c
034732: 49EE 01B0                  lea     ($1b0,A6), A4
;Hadouken
034736: 4EB9 0002 D662             jsr     $2d662.l
03473C: 6600 01F4                  bne     $34932
034740: 49EE 0180                  lea     ($180,A6), A4
;CC Hadou
034744: 4EB9 0002 D5EA             jsr     $2d5ea.l
03474A: 6600 0190                  bne     $348dc
03474E: 49EE 0188                  lea     ($188,A6), A4
;CC Shoryu
034752: 4EB9 0002 D61A             jsr     $2d61a.l
034758: 6600 0150                  bne     $348aa
03475C: 49EE 0190                  lea     ($190,A6), A4
;Tatsu
034760: 4EB9 0002 D612             jsr     $2d612.l
034766: 6600 02C0                  bne     $34a28
03476A: 49EE 01A8                  lea     ($1a8,A6), A4
;Hadou Fake
03476E: 4EB9 0002 D6EA             jsr     $2d6ea.l
034774: 6600 0216                  bne     $3498c
034778: 49EE 0300                  lea     ($300,A6), A4
;Alpha counter
03477C: 4EB9 0002 E0D6             jsr     $2e0d6.l
034782: 6600 009C                  bne     $34820
;Taunt?
034786: 4EB9 0002 E0CC             jsr     $2e0cc.l
03478C: 6600 0068                  bne     $347f6
034790: 4E75                       rts

034792: 4A2E 028A                  tst.b   ($28a,A6)
034796: 6600 FF3E                  bne     $346d6
03479A: 4A2E 0031                  tst.b   ($31,A6)
03479E: 6600 0030                  bne     $347d0
0347A2: 4EB9 0002 EF54             jsr     $2ef54.l
0347A8: 6700 FF2C                  beq     $346d6
0347AC: 4EB9 0002 ECD8             jsr     $2ecd8.l
0347B2: 6700 FF22                  beq     $346d6
0347B6: 2D7C 0200 1000 0004        move.l  #$2001000, ($4,A6)
0347BE: 1D7C 0010 00AA             move.b  #$10, ($aa,A6)
0347C4: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
0347CA: 4EF9 0002 F980             jmp     $2f980.l
0347D0: 4A2E 00B9                  tst.b   ($b9,A6)
0347D4: 6600 FF00                  bne     $346d6
0347D8: 4EB9 0002 ED28             jsr     $2ed28.l
0347DE: 6700 FEF6                  beq     $346d6
0347E2: 2D7C 0200 1000 0004        move.l  #$2001000, ($4,A6)
0347EA: 1D7C 0010 00AA             move.b  #$10, ($aa,A6)
0347F0: 4EF9 0002 F980             jmp     $2f980.l

0347F6: 4A2E 00B9                  tst.b   ($b9,A6)
0347FA: 6606                       bne     $34802
0347FC: 4A2E 00BC                  tst.b   ($bc,A6)
034800: 678E                       beq     $34790
034802: 4EB9 0002 ED00             jsr     $2ed00.l
034808: 6786                       beq     $34790
03480A: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
034812: 1D7C 000C 00AA             move.b  #$c, ($aa,A6)
034818: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
03481E: 4E75                       rts

034820: 4EB9 0002 EDF8             jsr     $2edf8.l
034826: 6700 FF5E                  beq     $34786
03482A: 4A2E 0132                  tst.b   ($132,A6)
03482E: 6600 0040                  bne     $34870
034832: 2D7C 0200 0E0A 0004        move.l  #$2000e0a, ($4,A6)
03483A: 422E 00AA                  clr.b   ($aa,A6)
03483E: 422E 02C8                  clr.b   ($2c8,A6)
034842: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
034848: 1D7C 0004 0082             move.b  #$4, ($82,A6)
03484E: 422E 005F                  clr.b   ($5f,A6)
034852: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034858: 386E 0038                  movea.w ($38,A6), A4
03485C: 197C 0015 005F             move.b  #$15, ($5f,A4)
034862: 1D7C 0019 025D             move.b  #$19, ($25d,A6)
034868: 7016                       moveq   #$16, D0
03486A: 4EF9 0002 A758             jmp     $2a758.l

034870: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
034878: 1D7C 000E 00AA             move.b  #$e, ($aa,A6)
03487E: 422E 02C8                  clr.b   ($2c8,A6)
034882: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
034888: 422E 005F                  clr.b   ($5f,A6)
03488C: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034892: 386E 0038                  movea.w ($38,A6), A4
034896: 197C 0016 005F             move.b  #$16, ($5f,A4)
03489C: 1D7C 001A 025D             move.b  #$1a, ($25d,A6)
0348A2: 7016                       moveq   #$16, D0
0348A4: 4EF9 0002 A758             jmp     $2a758.l

0348AA: 4EB9 0002 ED00             jsr     $2ed00.l
0348B0: 660C                       bne     $348be
0348B2: 4A2E 00B9                  tst.b   ($b9,A6)
0348B6: 6700 FE5C                  beq     $34714
0348BA: 6000 FEA0                  bra     $3475c
0348BE: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
0348C6: 422E 00AA                  clr.b   ($aa,A6)
0348CA: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
0348D0: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
0348D6: 4EF9 0002 F728             jmp     $2f728.l

0348DC: 4A2E 00B9                  tst.b   ($b9,A6)
0348E0: 6614                       bne     $348f6
0348E2: 4A2E 0238                  tst.b   ($238,A6)
0348E6: 6600 FE48                  bne     $34730
0348EA: 4EB9 0002 ED00             jsr     $2ed00.l
0348F0: 6620                       bne     $34912
0348F2: 6000 FE3C                  bra     $34730
0348F6: 0C2E 0002 0238             cmpi.b  #$2, ($238,A6)
0348FC: 6408                       bcc     $34906
0348FE: 4EB9 0002 ED00             jsr     $2ed00.l
034904: 660C                       bne     $34912
034906: 4A2E 00B9                  tst.b   ($b9,A6)
03490A: 6700 FE24                  beq     $34730
03490E: 6000 FE3E                  bra     $3474e
034912: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
03491A: 1D7C 0002 00AA             move.b  #$2, ($aa,A6)
034920: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034926: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
03492C: 4EF9 0002 F728             jmp     $2f728.l
034932: 4A2E 00B9                  tst.b   ($b9,A6)
034936: 6616                       bne     $3494e
034938: 4A2E 0238                  tst.b   ($238,A6)
03493C: 6600 FDE4                  bne     $34722
034940: 4EB9 0002 ED00             jsr     $2ed00.l
034946: 6600 0024                  bne     $3496c
03494A: 6000 FDD6                  bra     $34722
03494E: 0C2E 0002 0238             cmpi.b  #$2, ($238,A6)
034954: 6400 000A                  bcc     $34960
034958: 4EB9 0002 ED00             jsr     $2ed00.l
03495E: 660C                       bne     $3496c
034960: 4A2E 00B9                  tst.b   ($b9,A6)
034964: 6700 FDBC                  beq     $34722
034968: 6000 FDD6                  bra     $34740
03496C: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
034974: 1D7C 0014 00AA             move.b  #$14, ($aa,A6)
03497A: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034980: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
034986: 4EF9 0002 F728             jmp     $2f728.l
03498C: 0C2E 00FF 0132             cmpi.b  #-$1, ($132,A6)
034992: 6700 FDE4                  beq     $34778
034996: 4EB9 0002 ED00             jsr     $2ed00.l
03499C: 6700 FDDA                  beq     $34778
0349A0: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
0349A8: 1D7C 0012 00AA             move.b  #$12, ($aa,A6)
0349AE: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
0349B4: 422E 00A9                  clr.b   ($a9,A6)
0349B8: 4E75                       rts
0349BA: 0C2E 0001 0132             cmpi.b  #$1, ($132,A6)
0349C0: 6700 FD30                  beq     $346f2
0349C4: 4A2E 0238                  tst.b   ($238,A6)
0349C8: 6600 FD28                  bne     $346f2
0349CC: 4EB9 0002 ECD8             jsr     $2ecd8.l
0349D2: 6700 FD1E                  beq     $346f2
0349D6: 2D7C 0200 1000 0004        move.l  #$2001000, ($4,A6)
0349DE: 1D7C 0008 00AA             move.b  #$8, ($aa,A6)
0349E4: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
0349EA: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
0349F0: 4EF9 0002 F4BC             jmp     $2f4bc.l
0349F6: 4A2E 0132                  tst.b   ($132,A6)
0349FA: 6600 FCE8                  bne     $346e4
0349FE: 4EB9 0002 ECD8             jsr     $2ecd8.l
034A04: 6700 FCDE                  beq     $346e4
034A08: 2D7C 0200 1000 0004        move.l  #$2001000, ($4,A6)
034A10: 1D7C 000A 00AA             move.b  #$a, ($aa,A6)
034A16: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034A1C: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
034A22: 4EF9 0002 F4DC             jmp     $2f4dc.l
034A28: 4A2E 0031                  tst.b   ($31,A6)
034A2C: 6712                       beq     $34a40
034A2E: 4EB9 0002 ED28             jsr     $2ed28.l
034A34: 6700 FD34                  beq     $3476a
034A38: 1D7C 0006 00AA             move.b  #$6, ($aa,A6)
034A3E: 6016                       bra     $34a56
034A40: 4EB9 0002 ED00             jsr     $2ed00.l
034A46: 6700 FD22                  beq     $3476a
034A4A: 1D7C 0004 00AA             move.b  #$4, ($aa,A6)
034A50: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034A56: 2D7C 0200 0E00 0004        move.l  #$2000e00, ($4,A6)
034A5E: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
034A64: 4EF9 0002 F74C             jmp     $2f74c.l
034A6A: 4A2E 0132                  tst.b   ($132,A6)
034A6E: 6600 FC90                  bne     $34700
034A72: 0C6E 0090 011E             cmpi.w  #$90, ($11e,A6)
034A78: 6500 FC86                  bcs     $34700
034A7C: 4EB9 0002 ECD8             jsr     $2ecd8.l
034A82: 6700 FC7C                  beq     $34700
034A86: 2D7C 0200 1000 0004        move.l  #$2001000, ($4,A6)
034A8E: 1D7C 0016 00AA             move.b  #$16, ($aa,A6)
034A94: 1D6E 02C9 000B             move.b  ($2c9,A6), ($b,A6)
034A9A: 1D7C 0001 00A9             move.b  #$1, ($a9,A6)
034AA0: 1D7C 0004 0082             move.b  #$4, ($82,A6)
034AA6: 1D7C 0004 0248             move.b  #$4, ($248,A6)
034AAC: 4E75                       rts
034AAE: 102E 00AA                  move.b  ($aa,A6), D0
034AB2: 323B 0006                  move.w  ($6,PC,D0.w), D1
034AB6: 4EFB 1002                  jmp     ($2,PC,D1.w)
034ABA: 0018 002A                  ori.b   #$2a, (A0)+
034ABE: 0018 0036                  ori.b   #$36, (A0)+
034AC2: 0042 0058                  ori.w   #$58, D2
034AC6: 0084 0018 0018             ori.l   #$180018, D4
034ACC: 001C 002A                  ori.b   #$2a, (A4)+
034AD0: 006E 6000 0076             ori.w   #$6000, ($76,A6)
034AD6: 0C2E 00FF 0132             cmpi.b  #-$1, ($132,A6)
034ADC: 6700 0070                  beq     $34b4e
034AE0: 6000 0068                  bra     $34b4a
034AE4: 4A2E 0238                  tst.b   ($238,A6)
034AE8: 6600 0064                  bne     $34b4e
034AEC: 6000 005C                  bra     $34b4a
034AF0: 4A2E 0031                  tst.b   ($31,A6)
034AF4: 6700 0058                  beq     $34b4e
034AF8: 6000 0050                  bra     $34b4a
034AFC: 0C6E 0030 011E             cmpi.w  #$30, ($11e,A6)
034B02: 6500 004A                  bcs     $34b4e
034B06: 4A2E 0238                  tst.b   ($238,A6)
034B0A: 6600 0042                  bne     $34b4e
034B0E: 6000 003A                  bra     $34b4a
034B12: 4A2E 0132                  tst.b   ($132,A6)
034B16: 6600 0036                  bne     $34b4e
034B1A: 0C6E 0030 011E             cmpi.w  #$30, ($11e,A6)
034B20: 6500 002C                  bcs     $34b4e
034B24: 6000 0024                  bra     $34b4a
034B28: 4A2E 0132                  tst.b   ($132,A6)
034B2C: 6600 0020                  bne     $34b4e
034B30: 0C6E 0090 011E             cmpi.w  #$90, ($11e,A6)
034B36: 6500 0016                  bcs     $34b4e
034B3A: 6000 000E                  bra     $34b4a
034B3E: 4A2E 00BC                  tst.b   ($bc,A6)
034B42: 6700 000A                  beq     $34b4e
034B46: 6000 0002                  bra     $34b4a
034B4A: 7001                       moveq   #$1, D0
034B4C: 4E75                       rts
034B4E: 7000                       moveq   #$0, D0
034B50: 4E75                       rts
034B52: 102E 00AA                  move.b  ($aa,A6), D0
034B56: 323B 0006                  move.w  ($6,PC,D0.w), D1
034B5A: 4EFB 1002                  jmp     ($2,PC,D1.w)
034B5E: 0018 0194                  ori.b   #$94, (A0)+
034B62: 0354                       bchg    D1, (A4)
034B64: 0468 05DC 0724             subi.w  #$5dc, ($724,A0)
034B6A: 087A                       dc.w    $087a; ILLEGAL
034B6C: 08C6 090C                  bset    #$c, D6
034B70: 098E 0194                  movep.w D4, ($194,A6)
034B74: 09C4                       bset    D4, D4
034B76: 102E 0007                  move.b  ($7,A6), D0
034B7A: 323B 0006                  move.w  ($6,PC,D0.w), D1
034B7E: 4EFB 1002                  jmp     ($2,PC,D1.w)
034B82: 000C                       dc.w    $000c; ILLEGAL
034B84: 0078 008E 00C0             ori.w   #$8e, $c0.w
034B8A: 00F8                       dc.w    $00f8; ILLEGAL
034B8C: 0114                       btst    D0, (A4)
034B8E: 542E 0007                  addq.b  #2, ($7,A6)
034B92: 1D7C 0001 00CE             move.b  #$1, ($ce,A6)
034B98: 7000                       moveq   #$0, D0
034B9A: 102E 0082                  move.b  ($82,A6), D0
034B9E: E208                       lsr.b   #1, D0
034BA0: 5E00                       addq.b  #7, D0
034BA2: 4EB9 0002 EF6C             jsr     $2ef6c.l
034BA8: 4EB9 0002 0674             jsr     $20674.l
034BAE: 2D7C FFFF 8000 0048        move.l  #$ffff8000, ($48,A6)
034BB6: 2D7C FFFF A000 004C        move.l  #$ffffa000, ($4c,A6)
034BBE: 122E 0082                  move.b  ($82,A6), D1
034BC2: 4881                       ext.w   D1
034BC4: E549                       lsl.w   #2, D1
034BC6: 2D7B 101A 0040             move.l  ($1a,PC,D1.w), ($40,A6)
034BCC: 2D7B 1018 0044             move.l  ($18,PC,D1.w), ($44,A6)
034BD2: 7000                       moveq   #$0, D0
034BD4: 102E 0082                  move.b  ($82,A6), D0
034BD8: E208                       lsr.b   #1, D0
034BDA: 5800                       addq.b  #4, D0
034BDC: 4EF9 0002 A758             jmp     $2a758.l
034BE2: 0004 0000                  ori.b   #$0, D4
034BE6: 0005 0000                  ori.b   #$0, D5
034BEA: 0006 0000                  ori.b   #$0, D6
034BEE: 0007 0000                  ori.b   #$0, D7
034BF2: 0008                       dc.w    $0008; ILLEGAL
034BF4: 0000 0009                  ori.b   #$9, D0
034BF8: 0000 4A2E                  ori.b   #$2e, D0
034BFC: 0035 660A 542E             ori.b   #$a, INVALID 35
034C02: 0007 1D7C                  ori.b   #$7c, D7
034C06: 0001 0031                  ori.b   #$31, D1
034C0A: 4EF9 0002 A7EA             jmp     $2a7ea.l
034C10: 6100 00CE                  bsr     $34ce0
034C14: 302E 0064                  move.w  ($64,A6), D0
034C18: B06E 0014                  cmp.w   ($14,A6), D0
034C1C: 643C                       bcc     $34c5a
034C1E: 202E 0040                  move.l  ($40,A6), D0
034C22: 4A2E 000B                  tst.b   ($b,A6)
034C26: 6602                       bne     $34c2a
034C28: 4480                       neg.l   D0
034C2A: D1AE 0010                  add.l   D0, ($10,A6)
034C2E: 202E 0048                  move.l  ($48,A6), D0
034C32: D1AE 0040                  add.l   D0, ($40,A6)
034C36: 6A04                       bpl     $34c3c
034C38: 542E 0007                  addq.b  #2, ($7,A6)
034C3C: 4EF9 0002 A7EA             jmp     $2a7ea.l
034C42: 6100 009C                  bsr     $34ce0
034C46: 302E 0064                  move.w  ($64,A6), D0
034C4A: B06E 0014                  cmp.w   ($14,A6), D0
034C4E: 640A                       bcc     $34c5a
034C50: 4A2E 0035                  tst.b   ($35,A6)
034C54: 6700 0084                  beq     $34cda
034C58: 4E75                       rts
034C5A: 542E 0007                  addq.b  #2, ($7,A6)
034C5E: 422E 0031                  clr.b   ($31,A6)
034C62: 3D40 0014                  move.w  D0, ($14,A6)
034C66: 422E 00A9                  clr.b   ($a9,A6)
034C6A: 422E 00CE                  clr.b   ($ce,A6)
034C6E: 4EB9 0000 369C             jsr     $369c.l
034C74: 4EF9 0002 A7EA             jmp     $2a7ea.l
034C7A: 4A2E 0033                  tst.b   ($33,A6)
034C7E: 6A0A                       bpl     $34c8a
034C80: 4EB9 0002 E35A             jsr     $2e35a.l
034C86: 6000 0CF2                  bra     $3597a
034C8A: 4EB9 0002 F6F8             jsr     $2f6f8.l
034C90: 4EF9 0002 A7EA             jmp     $2a7ea.l
034C96: 4A2E 0033                  tst.b   ($33,A6)
034C9A: 6A2E                       bpl     $34cca
034C9C: 1D7C 0002 0007             move.b  #$2, ($7,A6)
034CA2: 2D7C 0008 0000 0040        move.l  #$80000, ($40,A6)
034CAA: 2D7C FFFF 8000 0048        move.l  #$ffff8000, ($48,A6)
034CB2: 2D7C 0009 0000 0044        move.l  #$90000, ($44,A6)
034CBA: 2D7C FFFF A000 004C        move.l  #$ffffa000, ($4c,A6)
034CC2: 7017                       moveq   #$17, D0
034CC4: 4EF9 0002 A758             jmp     $2a758.l
034CCA: 4A2E 0035                  tst.b   ($35,A6)
034CCE: 670A                       beq     $34cda
034CD0: 422E 0035                  clr.b   ($35,A6)
034CD4: 4EB9 0008 0E8E             jsr     $80e8e.l
034CDA: 4EF9 0002 A7EA             jmp     $2a7ea.l
034CE0: 202E 0044                  move.l  ($44,A6), D0
034CE4: D1AE 0014                  add.l   D0, ($14,A6)
034CE8: 202E 004C                  move.l  ($4c,A6), D0
034CEC: D1AE 0044                  add.l   D0, ($44,A6)
034CF0: 4E75                       rts
034CF2: 102E 0007                  move.b  ($7,A6), D0
034CF6: 323B 0006                  move.w  ($6,PC,D0.w), D1
034CFA: 4EFB 1002                  jmp     ($2,PC,D1.w)
034CFE: 0006 0042                  ori.b   #$42, D6
034D02: 0190                       bclr    D0, (A0)
034D04: 542E 0007                  addq.b  #2, ($7,A6)
034D08: 1D7C 0001 00CE             move.b  #$1, ($ce,A6)
034D0E: 7000                       moveq   #$0, D0
034D10: 102E 0082                  move.b  ($82,A6), D0
034D14: E208                       lsr.b   #1, D0
034D16: 5600                       addq.b  #3, D0
034D18: 4EB9 0002 EF6C             jsr     $2ef6c.l
034D1E: 4EB9 0002 0674             jsr     $20674.l
034D24: 7011                       moveq   #$11, D0
034D26: 0C2E 0014 00AA             cmpi.b  #$14, ($aa,A6)
034D2C: 6702                       beq     $34d30
034D2E: 7010                       moveq   #$10, D0
034D30: 7200                       moveq   #$0, D1
034D32: 122E 0082                  move.b  ($82,A6), D1
034D36: E209                       lsr.b   #1, D1
034D38: D001                       add.b   D1, D0
034D3A: 4EF9 0002 A758             jmp     $2a758.l
034D40: 4EB9 0002 A7EA             jsr     $2a7ea.l
034D46: 4A2E 0035                  tst.b   ($35,A6)
034D4A: 6700 0120                  beq     $34e6c
034D4E: 542E 0007                  addq.b  #2, ($7,A6)
034D52: 1D7C 0003 003A             move.b  #$3, ($3a,A6)
034D58: 4EB9 0001 C1C8             jsr     $1c1c8.l
034D5E: 6700 010C                  beq     $34e6c
034D62: 5214                       addq.b  #1, (A4)
034D64: 397C 0000 0002             move.w  #$0, ($2,A4)
034D6A: 196E 005A 005A             move.b  ($5a,A6), ($5a,A4)
034D70: 196E 0059 0059             move.b  ($59,A6), ($59,A4)
034D76: 196E 0082 0072             move.b  ($82,A6), ($72,A4)
034D7C: 196E 003E 003E             move.b  ($3e,A6), ($3e,A4)
034D82: 197C 0000 00BD             move.b  #$0, ($bd,A4)
034D88: 197C 0000 0073             move.b  #$0, ($73,A4)
034D8E: 196E 000E 000E             move.b  ($e,A6), ($e,A4)
034D94: 196E 000B 000B             move.b  ($b,A6), ($b,A4)
034D9A: 396E 000C 000C             move.w  ($c,A6), ($c,A4)
034DA0: 396E 0026 0026             move.w  ($26,A6), ($26,A4)
034DA6: 396E 0010 0010             move.w  ($10,A6), ($10,A4)
034DAC: 396E 0014 0014             move.w  ($14,A6), ($14,A4)
034DB2: 397C 0000 0050             move.w  #$0, ($50,A4)
034DB8: 394E 0036                  move.w  A6, ($36,A4)
034DBC: 6100 00B0                  bsr     $34e6e
034DC0: 0C2E 0014 00AA             cmpi.b  #$14, ($aa,A6)
034DC6: 6606                       bne     $34dce
034DC8: 062C 0016 0072             addi.b  #$16, ($72,A4)
034DCE: 3D4C 00A4                  move.w  A4, ($a4,A6)
034DD2: 522E 0238                  addq.b  #1, ($238,A6)
034DD6: 4A2E 00B9                  tst.b   ($b9,A6)
034DDA: 6700 0090                  beq     $34e6c
034DDE: 302E 00E4                  move.w  ($e4,A6), D0
034DE2: B06E 02A6                  cmp.w   ($2a6,A6), D0
034DE6: 6500 0084                  bcs     $34e6c
034DEA: 4EB9 0001 C1C8             jsr     $1c1c8.l
034DF0: 677A                       beq     $34e6c
034DF2: 5214                       addq.b  #1, (A4)
034DF4: 397C 0000 0002             move.w  #$0, ($2,A4)
034DFA: 196E 005A 005A             move.b  ($5a,A6), ($5a,A4)
034E00: 196E 0059 0059             move.b  ($59,A6), ($59,A4)
034E06: 196E 0082 0072             move.b  ($82,A6), ($72,A4)
034E0C: 196E 003E 003E             move.b  ($3e,A6), ($3e,A4)
034E12: 197C 0000 00BD             move.b  #$0, ($bd,A4)
034E18: 197C 0000 0073             move.b  #$0, ($73,A4)
034E1E: 196E 000E 000E             move.b  ($e,A6), ($e,A4)
034E24: 196E 000B 000B             move.b  ($b,A6), ($b,A4)
034E2A: 396E 000C 000C             move.w  ($c,A6), ($c,A4)
034E30: 396E 0026 0026             move.w  ($26,A6), ($26,A4)
034E36: 396E 0010 0010             move.w  ($10,A6), ($10,A4)
034E3C: 396E 0014 0014             move.w  ($14,A6), ($14,A4)
034E42: 397C 0000 0050             move.w  #$0, ($50,A4)
034E48: 394E 0036                  move.w  A6, ($36,A4)
034E4C: 6100 0020                  bsr     $34e6e
034E50: 196E 02A7 00DC             move.b  ($2a7,A6), ($dc,A4)
034E56: 0C2E 0014 00AA             cmpi.b  #$14, ($aa,A6)
034E5C: 6606                       bne     $34e64
034E5E: 062C 0016 0072             addi.b  #$16, ($72,A4)
034E64: 3D4C 00A4                  move.w  A4, ($a4,A6)
034E68: 522E 0238                  addq.b  #1, ($238,A6)
034E6C: 4E75                       rts
034E6E: 700C                       moveq   #$c, D0
034E70: 0C2E 0014 0007             cmpi.b  #$14, ($7,A6)
034E76: 6600 0004                  bne     $34e7c
034E7A: 700E                       moveq   #$e, D0
034E7C: 1940 00CC                  move.b  D0, ($cc,A4)
034E80: 197C 0002 00EE             move.b  #$2, ($ee,A4)
034E86: 197C 0008 00EF             move.b  #$8, ($ef,A4)
034E8C: 4E75                       rts
034E8E: 4A2E 0033                  tst.b   ($33,A6)
034E92: 6B00 0AE6                  bmi     $3597a
034E96: 4A2E 003A                  tst.b   ($3a,A6)
034E9A: 670A                       beq     $34ea6
034E9C: 532E 003A                  subq.b  #1, ($3a,A6)
034EA0: 660A                       bne     $34eac
034EA2: 422E 00CE                  clr.b   ($ce,A6)
034EA6: 4EB9 0002 F6F8             jsr     $2f6f8.l
034EAC: 4EF9 0002 A7EA             jmp     $2a7ea.l
034EB2: 102E 0007                  move.b  ($7,A6), D0
034EB6: 323B 0006                  move.w  ($6,PC,D0.w), D1
034EBA: 4EFB 1002                  jmp     ($2,PC,D1.w)
034EBE: 000A                       dc.w    $000a; ILLEGAL
034EC0: 0070 00A6 00CC             ori.w   #$a6, (-$34,A0,D0.w)
034EC6: 00F4                       dc.w    $00f4; ILLEGAL
034EC8: 542E 0007                  addq.b  #2, ($7,A6)
034ECC: 1D7C 0001 00CE             move.b  #$1, ($ce,A6)
034ED2: 7000                       moveq   #$0, D0
034ED4: 102E 0082                  move.b  ($82,A6), D0
034ED8: E208                       lsr.b   #1, D0
034EDA: 5A00                       addq.b  #5, D0
034EDC: 4EB9 0002 EF6C             jsr     $2ef6c.l
034EE2: 4EB9 0002 0674             jsr     $20674.l
034EE8: 426E 0016                  clr.w   ($16,A6)
034EEC: 2D7C 0004 0000 0044        move.l  #$40000, ($44,A6)
034EF4: 1D7C 0001 0031             move.b  #$1, ($31,A6)
034EFA: 2D7C FFFF A000 004C        move.l  #$ffffa000, ($4c,A6)
034F02: 7000                       moveq   #$0, D0
034F04: 102E 0082                  move.b  ($82,A6), D0
034F08: D040                       add.w   D0, D0
034F0A: 203B 0016                  move.l  ($16,PC,D0.w), D0
034F0E: 4A2E 000B                  tst.b   ($b,A6)
034F12: 6602                       bne     $34f16
034F14: 4480                       neg.l   D0
034F16: 2D40 0040                  move.l  D0, ($40,A6)
034F1A: 7007                       moveq   #$7, D0
034F1C: 4EF9 0002 A758             jmp     $2a758.l
034F22: 0002 8000                  ori.b   #$0, D2
034F26: 0003 2000                  ori.b   #$0, D3
034F2A: 0003 C000                  ori.b   #$0, D3
034F2E: 202E 0040                  move.l  ($40,A6), D0
034F32: D1AE 0010                  add.l   D0, ($10,A6)
034F36: 202E 0044                  move.l  ($44,A6), D0
034F3A: D1AE 0014                  add.l   D0, ($14,A6)
034F3E: 202E 004C                  move.l  ($4c,A6), D0
034F42: D1AE 0044                  add.l   D0, ($44,A6)
034F46: 6A00 0A3E                  bpl     $35986
034F4A: 542E 0007                  addq.b  #2, ($7,A6)
034F4E: 7200                       moveq   #$0, D1
034F50: 122E 0082                  move.b  ($82,A6), D1
034F54: E249                       lsr.w   #1, D1
034F56: 1D41 01FE                  move.b  D1, ($1fe,A6)
034F5A: 7009                       moveq   #$9, D0
034F5C: D001                       add.b   D1, D0
034F5E: 4EF9 0002 A758             jmp     $2a758.l
034F64: 4A2E 0033                  tst.b   ($33,A6)
034F68: 6A12                       bpl     $34f7c
034F6A: 532E 01FE                  subq.b  #1, ($1fe,A6)
034F6E: 6A0C                       bpl     $34f7c
034F70: 542E 0007                  addq.b  #2, ($7,A6)
034F74: 7008                       moveq   #$8, D0
034F76: 4EF9 0002 A758             jmp     $2a758.l
034F7C: 202E 0040                  move.l  ($40,A6), D0
034F80: D1AE 0010                  add.l   D0, ($10,A6)
034F84: 4EF9 0002 A7EA             jmp     $2a7ea.l
034F8A: 6100 018C                  bsr     $35118
034F8E: 6500 09F6                  bcs     $35986
034F92: 4EB9 0000 369C             jsr     $369c.l
034F98: 3D6E 0064 0014             move.w  ($64,A6), ($14,A6)
034F9E: 426E 0016                  clr.w   ($16,A6)
034FA2: 422E 0031                  clr.b   ($31,A6)
034FA6: 542E 0007                  addq.b  #2, ($7,A6)
034FAA: 7011                       moveq   #$11, D0
034FAC: 4EF9 0002 A708             jmp     $2a708.l
034FB2: 4A2E 0033                  tst.b   ($33,A6)
034FB6: 6A00 09CE                  bpl     $35986
034FBA: 4EB9 0002 E35A             jsr     $2e35a.l
034FC0: 4EF9 0002 BAF2             jmp     $2baf2.l
034FC6: 102E 0007                  move.b  ($7,A6), D0
034FCA: 323B 0026                  move.w  ($26,PC,D0.w), D1
034FCE: 4EBB 1022                  jsr     ($22,PC,D1.w)
034FD2: 4A2E 01FF                  tst.b   ($1ff,A6)
034FD6: 6718                       beq     $34ff0
034FD8: 4A6E 0044                  tst.w   ($44,A6)
034FDC: 6A12                       bpl     $34ff0
034FDE: 302E 0014                  move.w  ($14,A6), D0
034FE2: 906E 0064                  sub.w   ($64,A6), D0
034FE6: 0C40 0010                  cmpi.w  #$10, D0
034FEA: 6404                       bcc     $34ff0
034FEC: 422E 01FF                  clr.b   ($1ff,A6)
034FF0: 4E75                       rts
034FF2: 000A                       dc.w    $000a; ILLEGAL
034FF4: 00A8 00CA 00E4 0112        ori.l   #$ca00e4, ($112,A0)
034FFC: 542E 0007                  addq.b  #2, ($7,A6)
035000: 422E 01FF                  clr.b   ($1ff,A6)
035004: 1D7C 0001 00CE             move.b  #$1, ($ce,A6)
03500A: 4A6E 0044                  tst.w   ($44,A6)
03500E: 6A14                       bpl     $35024
035010: 302E 0014                  move.w  ($14,A6), D0
035014: 906E 0064                  sub.w   ($64,A6), D0
035018: 0C40 0030                  cmpi.w  #$30, D0
03501C: 650E                       bcs     $3502c
03501E: 1D7C 0001 01FF             move.b  #$1, ($1ff,A6)
035024: 7009                       moveq   #$9, D0
035026: 4EB9 0000 38E4             jsr     $38e4.l
03502C: 7006                       moveq   #$6, D0
03502E: 4EB9 0002 EF6C             jsr     $2ef6c.l
035034: 4EB9 0002 0674             jsr     $20674.l
03503A: 7000                       moveq   #$0, D0
03503C: 102E 0082                  move.b  ($82,A6), D0
035040: E548                       lsl.w   #2, D0
035042: 223B 0024                  move.l  ($24,PC,D0.w), D1
035046: 2D7B 0024 004C             move.l  ($24,PC,D0.w), ($4c,A6)
03504C: 4A2E 003C                  tst.b   ($3c,A6)
035050: 6A0A                       bpl     $3505c
035052: 202E 0040                  move.l  ($40,A6), D0
035056: E280                       asr.l   #1, D0
035058: 2D40 0040                  move.l  D0, ($40,A6)
03505C: 4AAE 0040                  tst.l   ($40,A6)
035060: 671E                       beq     $35080
035062: 6A24                       bpl     $35088
035064: 4481                       neg.l   D1
035066: 6020                       bra     $35088
035068: 0001 0000                  ori.b   #$0, D1
03506C: FFFF                       dc.w    $ffff; opcode 1111
03506E: B000                       cmp.b   D0, D0
035070: 0001 8000                  ori.b   #$0, D1
035074: FFFF                       dc.w    $ffff; opcode 1111
035076: C000                       and.b   D0, D0
035078: 0002 0000                  ori.b   #$0, D2
03507C: FFFF                       dc.w    $ffff; opcode 1111
03507E: D000                       add.b   D0, D0
035080: 4A2E 000B                  tst.b   ($b,A6)
035084: 6602                       bne     $35088
035086: 4481                       neg.l   D1
035088: D3AE 0040                  add.l   D1, ($40,A6)
03508C: 1D7C 0002 01FE             move.b  #$2, ($1fe,A6)
035092: 700D                       moveq   #$d, D0
035094: 4EF9 0002 A758             jmp     $2a758.l
03509A: 6100 007C                  bsr     $35118
03509E: 643E                       bcc     $350de
0350A0: 4A2E 0033                  tst.b   ($33,A6)
0350A4: 6A00 08E0                  bpl     $35986
0350A8: 532E 01FE                  subq.b  #1, ($1fe,A6)
0350AC: 6600 08D8                  bne     $35986
0350B0: 542E 0007                  addq.b  #2, ($7,A6)
0350B4: 700F                       moveq   #$f, D0
0350B6: 4EF9 0002 A758             jmp     $2a758.l
0350BC: 6100 005A                  bsr     $35118
0350C0: 641C                       bcc     $350de
0350C2: 4A2E 0033                  tst.b   ($33,A6)
0350C6: 6A00 08BE                  bpl     $35986
0350CA: 542E 0007                  addq.b  #2, ($7,A6)
0350CE: 7021                       moveq   #$21, D0
0350D0: 4EF9 0002 A708             jmp     $2a708.l
0350D6: 6100 0040                  bsr     $35118
0350DA: 6500 08AA                  bcs     $35986
0350DE: 1D7C 0008 0007             move.b  #$8, ($7,A6)
0350E4: 3D6E 0064 0014             move.w  ($64,A6), ($14,A6)
0350EA: 426E 0016                  clr.w   ($16,A6)
0350EE: 422E 0031                  clr.b   ($31,A6)
0350F2: 422E 00A9                  clr.b   ($a9,A6)
0350F6: 4EB9 0000 369C             jsr     $369c.l
0350FC: 7011                       moveq   #$11, D0
0350FE: 4EF9 0002 A708             jmp     $2a708.l
035104: 4A2E 0033                  tst.b   ($33,A6)
035108: 6A00 087C                  bpl     $35986
03510C: 4EB9 0002 E35A             jsr     $2e35a.l
035112: 4EF9 0002 BAF2             jmp     $2baf2.l
035118: 202E 0040                  move.l  ($40,A6), D0
03511C: D1AE 0010                  add.l   D0, ($10,A6)
035120: 202E 0044                  move.l  ($44,A6), D0
035124: D1AE 0014                  add.l   D0, ($14,A6)
035128: 202E 004C                  move.l  ($4c,A6), D0
03512C: D1AE 0044                  add.l   D0, ($44,A6)
035130: 302E 0064                  move.w  ($64,A6), D0
035134: B06E 0014                  cmp.w   ($14,A6), D0
035138: 4E75                       rts
03513A: 102E 0007                  move.b  ($7,A6), D0
03513E: 323B 0006                  move.w  ($6,PC,D0.w), D1
035142: 4EFB 1002                  jmp     ($2,PC,D1.w)
035146: 0008                       dc.w    $0008; ILLEGAL
035148: 0030 0058 0086             ori.b   #$58, (-$7a,A0,D0.w)
03514E: 542E 0007                  addq.b  #2, ($7,A6)
035152: 4EB9 0008 04DA             jsr     $804da.l
035158: 4EB9 0002 F53C             jsr     $2f53c.l
03515E: 4EB9 0002 068C             jsr     $2068c.l
035164: 7000                       moveq   #$0, D0
035166: 102E 0082                  move.b  ($82,A6), D0
03516A: E208                       lsr.b   #1, D0
03516C: 0600 0027                  addi.b  #$27, D0
035170: 4EF9 0002 A758             jmp     $2a758.l
035176: 4A2E 0034                  tst.b   ($34,A6)
03517A: 671C                       beq     $35198
03517C: 542E 0007                  addq.b  #2, ($7,A6)
035180: 70FF                       moveq   #-$1, D0
035182: 4A2E 003F                  tst.b   ($3f,A6)
035186: 6702                       beq     $3518a
035188: 7001                       moveq   #$1, D0
03518A: 1D40 00AB                  move.b  D0, ($ab,A6)
03518E: 7019                       moveq   #$19, D0
035190: 723E                       moveq   #$3e, D1
035192: 4EB9 0008 2F74             jsr     $82f74.l
035198: 4EF9 0002 A7EA             jmp     $2a7ea.l
03519E: 4EB9 0002 A7EA             jsr     $2a7ea.l
0351A4: 4A2E 0034                  tst.b   ($34,A6)
0351A8: 661C                       bne     $351c6
0351AA: 542E 0007                  addq.b  #2, ($7,A6)
0351AE: 422E 00AB                  clr.b   ($ab,A6)
0351B2: 7003                       moveq   #$3, D0
0351B4: 4A2E 003F                  tst.b   ($3f,A6)
0351B8: 6606                       bne     $351c0
0351BA: 102E 0082                  move.b  ($82,A6), D0
0351BE: E208                       lsr.b   #1, D0
0351C0: 1D7B 0006 025D             move.b  ($6,PC,D0.w), ($25d,A6)
0351C6: 4E75                       rts
0351C8: 0204 0600                  andi.b  #$0, D4
0351CC: 4EB9 0002 A7EA             jsr     $2a7ea.l
0351D2: 4A2E 0033                  tst.b   ($33,A6)
0351D6: 6B00 07A2                  bmi     $3597a
0351DA: 6600 009E                  bne     $3527a
0351DE: 4A2E 0035                  tst.b   ($35,A6)
0351E2: 6700 0096                  beq     $3527a
0351E6: 426E 0034                  clr.w   ($34,A6)
0351EA: 4EB9 0001 C1C8             jsr     $1c1c8.l
0351F0: 6700 0088                  beq     $3527a
0351F4: 5214                       addq.b  #1, (A4)
0351F6: 397C 0002 0002             move.w  #$2, ($2,A4)
0351FC: 196E 005A 005A             move.b  ($5a,A6), ($5a,A4)
035202: 196E 003F 003F             move.b  ($3f,A6), ($3f,A4)
035208: 196E 0059 0059             move.b  ($59,A6), ($59,A4)
03520E: 7006                       moveq   #$6, D0
035210: D02E 0082                  add.b   ($82,A6), D0
035214: 1940 0072                  move.b  D0, ($72,A4)
035218: 102E 0082                  move.b  ($82,A6), D0
03521C: E248                       lsr.w   #1, D0
03521E: 5440                       addq.w  #2, D0
035220: 3940 0050                  move.w  D0, ($50,A4)
035224: 197C 0006 00BD             move.b  #$6, ($bd,A4)
03522A: 197C 0001 0073             move.b  #$1, ($73,A4)
035230: 196E 000E 000E             move.b  ($e,A6), ($e,A4)
035236: 196E 000B 000B             move.b  ($b,A6), ($b,A4)
03523C: 396E 000C 000C             move.w  ($c,A6), ($c,A4)
035242: 396E 0026 0026             move.w  ($26,A6), ($26,A4)
035248: 396E 0010 0010             move.w  ($10,A6), ($10,A4)
03524E: 396E 0014 0014             move.w  ($14,A6), ($14,A4)
035254: 394E 0036                  move.w  A6, ($36,A4)
035258: 3D4C 00A4                  move.w  A4, ($a4,A6)
03525C: 522E 0238                  addq.b  #1, ($238,A6)
035260: 7000                       moveq   #$0, D0
035262: 102E 0082                  move.b  ($82,A6), D0
035266: 303B 0014                  move.w  ($14,PC,D0.w), D0
03526A: 1940 00CC                  move.b  D0, ($cc,A4)
03526E: 197C 0002 00EE             move.b  #$2, ($ee,A4)
035274: 197C 0008 00EF             move.b  #$8, ($ef,A4)
03527A: 4E75                       rts
03527C: 000C                       dc.w    $000c; ILLEGAL
03527E: 000E                       dc.w    $000e; ILLEGAL
035280: 0010 102E                  ori.b   #$2e, (A0)
035284: 0007 323B                  ori.b   #$3b, D7
035288: 0006 4EFB                  ori.b   #$fb, D6
03528C: 1002                       move.b  D2, D0
03528E: 000E                       dc.w    $000e; ILLEGAL
035290: 0040 006E                  ori.w   #$6e, D0
035294: 00A0 00E2 0112             ori.l   #$e20112, -(A0)
03529A: 0136 542E                  btst    D0, INVALID 36
03529E: 0007 2D7C                  ori.b   #$7c, D7
0352A2: 0004 0000                  ori.b   #$0, D4
0352A6: 0044 2D7C                  ori.w   #$2d7c, D4
0352AA: FFFF                       dc.w    $ffff; opcode 1111
0352AC: A000                       dc.w    $a000; opcode 1010
0352AE: 004C                       dc.w    $004c; ILLEGAL
0352B0: 42AE 0040                  clr.l   ($40,A6)
0352B4: 4EB9 0002 F53C             jsr     $2f53c.l
0352BA: 4EB9 0002 068C             jsr     $2068c.l
0352C0: 4EB9 0008 04DA             jsr     $804da.l
0352C6: 701C                       moveq   #$1c, D0
0352C8: 4EF9 0002 A758             jmp     $2a758.l
0352CE: 4A2E 0035                  tst.b   ($35,A6)
0352D2: 6722                       beq     $352f6
0352D4: 542E 0007                  addq.b  #2, ($7,A6)
0352D8: 70FF                       moveq   #-$1, D0
0352DA: 4A2E 003F                  tst.b   ($3f,A6)
0352DE: 6702                       beq     $352e2
0352E0: 7001                       moveq   #$1, D0
0352E2: 1D40 00AB                  move.b  D0, ($ab,A6)
0352E6: 4EB9 0008 3428             jsr     $83428.l
0352EC: 7028                       moveq   #$28, D0
0352EE: 723C                       moveq   #$3c, D1
0352F0: 4EB9 0008 2E36             jsr     $82e36.l
0352F6: 4EF9 0002 A7EA             jmp     $2a7ea.l
0352FC: 4EB9 0002 A7EA             jsr     $2a7ea.l
035302: 4A2E 0035                  tst.b   ($35,A6)
035306: 6620                       bne     $35328
035308: 542E 0007                  addq.b  #2, ($7,A6)
03530C: 422E 00AB                  clr.b   ($ab,A6)
035310: 4EB9 0002 FCD4             jsr     $2fcd4.l
035316: 4A2E 003F                  tst.b   ($3f,A6)
03531A: 6606                       bne     $35322
03531C: 102E 0082                  move.b  ($82,A6), D0
035320: E208                       lsr.b   #1, D0
035322: 1D7B 0006 025D             move.b  ($6,PC,D0.w), ($25d,A6)
035328: 4E75                       rts
03532A: 0B0F 1300                  movep.w ($1300,A7), D5
03532E: 4A2E 0035                  tst.b   ($35,A6)
035332: 6600 0652                  bne     $35986
035336: 1D7C 0001 0031             move.b  #$1, ($31,A6)
03533C: 202E 0044                  move.l  ($44,A6), D0
035340: D1AE 0014                  add.l   D0, ($14,A6)
035344: 202E 004C                  move.l  ($4c,A6), D0
035348: D1AE 0044                  add.l   D0, ($44,A6)
03534C: 6A00 0638                  bpl     $35986
035350: 542E 0007                  addq.b  #2, ($7,A6)
035354: 1D7C 0001 01FE             move.b  #$1, ($1fe,A6)
03535A: 7000                       moveq   #$0, D0
03535C: 102E 0082                  move.b  ($82,A6), D0
035360: D12E 01FE                  add.b   D0, ($1fe,A6)
035364: E208                       lsr.b   #1, D0
035366: 0640 001D                  addi.w  #$1d, D0
03536A: 4EF9 0002 A758             jmp     $2a758.l
035370: 4A2E 0033                  tst.b   ($33,A6)
035374: 6A1C                       bpl     $35392
035376: 532E 01FE                  subq.b  #1, ($1fe,A6)
03537A: 6616                       bne     $35392
03537C: 542E 0007                  addq.b  #2, ($7,A6)
035380: 7000                       moveq   #$0, D0
035382: 102E 0082                  move.b  ($82,A6), D0
035386: E208                       lsr.b   #1, D0
035388: 0600 0020                  addi.b  #$20, D0
03538C: 4EF9 0002 A758             jmp     $2a758.l
035392: 06AE FFFF E000 0014        addi.l  #-$2000, ($14,A6)
03539A: 4EF9 0002 A7EA             jmp     $2a7ea.l
0353A0: 6100 FD76                  bsr     $35118
0353A4: 6500 05E0                  bcs     $35986
0353A8: 542E 0007                  addq.b  #2, ($7,A6)
0353AC: 4EB9 0000 369C             jsr     $369c.l
0353B2: 7000                       moveq   #$0, D0
0353B4: 102E 0082                  move.b  ($82,A6), D0
0353B8: E208                       lsr.b   #1, D0
0353BA: 0600 002E                  addi.b  #$2e, D0
0353BE: 4EF9 0002 A758             jmp     $2a758.l
0353C4: 4A2E 0033                  tst.b   ($33,A6)
0353C8: 6A00 05BC                  bpl     $35986
0353CC: 4EB9 0002 E35A             jsr     $2e35a.l
0353D2: 4EF9 0002 BAF2             jmp     $2baf2.l
0353D8: 102E 0007                  move.b  ($7,A6), D0
0353DC: 323B 0006                  move.w  ($6,PC,D0.w), D1
0353E0: 4EFB 1002                  jmp     ($2,PC,D1.w)
0353E4: 0004 0032                  ori.b   #$32, D4
0353E8: 542E 0007                  addq.b  #2, ($7,A6)
0353EC: 1D7C 0001 00CE             move.b  #$1, ($ce,A6)
0353F2: 4A2E 003E                  tst.b   ($3e,A6)
0353F6: 6604                       bne     $353fc
0353F8: 532E 00BC                  subq.b  #1, ($bc,A6)
0353FC: 422E 00A9                  clr.b   ($a9,A6)
035400: 422E 02C8                  clr.b   ($2c8,A6)
035404: 7024                       moveq   #$24, D0
035406: 082E 0001 0083             btst    #$1, ($83,A6)
03540C: 6702                       beq     $35410
03540E: 5200                       addq.b  #1, D0
035410: 4EF9 0002 A758             jmp     $2a758.l
035416: 4A2E 0033                  tst.b   ($33,A6)
03541A: 6B00 055E                  bmi     $3597a
03541E: 4EF9 0002 A7EA             jmp     $2a7ea.l
035424: 102E 0007                  move.b  ($7,A6), D0
035428: 323B 0006                  move.w  ($6,PC,D0.w), D1
03542C: 4EFB 1002                  jmp     ($2,PC,D1.w)
035430: 0004 002C                  ori.b   #$2c, D4
035434: 4A2E 0033                  tst.b   ($33,A6)
035438: 6A0C                       bpl     $35446
03543A: 542E 0007                  addq.b  #2, ($7,A6)
03543E: 7018                       moveq   #$18, D0
035440: 4EF9 0002 A758             jmp     $2a758.l
035446: 4A2E 0035                  tst.b   ($35,A6)
03544A: 670A                       beq     $35456
03544C: 422E 0035                  clr.b   ($35,A6)
035450: 4EB9 0008 0E8E             jsr     $80e8e.l
035456: 4EF9 0002 A7EA             jmp     $2a7ea.l
03545C: 4A2E 0033                  tst.b   ($33,A6)
035460: 6B00 0518                  bmi     $3597a
035464: 4EF9 0002 A7EA             jmp     $2a7ea.l
03546A: 102E 0007                  move.b  ($7,A6), D0
03546E: 323B 0006                  move.w  ($6,PC,D0.w), D1
035472: 4EFB 1002                  jmp     ($2,PC,D1.w)
035476: 0006 0026                  ori.b   #$26, D6
03547A: 005A 542E                  ori.w   #$542e, (A2)+
03547E: 0007 4EB9                  ori.b   #$b9, D7
035482: 0002 F52C                  ori.b   #$2c, D2
035486: 4EB9 0002 068C             jsr     $2068c.l
03548C: 702B                       moveq   #$2b, D0
03548E: 4A2E 0031                  tst.b   ($31,A6)
035492: 6702                       beq     $35496
035494: 702F                       moveq   #$2f, D0
035496: 4EF9 0002 A708             jmp     $2a708.l
03549C: 4A2E 0034                  tst.b   ($34,A6)
0354A0: 6728                       beq     $354ca
0354A2: 542E 0007                  addq.b  #2, ($7,A6)
0354A6: 1D7C 00FF 00AB             move.b  #$ff, ($ab,A6)
0354AC: 1D7C 001E 003A             move.b  #$1e, ($3a,A6)
0354B2: 7013                       moveq   #$13, D0
0354B4: 7233                       moveq   #$33, D1
0354B6: 4A2E 0031                  tst.b   ($31,A6)
0354BA: 6704                       beq     $354c0
0354BC: 70FD                       moveq   #-$3, D0
0354BE: 7241                       moveq   #$41, D1
0354C0: 4EB9 0009 7CD6             jsr     $97cd6.l
0354C6: 6100 04EE                  bsr     $359b6
0354CA: 4EF9 0002 A7EA             jmp     $2a7ea.l
0354D0: 532E 003A                  subq.b  #1, ($3a,A6)
0354D4: 6600 04B0                  bne     $35986
0354D8: 4A2E 0031                  tst.b   ($31,A6)
0354DC: 6708                       beq     $354e6
0354DE: 2D7C 0200 0602 0004        move.l  #$2000602, ($4,A6)
0354E6: 4EF9 0002 F796             jmp     $2f796.l
0354EC: 102E 0007                  move.b  ($7,A6), D0
0354F0: 323B 0006                  move.w  ($6,PC,D0.w), D1
0354F4: 4EFB 1002                  jmp     ($2,PC,D1.w)
0354F8: 0004 001C                  ori.b   #$1c, D4
0354FC: 542E 0007                  addq.b  #2, ($7,A6)
035500: 1D7C 0001 00CE             move.b  #$1, ($ce,A6)
035506: 1D7C 0002 0294             move.b  #$2, ($294,A6)
03550C: 7026                       moveq   #$26, D0
03550E: 4EF9 0002 A758             jmp     $2a758.l
035514: 4A2E 0033                  tst.b   ($33,A6)
035518: 6B00 0460                  bmi     $3597a
03551C: 4EF9 0002 A7EA             jmp     $2a7ea.l
035522: 102E 0007                  move.b  ($7,A6), D0
035526: 323B 0006                  move.w  ($6,PC,D0.w), D1
03552A: 4EFB 1002                  jmp     ($2,PC,D1.w)
03552E: 0012 0034                  ori.b   #$34, (A2)
035532: 0054 008C                  ori.w   #$8c, (A4)
035536: 017C                       dc.w    $017c; ILLEGAL
035538: 01D0                       bset    D0, (A0)
03553A: 0228 0248 027C             andi.b  #$48, ($27c,A0)
035540: 542E 0007                  addq.b  #2, ($7,A6)
035544: 303C FF70                  move.w  #$ff70, D0
035548: 4EB9 0002 EF6C             jsr     $2ef6c.l
03554E: 4EB9 0002 068C             jsr     $2068c.l
035554: 4EB9 0008 04DA             jsr     $804da.l
03555A: 702A                       moveq   #$2a, D0
03555C: 4EF9 0002 A758             jmp     $2a758.l
035562: 4A2E 0035                  tst.b   ($35,A6)
035566: 6714                       beq     $3557c
035568: 542E 0007                  addq.b  #2, ($7,A6)
03556C: 1D7C 00FF 00AB             move.b  #$ff, ($ab,A6)
035572: 7013                       moveq   #$13, D0
035574: 723C                       moveq   #$3c, D1
035576: 4EB9 0008 2E36             jsr     $82e36.l
03557C: 4EF9 0002 A7EA             jmp     $2a7ea.l
035582: 4A2E 0035                  tst.b   ($35,A6)
035586: 662C                       bne     $355b4
035588: 542E 0007                  addq.b  #2, ($7,A6)
03558C: 422E 00AB                  clr.b   ($ab,A6)
035590: 422E 005B                  clr.b   ($5b,A6)
035594: 422E 003A                  clr.b   ($3a,A6)
035598: 1D7C 0006 00CC             move.b  #$6, ($cc,A6)
03559E: 2D7C 0008 0000 0040        move.l  #$80000, ($40,A6)
0355A6: 2D7C FFFF 8000 0048        move.l  #$ffff8000, ($48,A6)
0355AE: 4EB9 0002 FCD4             jsr     $2fcd4.l
0355B4: 4EF9 0002 A7EA             jmp     $2a7ea.l
0355BA: 4A2E 0033                  tst.b   ($33,A6)
0355BE: 6B00 03BA                  bmi     $3597a
0355C2: 4A2E 0035                  tst.b   ($35,A6)
0355C6: 6A00 008E                  bpl     $35656
0355CA: 422E 0035                  clr.b   ($35,A6)
0355CE: 1D7C 000E 0007             move.b  #$e, ($7,A6)
0355D4: 4A2E 005B                  tst.b   ($5b,A6)
0355D8: 6700 009E                  beq     $35678
0355DC: 1D7C 0008 0007             move.b  #$8, ($7,A6)
0355E2: 0C2E 0030 00CC             cmpi.b  #$30, ($cc,A6)
0355E8: 664C                       bne     $35636
0355EA: 422E 00CC                  clr.b   ($cc,A6)
0355EE: 0C6E 0060 021C             cmpi.w  #$60, ($21c,A6)
0355F4: 6440                       bcc     $35636
0355F6: 4A2E 0031                  tst.b   ($31,A6)
0355FA: 663A                       bne     $35636
0355FC: 386E 0038                  movea.w ($38,A6), A4
035600: 206C 001C                  movea.l ($1c,A4), A0
035604: 4A28 000D                  tst.b   ($d,A0)
035608: 6600 002C                  bne     $35636
03560C: 4A6C 0050                  tst.w   ($50,A4)
035610: 6B00 0024                  bmi     $35636
035614: 1D7C 0010 0007             move.b  #$10, ($7,A6)
03561A: 7020                       moveq   #$20, D0
03561C: 4A2E 000B                  tst.b   ($b,A6)
035620: 6602                       bne     $35624
035622: 4440                       neg.w   D0
035624: D16E 0010                  add.w   D0, ($10,A6)
035628: 4EB9 0008 34A2             jsr     $834a2.l
03562E: 702C                       moveq   #$2c, D0
035630: 4EF9 0002 A758             jmp     $2a758.l
035636: 422E 00CC                  clr.b   ($cc,A6)
03563A: 7020                       moveq   #$20, D0
03563C: 4A2E 000B                  tst.b   ($b,A6)
035640: 6602                       bne     $35644
035642: 4440                       neg.w   D0
035644: D16E 0010                  add.w   D0, ($10,A6)
035648: 4EB9 0008 34A2             jsr     $834a2.l
03564E: 702B                       moveq   #$2b, D0
035650: 4EF9 0002 A758             jmp     $2a758.l
035656: 206E 001C                  movea.l ($1c,A6), A0
03565A: 4A28 0009                  tst.b   ($9,A0)
03565E: 6718                       beq     $35678
035660: 4A2E 005B                  tst.b   ($5b,A6)
035664: 6600 0012                  bne     $35678
035668: 7000                       moveq   #$0, D0
03566A: 522E 003A                  addq.b  #1, ($3a,A6)
03566E: 102E 003A                  move.b  ($3a,A6), D0
035672: 1D7B 002E 00CC             move.b  ($2e,PC,D0.w), ($cc,A6)
035678: 202E 0040                  move.l  ($40,A6), D0
03567C: 4A2E 000B                  tst.b   ($b,A6)
035680: 6602                       bne     $35684
035682: 4480                       neg.l   D0
035684: D1AE 0010                  add.l   D0, ($10,A6)
035688: 202E 0048                  move.l  ($48,A6), D0
03568C: D1AE 0040                  add.l   D0, ($40,A6)
035690: 6A00 02F4                  bpl     $35986
035694: 42AE 0040                  clr.l   ($40,A6)
035698: 42AE 0048                  clr.l   ($48,A6)
03569C: 4EF9 0002 A7EA             jmp     $2a7ea.l
0356A2: 0608                       dc.w    $0608; ILLEGAL
0356A4: 0C10 1418                  cmpi.b  #$18, (A0)
0356A8: 2030 4A2E                  move.l  INVALID 30, D0
0356AC: 0035 6B00 0048             ori.b   #$0, ($48,A5,D0.w)
0356B2: 6600 0032                  bne     $356e6
0356B6: 542E 0007                  addq.b  #2, ($7,A6)
0356BA: 1D7C 0001 0031             move.b  #$1, ($31,A6)
0356C0: 2D7C 0004 0000 0040        move.l  #$40000, ($40,A6)
0356C8: 2D7C FFFF 8000 0048        move.l  #$ffff8000, ($48,A6)
0356D0: 2D7C 000A 0000 0044        move.l  #$a0000, ($44,A6)
0356D8: 2D7C FFFF A000 004C        move.l  #$ffffa000, ($4c,A6)
0356E0: 4EF9 0002 A7EA             jmp     $2a7ea.l
0356E6: 203C 0003 0000             move.l  #$30000, D0
0356EC: 4A2E 000B                  tst.b   ($b,A6)
0356F0: 6602                       bne     $356f4
0356F2: 4480                       neg.l   D0
0356F4: D1AE 0010                  add.l   D0, ($10,A6)
0356F8: 4EF9 0002 A7EA             jmp     $2a7ea.l
0356FE: 202E 0040                  move.l  ($40,A6), D0
035702: 4A2E 000B                  tst.b   ($b,A6)
035706: 6602                       bne     $3570a
035708: 4480                       neg.l   D0
03570A: D1AE 0010                  add.l   D0, ($10,A6)
03570E: 202E 0048                  move.l  ($48,A6), D0
035712: D1AE 0040                  add.l   D0, ($40,A6)
035716: 6A08                       bpl     $35720
035718: 42AE 0040                  clr.l   ($40,A6)
03571C: 42AE 0048                  clr.l   ($48,A6)
035720: 202E 0044                  move.l  ($44,A6), D0
035724: D1AE 0014                  add.l   D0, ($14,A6)
035728: 202E 004C                  move.l  ($4c,A6), D0
03572C: D1AE 0044                  add.l   D0, ($44,A6)
035730: 302E 0014                  move.w  ($14,A6), D0
035734: B06E 0064                  cmp.w   ($64,A6), D0
035738: 6412                       bcc     $3574c
03573A: 542E 0007                  addq.b  #2, ($7,A6)
03573E: 422E 0031                  clr.b   ($31,A6)
035742: 3D6E 0064 0014             move.w  ($64,A6), ($14,A6)
035748: 426E 0016                  clr.w   ($16,A6)
03574C: 4A2E 0035                  tst.b   ($35,A6)
035750: 6700 0234                  beq     $35986
035754: 4E75                       rts
035756: 4A2E 0033                  tst.b   ($33,A6)
03575A: 6A00 022A                  bpl     $35986
03575E: 386E 0038                  movea.w ($38,A6), A4
035762: 4A6C 0050                  tst.w   ($50,A4)
035766: 6A00 0008                  bpl     $35770
03576A: 1D7C 0001 01FD             move.b  #$1, ($1fd,A6)
035770: 4EF9 0002 BAF2             jmp     $2baf2.l
035776: 4A2E 0033                  tst.b   ($33,A6)
03577A: 6B00 01FE                  bmi     $3597a
03577E: 4A6E 0040                  tst.w   ($40,A6)
035782: 6700 0202                  beq     $35986
035786: 202E 0040                  move.l  ($40,A6), D0
03578A: 4A2E 000B                  tst.b   ($b,A6)
03578E: 6602                       bne     $35792
035790: 4480                       neg.l   D0
035792: D1AE 0010                  add.l   D0, ($10,A6)
035796: 202E 0048                  move.l  ($48,A6), D0
03579A: D1AE 0040                  add.l   D0, ($40,A6)
03579E: 6A08                       bpl     $357a8
0357A0: 42AE 0040                  clr.l   ($40,A6)
0357A4: 42AE 0048                  clr.l   ($48,A6)
0357A8: 4E75                       rts
0357AA: 4EB9 0002 A7EA             jsr     $2a7ea.l
0357B0: 4A2E 0035                  tst.b   ($35,A6)
0357B4: 6B00 0054                  bmi     $3580a
0357B8: 6600 003E                  bne     $357f8
0357BC: 1D7C 000A 0007             move.b  #$a, ($7,A6)
0357C2: 1D7C 0001 0031             move.b  #$1, ($31,A6)
0357C8: 2D7C 0000 0000 0040        move.l  #$0, ($40,A6)
0357D0: 2D7C 0000 0000 0048        move.l  #$0, ($48,A6)
0357D8: 2D7C 000A 0000 0044        move.l  #$a0000, ($44,A6)
0357E0: 2D7C FFFF A000 004C        move.l  #$ffffa000, ($4c,A6)
0357E8: 7018                       moveq   #$18, D0
0357EA: 4A2E 000B                  tst.b   ($b,A6)
0357EE: 6602                       bne     $357f2
0357F0: 4440                       neg.w   D0
0357F2: D16E 0010                  add.w   D0, ($10,A6)
0357F6: 4E75                       rts
0357F8: 203C 0003 0000             move.l  #$30000, D0
0357FE: 4A2E 000B                  tst.b   ($b,A6)
035802: 6602                       bne     $35806
035804: 4480                       neg.l   D0
035806: D1AE 0010                  add.l   D0, ($10,A6)
03580A: 4E75                       rts
03580C: 0C2E 0004 0080             cmpi.b  #$4, ($80,A6)
035812: 6700 00E8                  beq     $358fc
035816: 102E 0007                  move.b  ($7,A6), D0
03581A: 323B 000C                  move.w  ($c,PC,D0.w), D1
03581E: 4EBB 1008                  jsr     ($8,PC,D1.w)
035822: 4EF9 0002 F9BE             jmp     $2f9be.l
035828: 000A                       dc.w    $000a; ILLEGAL
03582A: 001E 0092                  ori.b   #$92, (A6)+
03582E: 00A0 00C0 542E             ori.l   #$c0542e, -(A0)
035834: 0007 7001                  ori.b   #$1, D7
035838: 4EB9 0002 EF6C             jsr     $2ef6c.l
03583E: 7002                       moveq   #$2, D0
035840: 4EF9 0002 A758             jmp     $2a758.l
035846: 4A2E 0033                  tst.b   ($33,A6)
03584A: 6A00 013A                  bpl     $35986
03584E: 704D                       moveq   #$4d, D0
035850: 4A2E 0081                  tst.b   ($81,A6)
035854: 6702                       beq     $35858
035856: 704E                       moveq   #$4e, D0
035858: 4EB9 0002 E3FE             jsr     $2e3fe.l
03585E: 674E                       beq     $358ae
035860: 1D7C 0006 0007             move.b  #$6, ($7,A6)
035866: 4A2E 0125                  tst.b   ($125,A6)
03586A: 671A                       beq     $35886
03586C: 4EB9 0001 BD5C             jsr     $1bd5c.l
035872: 422E 000B                  clr.b   ($b,A6)
035876: 302B 0010                  move.w  ($10,A3), D0
03587A: 0640 00C0                  addi.w  #$c0, D0
03587E: B06E 0010                  cmp.w   ($10,A6), D0
035882: 6516                       bcs     $3589a
035884: 6018                       bra     $3589e
035886: 102E 011B                  move.b  ($11b,A6), D0
03588A: 0240 0003                  andi.w  #$3, D0
03588E: 670E                       beq     $3589e
035890: 422E 000B                  clr.b   ($b,A6)
035894: 0800 0001                  btst    #$1, D0
035898: 6704                       beq     $3589e
03589A: 522E 000B                  addq.b  #1, ($b,A6)
03589E: 7000                       moveq   #$0, D0
0358A0: 4A2E 0081                  tst.b   ($81,A6)
0358A4: 6702                       beq     $358a8
0358A6: 7001                       moveq   #$1, D0
0358A8: 4EF9 0002 A758             jmp     $2a758.l
0358AE: 542E 0007                  addq.b  #2, ($7,A6)
0358B2: 7003                       moveq   #$3, D0
0358B4: 4EF9 0002 A758             jmp     $2a758.l
0358BA: 4A2E 0033                  tst.b   ($33,A6)
0358BE: 6A00 00C6                  bpl     $35986
0358C2: 4EF9 0002 BAF2             jmp     $2baf2.l
0358C8: 4A2E 0035                  tst.b   ($35,A6)
0358CC: 6714                       beq     $358e2
0358CE: 542E 0007                  addq.b  #2, ($7,A6)
0358D2: 704D                       moveq   #$4d, D0
0358D4: 4A2E 0081                  tst.b   ($81,A6)
0358D8: 6702                       beq     $358dc
0358DA: 704E                       moveq   #$4e, D0
0358DC: 4EB9 0002 E7F2             jsr     $2e7f2.l
0358E2: 4EF9 0002 A7EA             jmp     $2a7ea.l
0358E8: 4A2E 0033                  tst.b   ($33,A6)
0358EC: 6A00 0098                  bpl     $35986
0358F0: 0A2E 0001 000B             eori.b  #$1, ($b,A6)
0358F6: 4EF9 0002 BAF2             jmp     $2baf2.l
0358FC: 102E 0007                  move.b  ($7,A6), D0
035900: 323B 000C                  move.w  ($c,PC,D0.w), D1
035904: 4EBB 1008                  jsr     ($8,PC,D1.w)
035908: 4EF9 0002 F9BE             jmp     $2f9be.l
03590E: 0006 0032                  ori.b   #$32, D6
035912: 0050 7003                  ori.w   #$7003, (A0)
035916: 4EB9 0002 EF6C             jsr     $2ef6c.l
03591C: 7050                       moveq   #$50, D0
03591E: 4EB9 0002 E636             jsr     $2e636.l
035924: 670E                       beq     $35934
035926: 1D7C 0004 0007             move.b  #$4, ($7,A6)
03592C: 7000                       moveq   #$0, D0
03592E: 4EF9 0002 A758             jmp     $2a758.l
035934: 542E 0007                  addq.b  #2, ($7,A6)
035938: 701A                       moveq   #$1a, D0
03593A: 4EF9 0002 A758             jmp     $2a758.l
035940: 4EB9 0002 AA08             jsr     $2aa08.l
035946: 6400 003E                  bcc     $35986
03594A: 422E 0031                  clr.b   ($31,A6)
03594E: 3D6E 0064 0014             move.w  ($64,A6), ($14,A6)
035954: 426E 0016                  clr.w   ($16,A6)
035958: 4EF9 0002 BAF2             jmp     $2baf2.l
03595E: 4A2E 0035                  tst.b   ($35,A6)
035962: 6700 0022                  beq     $35986
035966: 1D7C 0002 0007             move.b  #$2, ($7,A6)
03596C: 7050                       moveq   #$50, D0
03596E: 4EB9 0002 E7F2             jsr     $2e7f2.l
035974: 4EF9 0002 A7EA             jmp     $2a7ea.l
03597A: 4EF9 0002 BAF2             jmp     $2baf2.l
035980: 4EF9 0002 BB26             jmp     $2bb26.l
035986: 4EF9 0002 A7EA             jmp     $2a7ea.l
03598C: 422E 01FD                  clr.b   ($1fd,A6)
035990: 4EB9 0001 C368             jsr     $1c368.l
035996: 671C                       beq     $359b4
035998: 5214                       addq.b  #1, (A4)
03599A: 197C 0000 0002             move.b  #$0, ($2,A4)
0359A0: 394E 0036                  move.w  A6, ($36,A4)
0359A4: 396E 000C 000C             move.w  ($c,A6), ($c,A4)
0359AA: 196E 000E 000E             move.b  ($e,A6), ($e,A4)
0359B0: 3D4C 0028                  move.w  A4, ($28,A6)
0359B4: 4E75                       rts
0359B6: 7000                       moveq   #$0, D0
0359B8: 7200                       moveq   #$0, D1
0359BA: 48EE 0003 0180             movem.l D0-D1, ($180,A6)
0359C0: 48EE 0003 0188             movem.l D0-D1, ($188,A6)
0359C6: 48EE 0003 0190             movem.l D0-D1, ($190,A6)
0359CC: 48EE 0003 0198             movem.l D0-D1, ($198,A6)
0359D2: 48EE 0003 01A0             movem.l D0-D1, ($1a0,A6)
0359D8: 48EE 0003 0300             movem.l D0-D1, ($300,A6)
0359DE: 48EE 0003 0308             movem.l D0-D1, ($308,A6)
0359E4: 4E75                       rts
0359E6: BF16                       eor.b   D7, (A6)
0359E8: E8FB                       dc.w    $e8fb; ILLEGAL
0359EA: 588C                       addq.l  #4, A4
0359EC: 8534 F9C2                  or.b    D2, INVALID 34
0359F0: A365                       dc.w    $a365; opcode 1010
0359F2: 6F56                       ble     $35a4a
0359F4: AE6D                       dc.w    $ae6d; opcode 1010
0359F6: 874E                       dc.w    $874e; ILLEGAL
0359F8: 8F27                       or.b    D7, -(A7)
0359FA: 4620                       not.b   -(A0)
0359FC: 6F4C                       ble     $35a4a
0359FE: A58A                       dc.w    $a58a; opcode 1010
035A00: 848E                       dc.w    $848e; ILLEGAL
035A02: EFFC                       dc.w    $effc; ILLEGAL
035A04: E485                       asr.l   #2, D5
035A06: 8ADF                       divu.w  (A7)+, D5
035A08: 0B5A                       bchg    D5, (A2)+
035A0A: 93D8                       suba.l  (A0)+, A1
035A0C: 0C7C                       dc.w    $0c7c; ILLEGAL
035A0E: B5C8                       cmpa.l  A0, A2
035A10: 2F1B                       move.l  (A3)+, -(A7)
035A12: 2CFD                       dc.w    $2cfd; ILLEGAL
035A14: 3805                       move.w  D5, D4
035A16: E3C2                       dc.w    $e3c2; ILLEGAL
035A18: 1570 A65A 97AD             move.b  INVALID 30, (-$6853,A2)
035A1E: F728                       dc.w    $f728; opcode 1111
035A20: 08B8 570F 100E             bclr    #$f, $100e.w
035A26: 2908                       move.l  A0, -(A4)
035A28: 855B                       or.w    D2, (A3)+
035A2A: 97EC 03BB                  suba.l  ($3bb,A4), A3
035A2E: 4D1D                       dc.w    $4d1d; ILLEGAL
035A30: 0E8F                       dc.w    $0e8f; ILLEGAL
035A32: C743                       exg     D3, D3
035A34: 282A 29B0                  move.l  ($29b0,A2), D4
035A38: E3F6 A170                  lsl.w   INVALID 36
035A3C: E3EA 7BBB                  lsl.w   ($7bbb,A2)
035A40: B10D                       cmpm.b  (A5)+, (A0)+
035A42: 4944                       dc.w    $4944; ILLEGAL
035A44: 02F6                       dc.w    $02f6; ILLEGAL
035A46: 35B0 D5E9 5B9E             move.w  INVALID 30, INVALID 32
035A4C: 397A 2027 3B71             move.w  ($2027,PC), ($3b71,A4); ($37a75)
035A52: 979E                       sub.l   D3, (A6)+
035A54: EF05                       asl.b   #7, D5
035A56: CC6A 5047                  and.w   ($5047,A2), D6
035A5A: 5D8A                       subq.l  #6, A2
035A5C: B801                       cmp.b   D1, D4
035A5E: D78B                       addx.l  -(A3), -(A3)
035A60: 11C4 5E8E                  move.b  D4, $5e8e.w
035A64: A57D                       dc.w    $a57d; opcode 1010
035A66: AF34                       dc.w    $af34; opcode 1010
035A68: EEF2                       dc.w    $eef2; ILLEGAL
035A6A: 4FB5 5F03                  chk.w   INVALID 35, D7
035A6E: A5DD                       dc.w    $a5dd; opcode 1010
035A70: 8CA4                       or.l    -(A4), D6
035A72: 1F7D                       dc.w    $1f7d; ILLEGAL
035A74: 102E 0006                  move.b  ($6,A6), D0
035A78: 323B 0006                  move.w  ($6,PC,D0.w), D1
035A7C: 4EFB 1002                  jmp     ($2,PC,D1.w)
035A80: 0006 0052                  ori.b   #$52, D6
035A84: 006A 542E 0006             ori.w   #$542e, ($6,A2)
035A8A: 7022                       moveq   #$22, D0
035A8C: 386E 0038                  movea.w ($38,A6), A4
035A90: 0C2C 0000 0102             cmpi.b  #$0, ($102,A4)
035A96: 6634                       bne     $35acc
035A98: 1D7C 0004 0006             move.b  #$4, ($6,A6)
035A9E: 3D6E 0010 0040             move.w  ($10,A6), ($40,A6)
035AA4: 50EE 003C                  st      ($3c,A6)
035AA8: 4EB9 0001 BD5C             jsr     $1bd5c.l
035AAE: 7060                       moveq   #$60, D0
035AB0: 7201                       moveq   #$1, D1
035AB2: 4A2E 0101                  tst.b   ($101,A6)
035AB6: 6606                       bne     $35abe
035AB8: 303C 0120                  move.w  #$120, D0
035ABC: 7200                       moveq   #$0, D1
035ABE: D06B 0010                  add.w   ($10,A3), D0
035AC2: 3D40 0010                  move.w  D0, ($10,A6)
035AC6: 1D41 000B                  move.b  D1, ($b,A6)
035ACA: 7030                       moveq   #$30, D0
035ACC: 4EF9 0002 A708             jmp     $2a708.l
035AD2: 4A2E 0033                  tst.b   ($33,A6)
035AD6: 6A00 1A30                  bpl     $37508
035ADA: 2D7C 0200 0000 0004        move.l  #$2000000, ($4,A6)
035AE2: 7000                       moveq   #$0, D0
035AE4: 4EF9 0002 A708             jmp     $2a708.l
035AEA: 4A2E 003C                  tst.b   ($3c,A6)
035AEE: 660E                       bne     $35afe
035AF0: 1D7C 0002 0006             move.b  #$2, ($6,A6)
035AF6: 7022                       moveq   #$22, D0
035AF8: 4EF9 0002 A708             jmp     $2a708.l
035AFE: 4E75                       rts
035B00: 102E 0006                  move.b  ($6,A6), D0
035B04: 323B 0006                  move.w  ($6,PC,D0.w), D1
035B08: 4EFB 1002                  jmp     ($2,PC,D1.w)
035B0C: 0008                       dc.w    $0008; ILLEGAL
035B0E: 001A 0030                  ori.b   #$30, (A2)+
035B12: 0130 542E                  btst    D0, INVALID 30
035B16: 0006 1D6E                  ori.b   #$6e, D6
035B1A: 02C9                       dc.w    $02c9; ILLEGAL
035B1C: 000B                       dc.w    $000b; ILLEGAL
035B1E: 7000                       moveq   #$0, D0
035B20: 4EF9 0002 A708             jmp     $2a708.l
035B26: 4A2D 0124                  tst.b   ($124,A5)
035B2A: 660A                       bne     $35b36
035B2C: 4A2D 011C                  tst.b   ($11c,A5)
035B30: 6604                       bne     $35b36
035B32: 542E 0006                  addq.b  #2, ($6,A6)
035B36: 4EF9 0002 A7EA             jmp     $2a7ea.l
035B3C: 542E 0006                  addq.b  #2, ($6,A6)
035B40: 386E 0038                  movea.w ($38,A6), A4
035B44: 1D7C 003C 003A             move.b  #$3c, ($3a,A6)
035B4A: 0C2E 0008 02C4             cmpi.b  #$8, ($2c4,A6)
035B50: 6700 0012                  beq     $35b64
035B54: 4A2E 02C4                  tst.b   ($2c4,A6)
035B58: 6600 00B8                  bne     $35c12
035B5C: 4A2C 0125                  tst.b   ($125,A4)
035B60: 6700 009A                  beq     $35bfc
035B64: 4A2D 010D                  tst.b   ($10d,A5)
035B68: 6600 0092                  bne     $35bfc
035B6C: 4A2C 0102                  tst.b   ($102,A4)
035B70: 6600 008A                  bne     $35bfc
035B74: 4A2D 0143                  tst.b   ($143,A5)
035B78: 6700 0082                  beq     $35bfc
035B7C: 7000                       moveq   #$0, D0
035B7E: 102E 000B                  move.b  ($b,A6), D0
035B82: 122C 000B                  move.b  ($b,A4), D1
035B86: B200                       cmp.b   D0, D1
035B88: 6700 0072                  beq     $35bfc
035B8C: 302E 0010                  move.w  ($10,A6), D0
035B90: 322C 0010                  move.w  ($10,A4), D1
035B94: 9240                       sub.w   D0, D1
035B96: 0641 0070                  addi.w  #$70, D1
035B9A: 303C 00E0                  move.w  #$e0, D0
035B9E: B041                       cmp.w   D1, D0
035BA0: 6400 005A                  bcc     $35bfc
035BA4: 302E 0010                  move.w  ($10,A6), D0
035BA8: 322C 0010                  move.w  ($10,A4), D1
035BAC: 9240                       sub.w   D0, D1
035BAE: 0641 0100                  addi.w  #$100, D1
035BB2: 303C 0200                  move.w  #$200, D0
035BB6: B041                       cmp.w   D1, D0
035BB8: 6500 0042                  bcs     $35bfc
035BBC: 1D7C 000E 02C4             move.b  #$e, ($2c4,A6)
035BC2: 7000                       moveq   #$0, D0
035BC4: 1D40 000B                  move.b  D0, ($b,A6)
035BC8: 2D40 0044                  move.l  D0, ($44,A6)
035BCC: 2D40 0048                  move.l  D0, ($48,A6)
035BD0: 2D40 004C                  move.l  D0, ($4c,A6)
035BD4: 203C FFFD 0000             move.l  #$fffd0000, D0
035BDA: 322E 0010                  move.w  ($10,A6), D1
035BDE: 342C 0010                  move.w  ($10,A4), D2
035BE2: B441                       cmp.w   D1, D2
035BE4: 6500 000A                  bcs     $35bf0
035BE8: 1D7C 0001 000B             move.b  #$1, ($b,A6)
035BEE: 4480                       neg.l   D0
035BF0: 2D40 0040                  move.l  D0, ($40,A6)
035BF4: 7002                       moveq   #$2, D0
035BF6: 4EF9 0002 A708             jmp     $2a708.l
035BFC: 4EB9 0001 BDA6             jsr     $1bda6.l
035C02: 0240 000F                  andi.w  #$f, D0
035C06: 103B 001C                  move.b  ($1c,PC,D0.w), D0
035C0A: 5200                       addq.b  #1, D0
035C0C: D040                       add.w   D0, D0
035C0E: 1D40 02C4                  move.b  D0, ($2c4,A6)
035C12: 102E 02C4                  move.b  ($2c4,A6), D0
035C16: E208                       lsr.b   #1, D0
035C18: 4880                       ext.w   D0
035C1A: 103B 0018                  move.b  ($18,PC,D0.w), D0
035C1E: 4EF9 0002 A708             jmp     $2a708.l
035C24: 0001 0200                  ori.b   #$0, D1
035C28: 0102                       btst    D0, D2
035C2A: 0001 0200                  ori.b   #$0, D1
035C2E: 0102                       btst    D0, D2
035C30: 0001 0200                  ori.b   #$0, D1
035C34: 2323                       move.l  -(A3), -(A1)
035C36: 2425                       move.l  -(A5), D2
035C38: 2324                       move.l  -(A4), -(A1)
035C3A: 2523                       move.l  -(A3), -(A2)
035C3C: 102E 02C4                  move.b  ($2c4,A6), D0
035C40: 323B 0006                  move.w  ($6,PC,D0.w), D1
035C44: 4EFB 1002                  jmp     ($2,PC,D1.w)
035C48: 0010 0010                  ori.b   #$10, (A0)
035C4C: 0010 0010                  ori.b   #$10, (A0)
035C50: 0010 0010                  ori.b   #$10, (A0)
035C54: 0010 002A                  ori.b   #$2a, (A0)
035C58: 4A2E 003A                  tst.b   ($3a,A6)
035C5C: 670E                       beq     $35c6c
035C5E: 532E 003A                  subq.b  #1, ($3a,A6)
035C62: 6608                       bne     $35c6c
035C64: 102E 0101                  move.b  ($101,A6), D0
035C68: 01ED 010B                  bset    D0, ($10b,A5)
035C6C: 4EF9 0002 A7EA             jmp     $2a7ea.l
035C72: 102E 0007                  move.b  ($7,A6), D0
035C76: 323B 0006                  move.w  ($6,PC,D0.w), D1
035C7A: 4EFB 1002                  jmp     ($2,PC,D1.w)
035C7E: 0004 005A                  ori.b   #$5a, D4
035C82: 386E 0038                  movea.w ($38,A6), A4
035C86: 302E 0010                  move.w  ($10,A6), D0
035C8A: 322C 0010                  move.w  ($10,A4), D1
035C8E: 9240                       sub.w   D0, D1
035C90: 0641 0050                  addi.w  #$50, D1
035C94: 303C 00A0                  move.w  #$a0, D0
035C98: B041                       cmp.w   D1, D0
035C9A: 6500 002E                  bcs     $35cca
035C9E: 302C 0010                  move.w  ($10,A4), D0
035CA2: 0640 0050                  addi.w  #$50, D0
035CA6: 4A2E 000B                  tst.b   ($b,A6)
035CAA: 6704                       beq     $35cb0
035CAC: 0440 00A0                  subi.w  #$a0, D0
035CB0: 3D40 0010                  move.w  D0, ($10,A6)
035CB4: 542E 0007                  addq.b  #2, ($7,A6)
035CB8: 7031                       moveq   #$31, D0
035CBA: 4EB9 0002 A708             jsr     $2a708.l
035CC0: 7200                       moveq   #$0, D1
035CC2: 7032                       moveq   #$32, D0
035CC4: 4EF9 0002 A838             jmp     $2a838.l
035CCA: 202E 0040                  move.l  ($40,A6), D0
035CCE: D1AE 0010                  add.l   D0, ($10,A6)
035CD2: 4EF9 0002 A7EA             jmp     $2a7ea.l
035CD8: 4A2E 003A                  tst.b   ($3a,A6)
035CDC: 670E                       beq     $35cec
035CDE: 532E 003A                  subq.b  #1, ($3a,A6)
035CE2: 6608                       bne     $35cec
035CE4: 102E 0101                  move.b  ($101,A6), D0
035CE8: 01ED 010B                  bset    D0, ($10b,A5)
035CEC: 4EB9 0002 A7EA             jsr     $2a7ea.l
035CF2: 4EF9 0002 A8C6             jmp     $2a8c6.l
