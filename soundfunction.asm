;Since the one ingame writes to A4
00396F50
3900506f 
43ED 8A7E                  lea     (-$7582,A5), A1
3A2D 8A7A                  move.w  (-$7586,A5), D5
2381 5000                  move.l  D1, (A1,D5.w)
2382 5004                  move.l  D2, ($4,A1,D5.w)
2383 5008                  move.l  D3, ($8,A1,D5.w)
0645 0010                  addi.w  #$10, D5
0245 0FF0                  andi.w  #$ff0, D5
3B45 8A7A                  move.w  D5, (-$7586,A5)
4E75                       rts
