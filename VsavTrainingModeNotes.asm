Vsav Training Mode Roms

;Lives selection
;FF80A4

Text 1062A
54 4F 52 45 4D 4F 20 20


Timer
Location : 9822
v1 Byte Code: 532D 010A
v2 Byte code: 4EF9 000F FE70

4A2D 00A4
6712
4A2D 010A 
6704
532D 0109
6A06
4EF9 0000 9828
4EF9 0000 983C


-------------------------------------------------------------------------------
Death write
Location : 18A7C
v1 Byte Code: 337C 0090 0050 337C 0090 0052	 
v2 Byte Code: 

4EB9000FFE204EB9000FFE40

Jump 1
4A2D 00A4
6608
337C 0090 0050
4E75
337C FFFF 0050
4E75

4A2D 00A4
6608
337C 0090 0052
4E75
337C FFFF 0052
4E75

-------------------------------------------------------------------------------
Death write Command Grabs
Location : 2980A
v1 Byte Code: 337C 0090 0050 337C 0090 0052
v2 Byte Code: 4EB9 Location

^^^^^^^^^^^^
4EB9 000F FE20
4EB9 000F FE40

-------------------------------------------------------------------------------
Lives A61C bsr to A684
Location : A6A0
v1 Byte Code: 132D 03B0

v2
4EF9 000FFDE0

Jump
4A2D 00A4
6706
532E 03B0
6B04
4EF9 0000 A6A6
4EF9 0000 A6B4



-------------------------------------------------------------------------------
The Refill JSR
Location : 281A6 
Byte code: 4EB9 000F FD20
Player Addresses A4 A6


;Code at ffd20(7Fd20)


4A2D 00A4
6610

4A2C 03F0
6710
 
4A2E 0005
6604
532C 03F0
4EF9 0001 559E

;Refill
197C 0040 03F0; Timer
303C 0090
3D40 0050
3D40 0052
4EF9 0001 559E


-------------------------------------------------------------------------------
Return to Character Select
;Deselect
Location : 2090E 
v1 Byte code: 1D7C 0000 0004
v2 Byte code: 4EB9 000F FDB0

4A2D 00A4
6608
1D7C 0000 0004
4E75
1D7C 0004 0004
4E75

-------------------------------------------------------------------------------
JSR
Location : 223EC
Byte code: 4EB9 000F FD60

4A2D 00A4
6612
102D 0060                  move.b  ($60,A5), D0
0200 000F                  andi.b  #$f, D0
4A00                       tst.b   D0
660E                       bne     $660020;Branch to the other tst.b dummy

1B7C 0080 6000             move.b  #$80, ($6000,A5)
7000                       moveq   #$0, D0
4EF9 0002 9F12             jmp     $29f12.l

4A2D 6000                  tst.b   ($6000,A5)
6610                       bne     $660036

7000                       moveq   #$0, D0
3B40 0004                  move.w  D0, ($4,A5)
3B40 0008                  move.w  D0, ($8,A5)
3B40 000C                  move.w  D0, ($c,A5)
4E75                       rts

102D 6000                  move.b  ($6000,A5), D0
B07C 0077                  cmp.b   #$77, D0
6D04                       blt     $660044
522E 0109                  addq.b  #1, ($109,A6)
532D 6000                  subq.b  #1, ($6000,A5)
7000                       moveq   #$0, D0
4EF9 0002 9F12             jmp     $29f12.l


-----------------------------------
----------Other Byte Code----------
-----------------------------------

;X pos
302C 0010
322D 02A0
9041
3940 03C0

;Y pos
302C 0014
322D 02A4
9041
3940 03C2
