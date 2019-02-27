;Magneto Programming reversed off of S_PL2CA.bin
;Start
            0x0ce30000      6390           mov.w @(0xC6,PC),r0                  
            0x0ce30002      70e5           mov 0x70,r5                          
            0x0ce30004      31d7           mov.l @(0xC4,PC),r7                  
            0x0ce30006      4e06           mov.l @(r0,r4),r6                    
            0x0ce30008      00e4           mov 0x00,r4                          
        .-> 0x0ce3000a      4360           mov r4,r0                            
        :   0x0ce3000c      0900           nop                                  
        :   0x0ce3000e      0474           add 0x04,r4                          
        :   0x0ce30010      7e03           mov.l @(r0,r7),r3                    
        :   0x0ce30012      5234           cmp/hs r5,r4                         
        `=< 0x0ce30014      f98f           bf.s 0x0ce3000a             ;[1]     
            0x0ce30016      3606           mov.l r3,@(r0,r6)                    
            0x0ce30018      0b00           rts                                  
            0x0ce3001a      0900           nop

;==============================================================================
            0x0ce3001c      e62f           mov.l r14,@-r15                      
            0x0ce3001e      224f           sts.l pr,@-r15                       
            0x0ce30020      2bd3           mov.l @(0xAC,PC),r3                  
            0x0ce30022      0b43           jsr @r3                     ;[?]     
            0x0ce30024      436e           mov r4,r14                           
            0x0ce30026      0c60           extu.b r0,r0                         
            0x0ce30028      0820           tst r0,r0                            
        ,=< 0x0ce3002a      4b8b           bf 0x0ce300c4               ;[1]     
        |   0x0ce3002c      29d3           mov.l @(0xA4,PC),r3                  
        |   0x0ce3002e      0b43           jsr @r3                     ;[?]     
        |   0x0ce30030      e364           mov r14,r4                           
        |   0x0ce30032      0c60           extu.b r0,r0                         
        |   0x0ce30034      0820           tst r0,r0                            
       ,==< 0x0ce30036      458b           bf 0x0ce300c4               ;[1]     
       ||   0x0ce30038      27d3           mov.l @(0x9C,PC),r3                  
       ||   0x0ce3003a      0b43           jsr @r3                     ;[?]     
       ||   0x0ce3003c      e364           mov r14,r4                           
       ||   0x0ce3003e      0c60           extu.b r0,r0                         
       ||   0x0ce30040      0820           tst r0,r0                            
      ,===< 0x0ce30042      3f8b           bf 0x0ce300c4               ;[1]     
      |||   0x0ce30044      25d3           mov.l @(0x94,PC),r3                  
      |||   0x0ce30046      0b43           jsr @r3                     ;[?]     
      |||   0x0ce30048      e364           mov r14,r4                           
      |||   0x0ce3004a      0c60           extu.b r0,r0                         
      |||   0x0ce3004c      0820           tst r0,r0                            
     ,====< 0x0ce3004e      398b           bf 0x0ce300c4               ;[1]     
     ||||   0x0ce30050      6cb0           bsr 0x0ce3012c              ;[2]     
     ||||   0x0ce30052      e364           mov r14,r4                           
     ||||   0x0ce30054      0c60           extu.b r0,r0                         
     ||||   0x0ce30056      0820           tst r0,r0                            
    ,=====< 0x0ce30058      348b           bf 0x0ce300c4               ;[1]     
    |||||   0x0ce3005a      95b0           bsr 0x0ce30188              ;[3]     
    |||||   0x0ce3005c      e364           mov r14,r4                           
    |||||   0x0ce3005e      0c60           extu.b r0,r0                         
    |||||   0x0ce30060      0820           tst r0,r0                            
   ,======< 0x0ce30062      2f8b           bf 0x0ce300c4               ;[1]     
   ||||||   0x0ce30064      beb1           bsr 0x0ce303e4              ;[4]     
   ||||||   0x0ce30066      e364           mov r14,r4                           
   ||||||   0x0ce30068      0c60           extu.b r0,r0                         
   ||||||   0x0ce3006a      0820           tst r0,r0                            
  ,=======< 0x0ce3006c      2a8b           bf 0x0ce300c4               ;[1]     
  |||||||   0x0ce3006e      90b1           bsr 0x0ce30392              ;[5]     
  |||||||   0x0ce30070      e364           mov r14,r4                           
  |||||||   0x0ce30072      0c60           extu.b r0,r0                         
  |||||||   0x0ce30074      0820           tst r0,r0                            
  ========< 0x0ce30076      258b           bf 0x0ce300c4               ;[1]     
  |||||||   0x0ce30078      d8b0           bsr 0x0ce3022c              ;[6]     
  |||||||   0x0ce3007a      e364           mov r14,r4                           
  |||||||   0x0ce3007c      0c60           extu.b r0,r0                         
  |||||||   0x0ce3007e      0820           tst r0,r0                            
  ========< 0x0ce30080      208b           bf 0x0ce300c4               ;[1]     
  |||||||   0x0ce30082      0bb1           bsr 0x0ce3029c              ;[7]     
  |||||||   0x0ce30084      e364           mov r14,r4                           
  |||||||   0x0ce30086      0c60           extu.b r0,r0                         
  |||||||   0x0ce30088      0820           tst r0,r0                            
  ========< 0x0ce3008a      1b8b           bf 0x0ce300c4               ;[1]     
  |||||||   0x0ce3008c      44b1           bsr 0x0ce30318              ;[8]     
  |||||||   0x0ce3008e      e364           mov r14,r4                           
  |||||||   0x0ce30090      0c60           extu.b r0,r0                         
  |||||||   0x0ce30092      0820           tst r0,r0                            
  ========< 0x0ce30094      168b           bf 0x0ce300c4               ;[1]     
  |||||||   0x0ce30096      29b0           bsr 0x0ce300ec              ;[9]     
  |||||||   0x0ce30098      e364           mov r14,r4                           
  |||||||   0x0ce3009a      0820           tst r0,r0                            
  ========< 0x0ce3009c      128b           bf 0x0ce300c4               ;[?]     
  |||||||   0x0ce3009e      dab1           bsr 0x0ce30456              ;[?]     
  |||||||   0x0ce300a0      e364           mov r14,r4                           
  |||||||   0x0ce300a2      0c60           extu.b r0,r0                         
  |||||||   0x0ce300a4      0820           tst r0,r0                            
  ========< 0x0ce300a6      0d8b           bf 0x0ce300c4               ;[?]     
  |||||||   0x0ce300a8      0dd3           mov.l @(0x34,PC),r3                  
  |||||||   0x0ce300aa      0b43           jsr @r3                     ;[?]     
  |||||||   0x0ce300ac      e364           mov r14,r4                           
  |||||||   0x0ce300ae      0c60           extu.b r0,r0                         
  |||||||   0x0ce300b0      0820           tst r0,r0                            
  ========< 0x0ce300b2      078b           bf 0x0ce300c4               ;[?]     
  |||||||   0x0ce300b4      0bd3           mov.l @(0x2C,PC),r3                  
  |||||||   0x0ce300b6      0b43           jsr @r3                     ;[?]     
  |||||||   0x0ce300b8      e364           mov r14,r4                           
  |||||||   0x0ce300ba      264f           lds.l @r15+,pr                       
  |||||||   0x0ce300bc      0ad2           mov.l @(0x28,PC),r2                  
  |||||||   0x0ce300be      e364           mov r14,r4                           
  |||||||   0x0ce300c0      2b42           jmp @r2                              
  |||||||   0x0ce300c2      f66e           mov.l @r15+,r14                      
  ```````-> 0x0ce300c4      264f           lds.l @r15+,pr                       
            0x0ce300c6      0b00           rts                                  
            0x0ce300c8      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\\//\/\/\/\/\/\/\
0x0ce300ca  0x0428
0x0ce300cc  0x0ce323d0 0x8c054508 0x8c054b34 0x8c05496c  .#...E..4K..lI..       
0x0ce300dc  0x8c054d04 0x8c054184 0x8c053e00 0x8c0542e0

;==============================================================================
            0x0ce300ec      e62f           mov.l r14,@-r15                      
            0x0ce300ee      224f           sts.l pr,@-r15                       
            0x0ce300f0      48d3           mov.l @(0x120,PC),r3                 
            0x0ce300f2      0b43           jsr @r3                     ;[?]     
            0x0ce300f4      436e           mov r4,r14                           
            0x0ce300f6      0820           tst r0,r0                            
        ,=< 0x0ce300f8      0489           bt 0x0ce30104               ;[1]     
        |   0x0ce300fa      8390           mov.w @(0x106,PC),r0                 
        |   0x0ce300fc      ee02           mov.l @(r0,r14),r2                   
        |   0x0ce300fe      2063           mov.b @r2,r3                         
        |   0x0ce30100      3823           tst r3,r3                            
       ,==< 0x0ce30102      038b           bf 0x0ce3010c               ;[2]     
       |`-> 0x0ce30104      264f           lds.l @r15+,pr                       
       |    0x0ce30106      00e0           mov 0x00,r0                          
       |    0x0ce30108      0b00           rts                                  
       |    0x0ce3010a      f66e           mov.l @r15+,r14                      
       `--> 0x0ce3010c      7b90           mov.w @(0xF6,PC),r0                  
            0x0ce3010e      0ce3           mov 0x0C,r3                          
            0x0ce30110      1de5           mov 0x1D,r5                          
            0x0ce30112      340e           mov.b r3,@(r0,r14)                   
            0x0ce30114      00e0           mov 0x00,r0                          
            0x0ce30116      40d3           mov.l @(0x100,PC),r3                 
            0x0ce30118      e580           mov.b r0,@(0x5,r14)                  
            0x0ce3011a      0b43           jsr @r3                     ;[?]     
            0x0ce3011c      e364           mov r14,r4                           
            0x0ce3011e      00e0           mov 0x00,r0                          
            0x0ce30120      e780           mov.b r0,@(0x7,r14)                  
            0x0ce30122      e680           mov.b r0,@(0x6,r14)                  
            0x0ce30124      01e0           mov 0x01,r0                          
            0x0ce30126      264f           lds.l @r15+,pr                       
            0x0ce30128      0b00           rts                                  
            0x0ce3012a      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce3012c      e62f           mov.l r14,@-r15                      
            0x0ce3012e      436e           mov r4,r14                           
            0x0ce30130      d62f           mov.l r13,@-r15                      
            0x0ce30132      224f           sts.l pr,@-r15                       
            0x0ce30134      39d5           mov.l @(0xE4,PC),r5                  
            0x0ce30136      6796           mov.w @(0xCE,PC),r6                  
            0x0ce30138      39d3           mov.l @(0xE4,PC),r3                  
            0x0ce3013a      0b43           jsr @r3                     ;[?]     
            0x0ce3013c      ec36           add r14,r6                           
            0x0ce3013e      0c60           extu.b r0,r0                         
            0x0ce30140      0820           tst r0,r0                            
        ,=< 0x0ce30142      0489           bt 0x0ce3014e               ;[1]     
        |   0x0ce30144      5e90           mov.w @(0xBC,PC),r0                  
        |   0x0ce30146      ee02           mov.l @(r0,r14),r2                   
        |   0x0ce30148      2063           mov.b @r2,r3                         
        |   0x0ce3014a      3823           tst r3,r3                            
       ,==< 0x0ce3014c      018b           bf 0x0ce30152               ;[2]     
      ,=`-> 0x0ce3014e      17a0           bra 0x0ce30180              ;[3]     
      ||    0x0ce30150      00e0           mov 0x00,r0                          
      |`--> 0x0ce30152      5995           mov.w @(0xB2,PC),r5                  
      |     0x0ce30154      33d3           mov.l @(0xCC,PC),r3                  
      |     0x0ce30156      ec35           add r14,r5                           
      |     0x0ce30158      0b43           jsr @r3                     ;[?]     
      |     0x0ce3015a      e364           mov r14,r4                           
      |     0x0ce3015c      00ed           mov 0x00,r13                         
      |     0x0ce3015e      d360           mov r13,r0                           
      |     0x0ce30160      0900           nop                                  
      |     0x0ce30162      2dd3           mov.l @(0xB4,PC),r3                  
      |     0x0ce30164      1de5           mov 0x1D,r5                          
      |     0x0ce30166      e580           mov.b r0,@(0x5,r14)                  
      |     0x0ce30168      0b43           jsr @r3                     ;[?]     
      |     0x0ce3016a      e364           mov r14,r4                           
      |     0x0ce3016c      d360           mov r13,r0                           
      |     0x0ce3016e      0900           nop                                  
      |     0x0ce30170      e780           mov.b r0,@(0x7,r14)                  
      |     0x0ce30172      02e3           mov 0x02,r3                          
      |     0x0ce30174      e680           mov.b r0,@(0x6,r14)                  
      |     0x0ce30176      4690           mov.w @(0x8C,PC),r0                  
      |     0x0ce30178      340e           mov.b r3,@(r0,r14)                   
      |     0x0ce3017a      1670           add 0x16,r0                          
      |     0x0ce3017c      d40e           mov.b r13,@(r0,r14)                  
      |     0x0ce3017e      01e0           mov 0x01,r0                          
      `---> 0x0ce30180      264f           lds.l @r15+,pr                       
            0x0ce30182      f66d           mov.l @r15+,r13                      
            0x0ce30184      0b00           rts                                  
            0x0ce30186      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30188      e62f           mov.l r14,@-r15                      
            0x0ce3018a      436e           mov r4,r14                           
            0x0ce3018c      d62f           mov.l r13,@-r15                      
            0x0ce3018e      224f           sts.l pr,@-r15                       
            0x0ce30190      25d5           mov.l @(0x94,PC),r5                  
            0x0ce30192      3a96           mov.w @(0x74,PC),r6                  
            0x0ce30194      22d3           mov.l @(0x88,PC),r3                  
            0x0ce30196      0b43           jsr @r3                     ;[?]     
            0x0ce30198      ec36           add r14,r6                           
            0x0ce3019a      0c60           extu.b r0,r0                         
            0x0ce3019c      0820           tst r0,r0                            
        ,=< 0x0ce3019e      1489           bt 0x0ce301ca               ;[1]     
        |   0x0ce301a0      3490           mov.w @(0x68,PC),r0                  
        |   0x0ce301a2      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce301a4      0c60           extu.b r0,r0                         
        |   0x0ce301a6      0288           cmp/eq 0x02,r0                       
       ,==< 0x0ce301a8      0a8b           bf 0x0ce301c0               ;[2]     
       ||   0x0ce301aa      3090           mov.w @(0x60,PC),r0                  
       ||   0x0ce301ac      ec02           mov.b @(r0,r14),r2                   
       ||   0x0ce301ae      2822           tst r2,r2                            
      ,===< 0x0ce301b0      068b           bf 0x0ce301c0               ;[2]     
      |||   0x0ce301b2      2d90           mov.w @(0x5A,PC),r0                  
      |||   0x0ce301b4      ec03           mov.b @(r0,r14),r3                   
      |||   0x0ce301b6      3823           tst r3,r3                            
     ,====< 0x0ce301b8      078b           bf 0x0ce301ca               ;[1]     
     ||||   0x0ce301ba      ec02           mov.b @(r0,r14),r2                   
     ||||   0x0ce301bc      0172           add 0x01,r2                          
     ||||   0x0ce301be      240e           mov.b r2,@(r0,r14)                   
     |``--> 0x0ce301c0      2090           mov.w @(0x40,PC),r0                  
     |  |   0x0ce301c2      ee03           mov.l @(r0,r14),r3                   
     |  |   0x0ce301c4      3062           mov.b @r3,r2                         
     |  |   0x0ce301c6      2822           tst r2,r2                            
     | ,==< 0x0ce301c8      018b           bf 0x0ce301ce               ;[3]     
     `,=`-> 0x0ce301ca      17a0           bra 0x0ce301fc              ;[4]     
      ||    0x0ce301cc      00e0           mov 0x00,r0                          
      |`--> 0x0ce301ce      1c95           mov.w @(0x38,PC),r5                  
      |     0x0ce301d0      14d3           mov.l @(0x50,PC),r3                  
      |     0x0ce301d2      ec35           add r14,r5                           
      |     0x0ce301d4      0b43           jsr @r3                     ;[?]     
      |     0x0ce301d6      e364           mov r14,r4                           
      |     0x0ce301d8      00ed           mov 0x00,r13                         
      |     0x0ce301da      d360           mov r13,r0                           
      |     0x0ce301dc      0900           nop                                  
      |     0x0ce301de      0ed3           mov.l @(0x38,PC),r3                  
      |     0x0ce301e0      1de5           mov 0x1D,r5                          
      |     0x0ce301e2      e580           mov.b r0,@(0x5,r14)                  
      |     0x0ce301e4      0b43           jsr @r3                     ;[?]     
      |     0x0ce301e6      e364           mov r14,r4                           
      |     0x0ce301e8      d360           mov r13,r0                           
      |     0x0ce301ea      0900           nop                                  
      |     0x0ce301ec      e780           mov.b r0,@(0x7,r14)                  
      |     0x0ce301ee      03e3           mov 0x03,r3                          
      |     0x0ce301f0      e680           mov.b r0,@(0x6,r14)                  
      |     0x0ce301f2      0890           mov.w @(0x10,PC),r0                  
      |     0x0ce301f4      340e           mov.b r3,@(r0,r14)                   
      |     0x0ce301f6      1670           add 0x16,r0                          
      |     0x0ce301f8      d40e           mov.b r13,@(r0,r14)                  
      |     0x0ce301fa      01e0           mov 0x01,r0                          
      `---> 0x0ce301fc      264f           lds.l @r15+,pr                       
            0x0ce301fe      f66d           mov.l @r15+,r13                      
            0x0ce30200      0b00           rts                                  
            0x0ce30202      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30204  0x040c 0x01e9 0x0364 0x036c 0x01f9 0x01fc 0x01d4 0x0000

0x0ce30214  0x8c054d1c 0x8c0530d8 0x0ce3231c 0x8c054e58
0x0ce30224  0x8c055c3a 0x0ce3232c

;==============================================================================
;EM Disruptor
;==============================================================================;
            0x0ce3022c      e62f           mov.l r14,@-r15                      
            0x0ce3022e      436e           mov r4,r14             ;move pladr to r14 ;0x8c268340              
            0x0ce30230      d62f           mov.l r13,@-r15                      
            0x0ce30232      224f           sts.l pr,@-r15                       
            0x0ce30234      43d5           mov.l @(0x10C,PC),r5   ;0x0ce30344 ; 0x0ce322f4 ;EM Input Data
            0x0ce30236      7d96           mov.w @(0xFA,PC),r6    ;0x0ce30334 ; 0x0374	;Input location
            0x0ce30238      43d3           mov.l @(0x10C,PC),r3   ;0x0ce30348 ; 0x8c054e58 ;hmm
            0x0ce3023a      0b43           jsr @r3                          
            0x0ce3023c      ec36           add r14,r6                           
            0x0ce3023e      0c60           extu.b r0,r0                         
            0x0ce30240      0820           tst r0,r0                            
        ,=< 0x0ce30242      0c89           bt 0x0ce3025e               ;[1]     
        |   0x0ce30244      7790           mov.w @(0xEE,PC),r0    ;0x0ce30336 ; 0x01f9;Aircheck?
        |   0x0ce30246      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce30248      0c60           extu.b r0,r0                         
        |   0x0ce3024a      0288           cmp/eq 0x02,r0                       
       ,==< 0x0ce3024c      0c8b           bf 0x0ce30268               ;[2]     

       ||   0x0ce3024e      7390           mov.w @(0xE6,PC),r0    ;0x0ce30338 ; 0x01fc
       ||   0x0ce30250      ec02           mov.b @(r0,r14),r2                   
       ||   0x0ce30252      2822           tst r2,r2                            
      ,===< 0x0ce30254      088b           bf 0x0ce30268               ;[2]     
      |||   0x0ce30256      7090           mov.w @(0xE0,PC),r0    ;0x0ce3033a ; 0x01d4
      |||   0x0ce30258      ec03           mov.b @(r0,r14),r3                   
      |||   0x0ce3025a      3823           tst r3,r3                            
     ,====< 0x0ce3025c      0189           bt 0x0ce30262               ;[3]     

    ,===`-> 0x0ce3025e      19a0           bra 0x0ce30294              ;[4]     
    ||||    0x0ce30260      00e0           mov 0x00,r0                          

    |`----> 0x0ce30262      ec03           mov.b @(r0,r14),r3                   
    | ||    0x0ce30264      0173           add 0x01,r3                          
    | ||    0x0ce30266      340e           mov.b r3,@(r0,r14)                   

;
    | ``--> 0x0ce30268      6495           mov.w @(0xC8,PC),r5    ;0x0ce30334 ; 0x0374
    |       0x0ce3026a      38d2           mov.l @(0xE0,PC),r2    ;0x0ce3034c ; 0x8c055c3a
    |       0x0ce3026c      ec35           add r14,r5             
    |       0x0ce3026e      0b42           jsr @r2                     ;[?]     
    |       0x0ce30270      e364           mov r14,r4                           
    |       0x0ce30272      00ed           mov 0x00,r13                         
    |       0x0ce30274      d360           mov r13,r0                           
    |       0x0ce30276      0900           nop                                  
    |       0x0ce30278      35d3           mov.l @(0xD4,PC),r3    ;0x0ce30350 ; 0x8c0530d8
    |       0x0ce3027a      15e5           mov 0x15,r5                          
    |       0x0ce3027c      e580           mov.b r0,@(0x5,r14)                  
    |       0x0ce3027e      0b43           jsr @r3                     ;[?]     
    |       0x0ce30280      e364           mov r14,r4                           
    |       0x0ce30282      d360           mov r13,r0                           
    |       0x0ce30284      0900           nop                                  
    |       0x0ce30286      e780           mov.b r0,@(0x7,r14)                  
    |       0x0ce30288      e680           mov.b r0,@(0x6,r14)                  
    |       0x0ce3028a      5790           mov.w @(0xAE,PC),r0    ;0x0ce3033c ; 0x01e9 
    |       0x0ce3028c      d40e           mov.b r13,@(r0,r14)    ;write special move id
    |       0x0ce3028e      1670           add 0x16,r0                          
    |       0x0ce30290      d40e           mov.b r13,@(r0,r14)                  
    |       0x0ce30292      01e0           mov 0x01,r0                          
    `-----> 0x0ce30294      264f           lds.l @r15+,pr                       
            0x0ce30296      f66d           mov.l @r15+,r13                      
            0x0ce30298      0b00           rts                                  
            0x0ce3029a      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce3029c      e62f           mov.l r14,@-r15                      
            0x0ce3029e      436e           mov r4,r14                           
            0x0ce302a0      d62f           mov.l r13,@-r15                      
            0x0ce302a2      224f           sts.l pr,@-r15                       
            0x0ce302a4      2bd5           mov.l @(0xAC,PC),r5                  
            0x0ce302a6      4a96           mov.w @(0x94,PC),r6                  
            0x0ce302a8      27d3           mov.l @(0x9C,PC),r3                  
            0x0ce302aa      0b43           jsr @r3                     ;[?]     
            0x0ce302ac      ec36           add r14,r6                           
            0x0ce302ae      0c60           extu.b r0,r0                         
            0x0ce302b0      0820           tst r0,r0                            
        ,=< 0x0ce302b2      1389           bt 0x0ce302dc               ;[1]     
        |   0x0ce302b4      3f90           mov.w @(0x7E,PC),r0                  
        |   0x0ce302b6      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce302b8      0c60           extu.b r0,r0                         
        |   0x0ce302ba      0288           cmp/eq 0x02,r0                       
       ,==< 0x0ce302bc      0a8b           bf 0x0ce302d4               ;[2]     
       ||   0x0ce302be      3b90           mov.w @(0x76,PC),r0                  
       ||   0x0ce302c0      ec02           mov.b @(r0,r14),r2                   
       ||   0x0ce302c2      2822           tst r2,r2                            
      ,===< 0x0ce302c4      068b           bf 0x0ce302d4               ;[2]     
      |||   0x0ce302c6      3890           mov.w @(0x70,PC),r0                  
      |||   0x0ce302c8      ec03           mov.b @(r0,r14),r3                   
      |||   0x0ce302ca      3823           tst r3,r3                            
     ,====< 0x0ce302cc      068b           bf 0x0ce302dc               ;[1]     
     ||||   0x0ce302ce      ec02           mov.b @(r0,r14),r2                   
     ||||   0x0ce302d0      0172           add 0x01,r2                          
     ||||   0x0ce302d2      240e           mov.b r2,@(r0,r14)                   
     |``--> 0x0ce302d4      3490           mov.w @(0x68,PC),r0                  
     |  |   0x0ce302d6      ec03           mov.b @(r0,r14),r3                   
     |  |   0x0ce302d8      3823           tst r3,r3                            
     | ,==< 0x0ce302da      0189           bt 0x0ce302e0               ;[3]     
     `,=`-> 0x0ce302dc      18a0           bra 0x0ce30310              ;[4]     
      ||    0x0ce302de      00e0           mov 0x00,r0                          
      |`--> 0x0ce302e0      2d95           mov.w @(0x5A,PC),r5                  
      |     0x0ce302e2      1ad3           mov.l @(0x68,PC),r3                  
      |     0x0ce302e4      ec35           add r14,r5                           
      |     0x0ce302e6      0b43           jsr @r3                     ;[?]     
      |     0x0ce302e8      e364           mov r14,r4                           
      |     0x0ce302ea      00ed           mov 0x00,r13                         
      |     0x0ce302ec      d360           mov r13,r0                           
      |     0x0ce302ee      0900           nop                                  
      |     0x0ce302f0      17d3           mov.l @(0x5C,PC),r3                  
      |     0x0ce302f2      15e5           mov 0x15,r5                          
      |     0x0ce302f4      e580           mov.b r0,@(0x5,r14)                  
      |     0x0ce302f6      0b43           jsr @r3                     ;[?]     
      |     0x0ce302f8      e364           mov r14,r4                           
      |     0x0ce302fa      d360           mov r13,r0                           
      |     0x0ce302fc      0900           nop                                  
      |     0x0ce302fe      e780           mov.b r0,@(0x7,r14)                  
      |     0x0ce30300      01e4           mov 0x01,r4                          
      |     0x0ce30302      e680           mov.b r0,@(0x6,r14)                  
      |     0x0ce30304      1a90           mov.w @(0x34,PC),r0    ;1e9             
      |     0x0ce30306      440e           mov.b r4,@(r0,r14)                   
      |     0x0ce30308      1670           add 0x16,r0                          
      |     0x0ce3030a      d40e           mov.b r13,@(r0,r14)                  
      |     0x0ce3030c      4360           mov r4,r0                            
      |     0x0ce3030e      0900           nop                                  
      `---> 0x0ce30310      264f           lds.l @r15+,pr                       
            0x0ce30312      f66d           mov.l @r15+,r13                      
            0x0ce30314      0b00           rts                                  
            0x0ce30316      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30318      e62f           mov.l r14,@-r15                      
            0x0ce3031a      436e           mov r4,r14                           
            0x0ce3031c      d62f           mov.l r13,@-r15                      
            0x0ce3031e      224f           sts.l pr,@-r15                       
            0x0ce30320      0dd5           mov.l @(0x34,PC),r5                  
            0x0ce30322      0e96           mov.w @(0x1C,PC),r6                  
            0x0ce30324      08d3           mov.l @(0x20,PC),r3                  
            0x0ce30326      0b43           jsr @r3                     ;[?]     
            0x0ce30328      ec36           add r14,r6                           
            0x0ce3032a      0c60           extu.b r0,r0                         
            0x0ce3032c      0820           tst r0,r0                            
        ,=< 0x0ce3032e      158b           bf 0x0ce3035c               ;[1]     
       ,==< 0x0ce30330      2ba0           bra 0x0ce3038a              ;[2]     
       ||   0x0ce30332      00e0           mov 0x00,r0                          

;##############################################################################
0x0ce30334  0x0374 0x01f9 0x01fc 0x01d4 0x01e9 0x037c 0x02b2 0x0384
0x0ce30344  0x0ce322f4 0x8c054e58 0x8c055c3a 0x8c0530d8
0x0ce30354  0x0ce32308 0x0ce3233c

;------------------------------------------------------------------------------
            0x0ce3035c      9795           mov.w @(0x12E,PC),r5                 
            0x0ce3035e      4fd3           mov.l @(0x13C,PC),r3                 
            0x0ce30360      ec35           add r14,r5                           
            0x0ce30362      0b43           jsr @r3                     ;[?]     
            0x0ce30364      e364           mov r14,r4                           
            0x0ce30366      00ed           mov 0x00,r13                         
            0x0ce30368      d360           mov r13,r0                           
            0x0ce3036a      0900           nop                                  
            0x0ce3036c      4cd3           mov.l @(0x130,PC),r3                 
            0x0ce3036e      15e5           mov 0x15,r5                          
            0x0ce30370      e580           mov.b r0,@(0x5,r14)                  
            0x0ce30372      0b43           jsr @r3                     ;[?]     
            0x0ce30374      e364           mov r14,r4                           
            0x0ce30376      d360           mov r13,r0                           
            0x0ce30378      0900           nop                                  
            0x0ce3037a      e780           mov.b r0,@(0x7,r14)                  
            0x0ce3037c      04e3           mov 0x04,r3                          
            0x0ce3037e      e680           mov.b r0,@(0x6,r14)                  
            0x0ce30380      8690           mov.w @(0x10C,PC),r0                 
            0x0ce30382      340e           mov.b r3,@(r0,r14)                   
            0x0ce30384      1670           add 0x16,r0                          
            0x0ce30386      d40e           mov.b r13,@(r0,r14)                  
            0x0ce30388      01e0           mov 0x01,r0                          

            0x0ce3038a      264f           lds.l @r15+,pr                       
            0x0ce3038c      f66d           mov.l @r15+,r13                      
            0x0ce3038e      0b00           rts                                  
            0x0ce30390      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30392      e62f           mov.l r14,@-r15                      
            0x0ce30394      436e           mov r4,r14                           
            0x0ce30396      d62f           mov.l r13,@-r15                      
            0x0ce30398      224f           sts.l pr,@-r15                       
            0x0ce3039a      42d5           mov.l @(0x108,PC),r5                 
            0x0ce3039c      7996           mov.w @(0xF2,PC),r6                  
            0x0ce3039e      42d3           mov.l @(0x108,PC),r3                 
            0x0ce303a0      0b43           jsr @r3                     ;[?]     
            0x0ce303a2      ec36           add r14,r6                           
            0x0ce303a4      0c60           extu.b r0,r0                         
            0x0ce303a6      0820           tst r0,r0                            
        ,=< 0x0ce303a8      018b           bf 0x0ce303ae               ;[1]     
       ,==< 0x0ce303aa      17a0           bra 0x0ce303dc              ;[2]     
       ||   0x0ce303ac      00e0           mov 0x00,r0                          
       |`-> 0x0ce303ae      7095           mov.w @(0xE0,PC),r5                  
       |    0x0ce303b0      3ad3           mov.l @(0xE8,PC),r3                  
       |    0x0ce303b2      ec35           add r14,r5                           
       |    0x0ce303b4      0b43           jsr @r3                     ;[?]     
       |    0x0ce303b6      e364           mov r14,r4                           
       |    0x0ce303b8      00ed           mov 0x00,r13                         
       |    0x0ce303ba      d360           mov r13,r0                           
       |    0x0ce303bc      0900           nop                                  
       |    0x0ce303be      38d3           mov.l @(0xE0,PC),r3                  
       |    0x0ce303c0      15e5           mov 0x15,r5                          
       |    0x0ce303c2      e580           mov.b r0,@(0x5,r14)                  
       |    0x0ce303c4      0b43           jsr @r3                     ;[?]     
       |    0x0ce303c6      e364           mov r14,r4                           
       |    0x0ce303c8      d360           mov r13,r0                           
       |    0x0ce303ca      0900           nop                                  
       |    0x0ce303cc      e780           mov.b r0,@(0x7,r14)                  
       |    0x0ce303ce      08e3           mov 0x08,r3                          
       |    0x0ce303d0      e680           mov.b r0,@(0x6,r14)                  
       |    0x0ce303d2      5d90           mov.w @(0xBA,PC),r0                  
       |    0x0ce303d4      340e           mov.b r3,@(r0,r14)                   
       |    0x0ce303d6      1670           add 0x16,r0                          
       |    0x0ce303d8      d40e           mov.b r13,@(r0,r14)                  
       |    0x0ce303da      01e0           mov 0x01,r0                          
       `--> 0x0ce303dc      264f           lds.l @r15+,pr                       
            0x0ce303de      f66d           mov.l @r15+,r13                      
            0x0ce303e0      0b00           rts                                  
            0x0ce303e2      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce303e4      e62f           mov.l r14,@-r15                      
            0x0ce303e6      436e           mov r4,r14                           
            0x0ce303e8      d62f           mov.l r13,@-r15                      
            0x0ce303ea      224f           sts.l pr,@-r15                       
            0x0ce303ec      2fd5           mov.l @(0xBC,PC),r5                  
            0x0ce303ee      5196           mov.w @(0xA2,PC),r6                  
            0x0ce303f0      2dd3           mov.l @(0xB4,PC),r3                  
            0x0ce303f2      0b43           jsr @r3                     ;[?]     
            0x0ce303f4      ec36           add r14,r6                           
            0x0ce303f6      0c60           extu.b r0,r0                         
            0x0ce303f8      0820           tst r0,r0                            
        ,=< 0x0ce303fa      0c89           bt 0x0ce30416               ;[1]     
        |   0x0ce303fc      4b90           mov.w @(0x96,PC),r0                  
        |   0x0ce303fe      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce30400      0c60           extu.b r0,r0                         
        |   0x0ce30402      0288           cmp/eq 0x02,r0                       
       ,==< 0x0ce30404      0c8b           bf 0x0ce30420               ;[2]     
       ||   0x0ce30406      4790           mov.w @(0x8E,PC),r0                  
       ||   0x0ce30408      ec02           mov.b @(r0,r14),r2                   
       ||   0x0ce3040a      2822           tst r2,r2                            
      ,===< 0x0ce3040c      088b           bf 0x0ce30420               ;[2]     
      |||   0x0ce3040e      4490           mov.w @(0x88,PC),r0                  
      |||   0x0ce30410      ec03           mov.b @(r0,r14),r3                   
      |||   0x0ce30412      3823           tst r3,r3                            
     ,====< 0x0ce30414      0189           bt 0x0ce3041a               ;[3]     
    ,===`-> 0x0ce30416      1aa0           bra 0x0ce3044e              ;[4]     
    ||||    0x0ce30418      00e0           mov 0x00,r0                          
    |`----> 0x0ce3041a      ec03           mov.b @(r0,r14),r3                   
    | ||    0x0ce3041c      0173           add 0x01,r3                          
    | ||    0x0ce3041e      340e           mov.b r3,@(r0,r14)                   
    | ``--> 0x0ce30420      3895           mov.w @(0x70,PC),r5                  
    |       0x0ce30422      1ed2           mov.l @(0x78,PC),r2                  
    |       0x0ce30424      ec35           add r14,r5                           
    |       0x0ce30426      0b42           jsr @r2                     ;[?]     
    |       0x0ce30428      e364           mov r14,r4                           
    |       0x0ce3042a      00ed           mov 0x00,r13                         
    |       0x0ce3042c      d360           mov r13,r0                           
    |       0x0ce3042e      0900           nop                                  
    |       0x0ce30430      1bd3           mov.l @(0x6C,PC),r3                  
    |       0x0ce30432      15e5           mov 0x15,r5                          
    |       0x0ce30434      e580           mov.b r0,@(0x5,r14)                  
    |       0x0ce30436      0b43           jsr @r3                     ;[?]     
    |       0x0ce30438      e364           mov r14,r4                           
    |       0x0ce3043a      d360           mov r13,r0                           
    |       0x0ce3043c      0900           nop                                  
    |       0x0ce3043e      e780           mov.b r0,@(0x7,r14)                  
    |       0x0ce30440      07e3           mov 0x07,r3                          
    |       0x0ce30442      e680           mov.b r0,@(0x6,r14)                  
    |       0x0ce30444      2490           mov.w @(0x48,PC),r0                  
    |       0x0ce30446      340e           mov.b r3,@(r0,r14)                   
    |       0x0ce30448      1670           add 0x16,r0                          
    |       0x0ce3044a      d40e           mov.b r13,@(r0,r14)                  
    |       0x0ce3044c      01e0           mov 0x01,r0                          
    `-----> 0x0ce3044e      264f           lds.l @r15+,pr                       
            0x0ce30450      f66d           mov.l @r15+,r13                      
            0x0ce30452      0b00           rts                                  
            0x0ce30454      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30456      e62f           mov.l r14,@-r15                      
            0x0ce30458      436e           mov r4,r14                           
            0x0ce3045a      224f           sts.l pr,@-r15                       
            0x0ce3045c      14d3           mov.l @(0x50,PC),r3                  
            0x0ce3045e      0b43           jsr @r3                     ;[?]     
            0x0ce30460      06e5           mov 0x06,r5                          
            0x0ce30462      0c60           extu.b r0,r0                         
            0x0ce30464      0820           tst r0,r0                            
        ,=< 0x0ce30466      038b           bf 0x0ce30470               ;[1]     
        |   0x0ce30468      264f           lds.l @r15+,pr                       
        |   0x0ce3046a      00e0           mov 0x00,r0                          
        |   0x0ce3046c      0b00           rts                                  
        |   0x0ce3046e      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30470      00e0           mov 0x00,r0                          
            0x0ce30472      e580           mov.b r0,@(0x5,r14)                  
            0x0ce30474      06e3           mov 0x06,r3                          
            0x0ce30476      e780           mov.b r0,@(0x7,r14)                  
            0x0ce30478      15e5           mov 0x15,r5                          
            0x0ce3047a      e680           mov.b r0,@(0x6,r14)                  
            0x0ce3047c      0890           mov.w @(0x10,PC),r0                  
            0x0ce3047e      340e           mov.b r3,@(r0,r14)                   
            0x0ce30480      07d3           mov.l @(0x1C,PC),r3                  
            0x0ce30482      0b43           jsr @r3                     ;[?]     
            0x0ce30484      e364           mov r14,r4                           
            0x0ce30486      01e0           mov 0x01,r0                          
            0x0ce30488      264f           lds.l @r15+,pr                       
            0x0ce3048a      0b00           rts                                  
            0x0ce3048c      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce3048e  0x0384 0x01e9 0x0394 0x038c 0x01f9 0x01fc 0x01d4
0x0ce3049c  0x8c055c3a 0x8c0530d8 0x0ce3234c 0x8c054e58  :\...0..L#..XN..       
0x0ce304ac  0x0ce32360 0x8c054da0 

;==============================================================================
            0x0ce304b4      e62f           mov.l r14,@-r15                      
            0x0ce304b6      436e           mov r4,r14                           
            0x0ce304b8      224f           sts.l pr,@-r15                       
            0x0ce304ba      3fd5           mov.l @(0xFC,PC),r5                  
            0x0ce304bc      7196           mov.w @(0xE2,PC),r6                  
            0x0ce304be      3fd3           mov.l @(0xFC,PC),r3                  
            0x0ce304c0      0b43           jsr @r3                     ;[?]     
            0x0ce304c2      ec36           add r14,r6                           
            0x0ce304c4      0c60           extu.b r0,r0                         
            0x0ce304c6      0820           tst r0,r0                            
        ,=< 0x0ce304c8      0889           bt 0x0ce304dc               ;[1]     
        |   0x0ce304ca      6b90           mov.w @(0xD6,PC),r0                  
        |   0x0ce304cc      ee03           mov.l @(r0,r14),r3                   
        |   0x0ce304ce      3062           mov.b @r3,r2                         
        |   0x0ce304d0      2822           tst r2,r2                            
       ,==< 0x0ce304d2      0389           bt 0x0ce304dc               ;[1]     
       ||   0x0ce304d4      6790           mov.w @(0xCE,PC),r0                  
       ||   0x0ce304d6      02e2           mov 0x02,r2                          
      ,===< 0x0ce304d8      11a0           bra 0x0ce304fe              ;[2]     
      |||   0x0ce304da      240e           mov.b r2,@(r0,r14)                   
      |``-> 0x0ce304dc      6496           mov.w @(0xC8,PC),r6                  
      |     0x0ce304de      38d5           mov.l @(0xE0,PC),r5                  
      |     0x0ce304e0      36d2           mov.l @(0xD8,PC),r2                  
      |     0x0ce304e2      ec36           add r14,r6                           
      |     0x0ce304e4      0b42           jsr @r2                     ;[?]     
      |     0x0ce304e6      e364           mov r14,r4                           
      |     0x0ce304e8      0c60           extu.b r0,r0                         
      |     0x0ce304ea      0820           tst r0,r0                            
      | ,=< 0x0ce304ec      0b89           bt 0x0ce30506               ;[3]     
      | |   0x0ce304ee      5990           mov.w @(0xB2,PC),r0                  
      | |   0x0ce304f0      ee02           mov.l @(r0,r14),r2                   
      | |   0x0ce304f2      2063           mov.b @r2,r3                         
      | |   0x0ce304f4      3823           tst r3,r3                            
      |,==< 0x0ce304f6      0689           bt 0x0ce30506               ;[3]     
      |||   0x0ce304f8      5590           mov.w @(0xAA,PC),r0                  
      |||   0x0ce304fa      03e3           mov 0x03,r3                          
      |||   0x0ce304fc      340e           mov.b r3,@(r0,r14)                   
      `---> 0x0ce304fe      264f           lds.l @r15+,pr                       
       ||   0x0ce30500      01e0           mov 0x01,r0                          
       ||   0x0ce30502      0b00           rts                                  
       ||   0x0ce30504      f66e           mov.l @r15+,r14                      
       ``-> 0x0ce30506      00e0           mov 0x00,r0                          
            0x0ce30508      264f           lds.l @r15+,pr                       
            0x0ce3050a      0b00           rts                                  
            0x0ce3050c      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce3050e      4c90           mov.w @(0x98,PC),r0                  
            0x0ce30510      4c03           mov.b @(r0,r4),r3                    
            0x0ce30512      3823           tst r3,r3                            
        ,=< 0x0ce30514      1189           bt 0x0ce3053a               ;[1]     
        |   0x0ce30516      4990           mov.w @(0x92,PC),r0                  
        |   0x0ce30518      02e3           mov 0x02,r3                          
        |   0x0ce3051a      3404           mov.b r3,@(r0,r4)                    
        |   0x0ce3051c      4790           mov.w @(0x8E,PC),r0                  
        |   0x0ce3051e      4d03           mov.w @(r0,r4),r3                    
        |   0x0ce30520      ff73           add 0xFF,r3                          
        |   0x0ce30522      3504           mov.w r3,@(r0,r4)                    
        |   0x0ce30524      3f63           exts.w r3,r3                         
        |   0x0ce30526      1143           cmp/pz r3                            
       ,==< 0x0ce30528      0789           bt 0x0ce3053a               ;[1]     
       ||   0x0ce3052a      3e90           mov.w @(0x7C,PC),r0                  
       ||   0x0ce3052c      00e3           mov 0x00,r3                          
       ||   0x0ce3052e      80e2           mov 0x80,r2                          
       ||   0x0ce30530      3404           mov.b r3,@(r0,r4)                    
       ||   0x0ce30532      3b90           mov.w @(0x76,PC),r0                  
       ||   0x0ce30534      3404           mov.b r3,@(r0,r4)                    
       ||   0x0ce30536      b070           add 0xB0,r0                          
       ||   0x0ce30538      2404           mov.b r2,@(r0,r4)                    
       ``-> 0x0ce3053a      3990           mov.w @(0x72,PC),r0                  
            0x0ce3053c      4c03           mov.b @(r0,r4),r3                    
            0x0ce3053e      3823           tst r3,r3                            
        ,=< 0x0ce30540      1a89           bt 0x0ce30578               ;[2]     
        |   0x0ce30542      4584           mov.b @(0x5,r4),r0                   
        |   0x0ce30544      0820           tst r0,r0                            
       ,==< 0x0ce30546      178b           bf 0x0ce30578               ;[2]     
       ||   0x0ce30548      3390           mov.w @(0x66,PC),r0                  
       ||   0x0ce3054a      4d02           mov.w @(r0,r4),r2                    
       ||   0x0ce3054c      ff72           add 0xFF,r2                          
       ||   0x0ce3054e      2504           mov.w r2,@(r0,r4)                    
       ||   0x0ce30550      2f62           exts.w r2,r2                         
       ||   0x0ce30552      2822           tst r2,r2                            
      ,===< 0x0ce30554      108b           bf 0x0ce30578               ;[2]     
      |||   0x0ce30556      2d90           mov.w @(0x5A,PC),r0                  
      |||   0x0ce30558      4c05           mov.b @(r0,r4),r5                    
      |||   0x0ce3055a      5c60           extu.b r5,r0                         
      |||   0x0ce3055c      1588           cmp/eq 0x15,r0                       
     ,====< 0x0ce3055e      048d           bt.s 0x0ce3056a             ;[3]     
     ||||   0x0ce30560      0365           mov r0,r5                            
     ||||   0x0ce30562      5360           mov r5,r0                            
     ||||   0x0ce30564      0900           nop                                  
     ||||   0x0ce30566      1d88           cmp/eq 0x1D,r0                       
    ,=====< 0x0ce30568      038b           bf 0x0ce30572               ;[4]     
    |`----> 0x0ce3056a      2290           mov.w @(0x44,PC),r0                  
    | |||   0x0ce3056c      01e3           mov 0x01,r3                          
    |,====< 0x0ce3056e      03a0           bra 0x0ce30578              ;[2]     
    |||||   0x0ce30570      3504           mov.w r3,@(r0,r4)                    
    `-----> 0x0ce30572      14d3           mov.l @(0x50,PC),r3                  
     ||||   0x0ce30574      2b43           jmp @r3                              
     ||||   0x0ce30576      0900           nop                                  
     ````-> 0x0ce30578      0b00           rts                                  
            0x0ce3057a      0900           nop                                  

;==============================================================================
            0x0ce3057c      5d60           extu.w r5,r0                         
            0x0ce3057e      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce30580      338b           bf 0x0ce305ea               ;[1]     
        |   0x0ce30582      11c7           mova @(0x44,PC),r0                   
        |   0x0ce30584      08f4           fmov @r0,fr4                         
        |   0x0ce30586      1390           mov.w @(0x26,PC),r0                  
        |   0x0ce30588      4c03           mov.b @(r0,r4),r3                    
        |   0x0ce3058a      3823           tst r3,r3                            
       ,==< 0x0ce3058c      1e8d           bt.s 0x0ce305cc             ;[2]     
       ||   0x0ce3058e      8df5           fldi0 fr5                            
       ||   0x0ce30590      60e0           mov 0x60,r0                          
       ||   0x0ce30592      57f4           fmov fr5,@(r0,r4)                    
       ||   0x0ce30594      68e0           mov 0x68,r0                          
       ||   0x0ce30596      57f4           fmov fr5,@(r0,r4)                    
       ||   0x0ce30598      5ce0           mov 0x5C,r0                          
       ||   0x0ce3059a      57f4           fmov fr5,@(r0,r4)                    
       ||   0x0ce3059c      6ce0           mov 0x6C,r0                          
      ,===< 0x0ce3059e      24a0           bra 0x0ce305ea              ;[1]     
      |||   0x0ce305a0      47f4           fmov fr4,@(r0,r4)                    
      |||   0x0ce305a2      6403           mov.b r6,@(r0,r3)                    

;##############################################################################
0x0ce305a4  0x040c 0x0258 0x036c 0x02b1 0x01ed 0x02a8 0x0201 0x02aa  ..X.l.......
0x0ce305b4  0x01d0 0x0000 
0x0ce305b8  0x0ce3231c 0x8c054e58 0x0ce3232c 0x0ce317da
0x0ce305c8 0xb6db 0xbf4d

;------------------------------------------------------------------------------  
            0x0ce305cc      60e0           mov 0x60,r0                          
            0x0ce305ce      8df2           fldi0 fr2                            
            0x0ce305d0      46f3           fmov @(r0,r4),fr3                    
            0x0ce305d2      24f3           fcmp/eq fr2,fr3                      
        ,=< 0x0ce305d4      068b           bf 0x0ce305e4               ;[1]     
        |   0x0ce305d6      57f4           fmov fr5,@(r0,r4)                    
        |   0x0ce305d8      68e0           mov 0x68,r0                          
        |   0x0ce305da      57f4           fmov fr5,@(r0,r4)                    
        |   0x0ce305dc      5ce0           mov 0x5C,r0                          
        |   0x0ce305de      57f4           fmov fr5,@(r0,r4)                    
        |   0x0ce305e0      6ce0           mov 0x6C,r0                          
        |   0x0ce305e2      47f4           fmov fr4,@(r0,r4)                    
        `-> 0x0ce305e4      45d3           mov.l @(0x114,PC),r3                 
            0x0ce305e6      2b43           jmp @r3                              
            0x0ce305e8      0900           nop  

;==============================================================================
            0x0ce305ea      45d3           mov.l @(0x114,PC),r3                 
            0x0ce305ec      2b43           jmp @r3                              
            0x0ce305ee      0900           nop  

;==============================================================================
            0x0ce305f0      e62f           mov.l r14,@-r15                      
            0x0ce305f2      d62f           mov.l r13,@-r15                      
            0x0ce305f4      224f           sts.l pr,@-r15                       
            0x0ce305f6      43d3           mov.l @(0x10C,PC),r3                 
            0x0ce305f8      0b43           jsr @r3                     ;[?]     
            0x0ce305fa      436e           mov r4,r14                           
            0x0ce305fc      7790           mov.w @(0xEE,PC),r0                  
            0x0ce305fe      ec02           mov.b @(r0,r14),r2                   
            0x0ce30600      ea70           add 0xEA,r0                          
            0x0ce30602      ec01           mov.b @(r0,r14),r1                   
            0x0ce30604      2c62           extu.b r2,r2                         
            0x0ce30606      7390           mov.w @(0xE6,PC),r0                  
            0x0ce30608      2363           mov r2,r3                            
            0x0ce3060a      0042           shll r2                              
            0x0ce3060c      1c61           extu.b r1,r1                         
            0x0ce3060e      3c32           add r3,r2                            
            0x0ce30610      3dd3           mov.l @(0xF4,PC),r3                  
            0x0ce30612      0841           shll2 r1                             
            0x0ce30614      0842           shll2 r2                             
            0x0ce30616      1c32           add r1,r2                            
            0x0ce30618      3c32           add r3,r2                            
            0x0ce3061a      260e           mov.l r2,@(r0,r14)                   
            0x0ce3061c      6990           mov.w @(0xD2,PC),r0                  
            0x0ce3061e      ec01           mov.b @(r0,r14),r1                   
            0x0ce30620      bf70           add 0xBF,r0                          
            0x0ce30622      140e           mov.b r1,@(r0,r14)                   
            0x0ce30624      5270           add 0x52,r0                          
            0x0ce30626      ec0d           mov.b @(r0,r14),r13                  
            0x0ce30628      0570           add 0x05,r0                          
            0x0ce3062a      ec01           mov.b @(r0,r14),r1                   
            0x0ce3062c      d362           mov r13,r2                           
            0x0ce3062e      004d           shll r13                             
            0x0ce30630      0842           shll2 r2                             
            0x0ce30632      2c3d           add r2,r13                           
            0x0ce30634      1362           mov r1,r2                            
            0x0ce30636      0041           shll r1                              
            0x0ce30638      2c31           add r2,r1                            
            0x0ce3063a      1c3d           add r1,r13                           
            0x0ce3063c      ea70           add 0xEA,r0                          
            0x0ce3063e      ec02           mov.b @(r0,r14),r2                   
            0x0ce30640      b970           add 0xB9,r0                          
            0x0ce30642      00e4           mov 0x00,r4                          
            0x0ce30644      2c3d           add r2,r13                           
            0x0ce30646      31d2           mov.l @(0xC4,PC),r2                  
            0x0ce30648      d40e           mov.b r13,@(r0,r14)                  
            0x0ce3064a      0b70           add 0x0B,r0                          
            0x0ce3064c      450e           mov.w r4,@(r0,r14)                   
            0x0ce3064e      f270           add 0xF2,r0                          
            0x0ce30650      440e           mov.b r4,@(r0,r14)                   
            0x0ce30652      2670           add 0x26,r0                          
            0x0ce30654      460e           mov.l r4,@(r0,r14)                   
            0x0ce30656      e284           mov.b @(0x2,r14),r0                  
            0x0ce30658      2261           mov.l @r2,r1                         
            0x0ce3065a      0c60           extu.b r0,r0                         
            0x0ce3065c      0040           shll r0                              
            0x0ce3065e      7c71           add 0x7C,r1                          
            0x0ce30660      1d03           mov.w @(r0,r1),r3                    
            0x0ce30662      0173           add 0x01,r3                          
            0x0ce30664      3501           mov.w r3,@(r0,r1)                    
            0x0ce30666      4490           mov.w @(0x88,PC),r0                  
            0x0ce30668      ec06           mov.b @(r0,r14),r6                   
            0x0ce3066a      1170           add 0x11,r0                          
            0x0ce3066c      ec05           mov.b @(r0,r14),r5                   
            0x0ce3066e      0570           add 0x05,r0                          
            0x0ce30670      ec03           mov.b @(r0,r14),r3                   
            0x0ce30672      5c65           extu.b r5,r5                         
            0x0ce30674      0045           shll r5                              
            0x0ce30676      3c35           add r3,r5                            
            0x0ce30678      25d3           mov.l @(0x94,PC),r3                  
            0x0ce3067a      0775           add 0x07,r5                          
            0x0ce3067c      0b43           jsr @r3                     ;[?]     
            0x0ce3067e      e364           mov r14,r4                           
            0x0ce30680      24d0           mov.l @(0x90,PC),r0                  
            0x0ce30682      dc6d           extu.b r13,r13                       
            0x0ce30684      dc05           mov.b @(r0,r13),r5                   
            0x0ce30686      5c63           extu.b r5,r3                         
            0x0ce30688      3823           tst r3,r3                            
        ,=< 0x0ce3068a      0589           bt 0x0ce30698               ;[1]     
        |   0x0ce3068c      264f           lds.l @r15+,pr                       
        |   0x0ce3068e      22d2           mov.l @(0x88,PC),r2                  
        |   0x0ce30690      e364           mov r14,r4                           
        |   0x0ce30692      f66d           mov.l @r15+,r13                      
        |   0x0ce30694      2b42           jmp @r2                              
        |   0x0ce30696      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30698      264f           lds.l @r15+,pr                       
            0x0ce3069a      f66d           mov.l @r15+,r13                      
            0x0ce3069c      0b00           rts                                  
            0x0ce3069e      f66e           mov.l @r15+,r14                      

;==============================================================================

            0x0ce306a0      2890           mov.w @(0x50,PC),r0                  
            0x0ce306a2      e62f           mov.l r14,@-r15                      
            0x0ce306a4      436e           mov r4,r14                           
            0x0ce306a6      2692           mov.w @(0x4C,PC),r2                  
            0x0ce306a8      224f           sts.l pr,@-r15                       
            0x0ce306aa      ed03           mov.w @(r0,r14),r3                   
            0x0ce306ac      17d5           mov.l @(0x5C,PC),r5                  
            0x0ce306ae      3d63           extu.w r3,r3                         
            0x0ce306b0      2823           tst r2,r3                            
        ,=< 0x0ce306b2      338d           bt.s 0x0ce3071c             ;[1]     
        |   0x0ce306b4      00e4           mov 0x00,r4                          
        |   0x0ce306b6      1c90           mov.w @(0x38,PC),r0                  
        |   0x0ce306b8      ec03           mov.b @(r0,r14),r3                   
        |   0x0ce306ba      3823           tst r3,r3                            
       ,==< 0x0ce306bc      2e8b           bf 0x0ce3071c               ;[1]     
       ||   0x0ce306be      1690           mov.w @(0x2C,PC),r0                  
       ||   0x0ce306c0      ec01           mov.b @(r0,r14),r1                   
       ||   0x0ce306c2      1821           tst r1,r1                            
      ,===< 0x0ce306c4      2a89           bt 0x0ce3071c               ;[1]     
      |||   0x0ce306c6      1790           mov.w @(0x2E,PC),r0                  
      |||   0x0ce306c8      12e1           mov 0x12,r1                          
      |||   0x0ce306ca      03e6           mov 0x03,r6                          
      |||   0x0ce306cc      140e           mov.b r1,@(r0,r14)                   
      |||   0x0ce306ce      0b70           add 0x0B,r0                          
      |||   0x0ce306d0      450e           mov.w r4,@(r0,r14)                   
      |||   0x0ce306d2      f270           add 0xF2,r0                          
      |||   0x0ce306d4      440e           mov.b r4,@(r0,r14)                   
      |||   0x0ce306d6      2670           add 0x26,r0                          
      |||   0x0ce306d8      460e           mov.l r4,@(r0,r14)                   
      |||   0x0ce306da      e284           mov.b @(0x2,r14),r0                  
      |||   0x0ce306dc      5263           mov.l @r5,r3                         
      |||   0x0ce306de      0c60           extu.b r0,r0                         
      |||   0x0ce306e0      0040           shll r0                              
      |||   0x0ce306e2      7c73           add 0x7C,r3                          
      |||   0x0ce306e4      3d02           mov.w @(r0,r3),r2                    
      |||   0x0ce306e6      0172           add 0x01,r2                          
      |||   0x0ce306e8      2503           mov.w r2,@(r0,r3)                    
     ,====< 0x0ce306ea      35a0           bra 0x0ce30758              ;[2]     
     ||||   0x0ce306ec      0ce5           mov 0x0C,r5                          

;##############################################################################
0x0ce306ee 0x01fe 0x03f4 0x01e8 0x01fa 0x1000 0x01a1 0x0000
0x0ce306fc  0x8c05176e 0x8c051648 0x8c052b4c 0x0ce322c4
0x0ce3070c  0x8c2896b0 0x8c034e8c 0x0ce32440 0x8c04223a 

;------------------------------------------------------------------------------
            0x0ce3071c      7590           mov.w @(0xEA,PC),r0                  
            0x0ce3071e      ec03           mov.b @(r0,r14),r3                   
            0x0ce30720      ea70           add 0xEA,r0                          
            0x0ce30722      ec01           mov.b @(r0,r14),r1                   
            0x0ce30724      b970           add 0xB9,r0                          
            0x0ce30726      3362           mov r3,r2                            
            0x0ce30728      0043           shll r3                              
            0x0ce3072a      2c33           add r2,r3                            
            0x0ce3072c      1c33           add r1,r3                            
            0x0ce3072e      0c73           add 0x0C,r3                          
            0x0ce30730      340e           mov.b r3,@(r0,r14)                   
            0x0ce30732      0b70           add 0x0B,r0                          
            0x0ce30734      450e           mov.w r4,@(r0,r14)                   
            0x0ce30736      f270           add 0xF2,r0                          
            0x0ce30738      440e           mov.b r4,@(r0,r14)                   
            0x0ce3073a      2670           add 0x26,r0                          
            0x0ce3073c      460e           mov.l r4,@(r0,r14)                   
            0x0ce3073e      e284           mov.b @(0x2,r14),r0                  
            0x0ce30740      5263           mov.l @r5,r3                         
            0x0ce30742      0c60           extu.b r0,r0                         
            0x0ce30744      0040           shll r0                              
            0x0ce30746      7c73           add 0x7C,r3                          
            0x0ce30748      3d02           mov.w @(r0,r3),r2                    
            0x0ce3074a      0172           add 0x01,r2                          
            0x0ce3074c      2503           mov.w r2,@(r0,r3)                    
            0x0ce3074e      5d90           mov.w @(0xBA,PC),r0                  
            0x0ce30750      ec06           mov.b @(r0,r14),r6                   
            0x0ce30752      1670           add 0x16,r0                          
            0x0ce30754      ec05           mov.b @(r0,r14),r5                   
            0x0ce30756      0b75           add 0x0B,r5                          
            0x0ce30758      2fd3           mov.l @(0xBC,PC),r3                  
            0x0ce3075a      0b43           jsr @r3                     ;[?]     
            0x0ce3075c      e364           mov r14,r4                           
            0x0ce3075e      5490           mov.w @(0xA8,PC),r0                  
            0x0ce30760      ec02           mov.b @(r0,r14),r2                   
            0x0ce30762      ea70           add 0xEA,r0                          
            0x0ce30764      ec01           mov.b @(r0,r14),r1                   
            0x0ce30766      2c62           extu.b r2,r2                         
            0x0ce30768      5190           mov.w @(0xA2,PC),r0                  
            0x0ce3076a      2363           mov r2,r3                            
            0x0ce3076c      0042           shll r2                              
            0x0ce3076e      1c61           extu.b r1,r1                         
            0x0ce30770      3c32           add r3,r2                            
            0x0ce30772      2ad3           mov.l @(0xA8,PC),r3                  
            0x0ce30774      0841           shll2 r1                             
            0x0ce30776      0842           shll2 r2                             
            0x0ce30778      1c32           add r1,r2                            
            0x0ce3077a      3c32           add r3,r2                            
            0x0ce3077c      260e           mov.l r2,@(r0,r14)                   
            0x0ce3077e      4590           mov.w @(0x8A,PC),r0                  
            0x0ce30780      ec01           mov.b @(r0,r14),r1                   
            0x0ce30782      bf70           add 0xBF,r0                          
            0x0ce30784      140e           mov.b r1,@(r0,r14)                   
            0x0ce30786      5770           add 0x57,r0                          
            0x0ce30788      ec02           mov.b @(r0,r14),r2                   
            0x0ce3078a      2822           tst r2,r2                            
        ,=< 0x0ce3078c      0589           bt 0x0ce3079a               ;[1]     
        |   0x0ce3078e      3d90           mov.w @(0x7A,PC),r0                  
        |   0x0ce30790      23d2           mov.l @(0x8C,PC),r2                  
        |   0x0ce30792      ec05           mov.b @(r0,r14),r5                   
        |   0x0ce30794      1475           add 0x14,r5                          
        |   0x0ce30796      0b42           jsr @r2                     ;[?]     
        |   0x0ce30798      e364           mov r14,r4                           
        `-> 0x0ce3079a      3690           mov.w @(0x6C,PC),r0                  
            0x0ce3079c      ec03           mov.b @(r0,r14),r3                   
            0x0ce3079e      3823           tst r3,r3                            
        ,=< 0x0ce307a0      088b           bf 0x0ce307b4               ;[1]     
        |   0x0ce307a2      3590           mov.w @(0x6A,PC),r0                  
        |   0x0ce307a4      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce307a6      0fc8           tst 0x0F,r0                          
       ,==< 0x0ce307a8      0c89           bt 0x0ce307c4               ;[2]     
       ||   0x0ce307aa      3190           mov.w @(0x62,PC),r0                  
       ||   0x0ce307ac      ec02           mov.b @(r0,r14),r2                   
       ||   0x0ce307ae      ff72           add 0xFF,r2                          
      ,===< 0x0ce307b0      08a0           bra 0x0ce307c4              ;[2]     
      |||   0x0ce307b2      240e           mov.b r2,@(r0,r14)                   
      ||`-> 0x0ce307b4      2c90           mov.w @(0x58,PC),r0                  
      ||    0x0ce307b6      ec00           mov.b @(r0,r14),r0                   
      ||    0x0ce307b8      f0c8           tst 0xF0,r0                          
      ||,=< 0x0ce307ba      0389           bt 0x0ce307c4               ;[2]     
      |||   0x0ce307bc      2890           mov.w @(0x50,PC),r0                  
      |||   0x0ce307be      ec02           mov.b @(r0,r14),r2                   
      |||   0x0ce307c0      f072           add 0xF0,r2                          
      |||   0x0ce307c2      240e           mov.b r2,@(r0,r14)                   
      ```-> 0x0ce307c4      264f           lds.l @r15+,pr                       
            0x0ce307c6      0b00           rts                                  
            0x0ce307c8      f66e           mov.l @r15+,r14                

;==============================================================================
        :   0x0ce307ca      2290           mov.w @(0x44,PC),r0                  
        :   0x0ce307cc      4c03           mov.b @(r0,r4),r3                    
        :   0x0ce307ce      3823           tst r3,r3                            
       ,==< 0x0ce307d0      0d8b           bf 0x0ce307ee               ;[1]     
       |:   0x0ce307d2      1a90           mov.w @(0x34,PC),r0                  
       |:   0x0ce307d4      4c01           mov.b @(r0,r4),r1                    
       |:   0x0ce307d6      1821           tst r1,r1                            
      ,===< 0x0ce307d8      058b           bf 0x0ce307e6               ;[2]     
      ||:   0x0ce307da      1990           mov.w @(0x32,PC),r0                  
      ||:   0x0ce307dc      4c00           mov.b @(r0,r4),r0                    
      ||:   0x0ce307de      0fc8           tst 0x0F,r0                          
     ,====< 0x0ce307e0      0789           bt 0x0ce307f2               ;[3]     
    ,=====< 0x0ce307e2      04a0           bra 0x0ce307ee              ;[1]     
    ||||:   0x0ce307e4      0900           nop                                  
    ||`---> 0x0ce307e6      1390           mov.w @(0x26,PC),r0                  
    || |:   0x0ce307e8      4c00           mov.b @(r0,r4),r0                    
    || |:   0x0ce307ea      f0c8           tst 0xF0,r0
    ||,===< 0x0ce307ec      0189           bt 0x0ce307f2
    `--``=< 0x0ce307ee      57af           bra 0x0ce306a0
     ||     0x0ce307f0      0900           nop
     ``---> 0x0ce307f2      0b00           rts
            0x0ce307f4      0900           nop

;==============================================================================
            0x0ce307f6      0d90           mov.w @(0x1A,PC),r0                  
            0x0ce307f8      4363           mov r4,r3                            
            0x0ce307fa      462f           mov.l r4,@-r15                       
            0x0ce307fc      3c02           mov.b @(r0,r3),r2                    
            0x0ce307fe      09d0           mov.l @(0x24,PC),r0                  
            0x0ce30800      2c62           extu.b r2,r2                         
            0x0ce30802      0842           shll2 r2                             
            0x0ce30804      2e03           mov.l @(r0,r2),r3                    
            0x0ce30806      2b43           jmp @r3                              
            0x0ce30808      047f           add 0x04,r15                         

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce3080a 0x01fe 0x01e8 0x03f4 0x01d6 0x0201 0x01ff 0x0000
0x0ce30818  0x8c034e8c 0x0ce322dc 0x8c04223a 0x0ce3244c

;==============================================================================
            0x0ce30828      5f90           mov.w @(0xBE,PC),r0                  
            0x0ce3082a      e62f           mov.l r14,@-r15                      
            0x0ce3082c      436e           mov r4,r14                           
            0x0ce3082e      224f           sts.l pr,@-r15                       
            0x0ce30830      ec00           mov.b @(r0,r14),r0                   
            0x0ce30832      0c60           extu.b r0,r0                         
            0x0ce30834      0188           cmp/eq 0x01,r0                       
        ,=< 0x0ce30836      118b           bf 0x0ce3085c               ;[1]     
        |   0x0ce30838      2ed2           mov.l @(0xB8,PC),r2                  
        |   0x0ce3083a      0b42           jsr @r2                     ;[?]     
        |   0x0ce3083c      e364           mov r14,r4                           
        |   0x0ce3083e      0e60           exts.b r0,r0                         
        |   0x0ce30840      1140           cmp/pz r0                            
       ,==< 0x0ce30842      118b           bf 0x0ce30868               ;[2]     
       ||   0x0ce30844      5290           mov.w @(0xA4,PC),r0                  
       ||   0x0ce30846      ec02           mov.b @(r0,r14),r2                   
       ||   0x0ce30848      2822           tst r2,r2                            
      ,===< 0x0ce3084a      1289           bt 0x0ce30872               ;[3]     
      |||   0x0ce3084c      00e3           mov 0x00,r3                          
      |||   0x0ce3084e      e364           mov r14,r4                           
      |||   0x0ce30850      340e           mov.b r3,@(r0,r14)                   
      |||   0x0ce30852      01e5           mov 0x01,r5                          
      |||   0x0ce30854      264f           lds.l @r15+,pr                       
      |||   0x0ce30856      28d3           mov.l @(0xA0,PC),r3                  
      |||   0x0ce30858      2b43           jmp @r3                              
      |||   0x0ce3085a      f66e           mov.l @r15+,r14                      
      ||`-> 0x0ce3085c      25d3           mov.l @(0x94,PC),r3                  
      ||    0x0ce3085e      0b43           jsr @r3                     ;[?]     
      ||    0x0ce30860      e364           mov r14,r4                           
      ||    0x0ce30862      0e60           exts.b r0,r0                         
      ||    0x0ce30864      1140           cmp/pz r0                            
      ||,=< 0x0ce30866      0489           bt 0x0ce30872               ;[3]     
      |`--> 0x0ce30868      264f           lds.l @r15+,pr                       
      | |   0x0ce3086a      24d3           mov.l @(0x90,PC),r3                  
      | |   0x0ce3086c      e364           mov r14,r4                           
      | |   0x0ce3086e      2b43           jmp @r3                              
      | |   0x0ce30870      f66e           mov.l @r15+,r14                      
      `-`-> 0x0ce30872      264f           lds.l @r15+,pr                       
            0x0ce30874      0b00           rts                                  
            0x0ce30876      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30878      3790           mov.w @(0x6E,PC),r0                  
            0x0ce3087a      e62f           mov.l r14,@-r15                      
            0x0ce3087c      436e           mov r4,r14                           
            0x0ce3087e      d62f           mov.l r13,@-r15                      
            0x0ce30880      c62f           mov.l r12,@-r15                      
            0x0ce30882      224f           sts.l pr,@-r15                       
            0x0ce30884      ec00           mov.b @(r0,r14),r0                   
            0x0ce30886      1bdc           mov.l @(0x6C,PC),r12                 
            0x0ce30888      0c60           extu.b r0,r0                         
            0x0ce3088a      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce3088c      0189           bt 0x0ce30892               ;[1]     
       ,==< 0x0ce3088e      90a0           bra 0x0ce309b2              ;[2]     
       ||   0x0ce30890      0900           nop                                  
       |`-> 0x0ce30892      2c90           mov.w @(0x58,PC),r0                  
       |    0x0ce30894      ec00           mov.b @(r0,r14),r0                   
       |    0x0ce30896      0c60           extu.b r0,r0                         
       |    0x0ce30898      0188           cmp/eq 0x01,r0                       
       |,=< 0x0ce3089a      698f           bf.s 0x0ce30970             ;[3]     
       ||   0x0ce3089c      00ed           mov 0x00,r13                         
       ||   0x0ce3089e      e684           mov.b @(0x6,r14),r0                  
       ||   0x0ce308a0      0820           tst r0,r0                            
      ,===< 0x0ce308a2      318b           bf 0x0ce30908               ;[4]     
      |||   0x0ce308a4      0b4c           jsr @r12                    ;[?]     
      |||   0x0ce308a6      e364           mov r14,r4                           
      |||   0x0ce308a8      2090           mov.w @(0x40,PC),r0                  
      |||   0x0ce308aa      ec03           mov.b @(r0,r14),r3                   
      |||   0x0ce308ac      3823           tst r3,r3                            
     ,====< 0x0ce308ae      018b           bf 0x0ce308b4               ;[5]     
    ,=====< 0x0ce308b0      8ba0           bra 0x0ce309ca              ;[6]     
    |||||   0x0ce308b2      0900           nop                                  
    |`----> 0x0ce308b4      d40e           mov.b r13,@(r0,r14)                  
    | |||   0x0ce308b6      e684           mov.b @(0x6,r14),r0                  
    | |||   0x0ce308b8      0170           add 0x01,r0                          
    | |||   0x0ce308ba      e680           mov.b r0,@(0x6,r14)                  
    | |||   0x0ce308bc      04e0           mov 0x04,r0                          
    | |||   0x0ce308be      ef81           mov.w r0,@(0x1E,r14)                 
    | |||   0x0ce308c0      0fc7           mova @(0x3C,PC),r0                   
    | |||   0x0ce308c2      08f3           fmov @r0,fr3                         
    | |||   0x0ce308c4      5ce0           mov 0x5C,r0                          
    | |||   0x0ce308c6      37fe           fmov fr3,@(r0,r14)                   
    | |||   0x0ce308c8      0ec7           mova @(0x38,PC),r0                   
    | |||   0x0ce308ca      08f3           fmov @r0,fr3                         
    | |||   0x0ce308cc      68e0           mov 0x68,r0                          
    | |||   0x0ce308ce      37fe           fmov fr3,@(r0,r14)                   
    | |||   0x0ce308d0      0e90           mov.w @(0x1C,PC),r0                  
    | |||   0x0ce308d2      ed03           mov.w @(r0,r14),r3                   
    | |||   0x0ce308d4      3823           tst r3,r3                            
    |,====< 0x0ce308d6      788b           bf 0x0ce309ca               ;[6]     
    |||||   0x0ce308d8      5ce0           mov 0x5C,r0                          
    |||||   0x0ce308da      e6f3           fmov @(r0,r14),fr3                   
    |||||   0x0ce308dc      4df3           fneg fr3                             
    |||||   0x0ce308de      37fe           fmov fr3,@(r0,r14)                   
    |||||   0x0ce308e0      68e0           mov 0x68,r0                          
    |||||   0x0ce308e2      e6f3           fmov @(r0,r14),fr3                   
    |||||   0x0ce308e4      4df3           fneg fr3                             
   ,======< 0x0ce308e6      70a0           bra 0x0ce309ca              ;[6]     
   ||||||   0x0ce308e8      37fe           fmov fr3,@(r0,r14)                   

;##############################################################################
0x0ce308ea 0x01e8 0x0141 0x01f9 0x0130 0x0000
0x0ce308f4  0x8c034dee 0x8c09cfd0 0x8c051648 0x41055555  .M......H...UU.A       
0x0ce30904  0xbe555555

;------------------------------------------------------------------------------
            0x0ce30908      e684           mov.b @(0x6,r14),r0                  
            0x0ce3090a      0c60           extu.b r0,r0                         
            0x0ce3090c      0188           cmp/eq 0x01,r0                       
        ,=< 0x0ce3090e      508b           bf 0x0ce309b2               ;[1]     
        |   0x0ce30910      ef85           mov.w @(0x1E,r14),r0                 
        |   0x0ce30912      ff70           add 0xFF,r0                          
        |   0x0ce30914      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce30916      0f60           exts.w r0,r0                         
        |   0x0ce30918      1140           cmp/pz r0                            
       ,==< 0x0ce3091a      0589           bt 0x0ce30928               ;[2]     
       ||   0x0ce3091c      37d3           mov.l @(0xDC,PC),r3                  
       ||   0x0ce3091e      06e0           mov 0x06,r0                          
       ||   0x0ce30920      00e5           mov 0x00,r5                          
       ||   0x0ce30922      ef81           mov.w r0,@(0x1E,r14)                 
       ||   0x0ce30924      0b43           jsr @r3                     ;[?]     
       ||   0x0ce30926      e364           mov r14,r4                           
       `--> 0x0ce30928      0b4c           jsr @r12                    ;[?]     
        |   0x0ce3092a      e364           mov r14,r4                           
        |   0x0ce3092c      5ce1           mov 0x5C,r1                          
        |   0x0ce3092e      ec31           add r14,r1                           
        |   0x0ce30930      34e0           mov 0x34,r0                          
        |   0x0ce30932      18f3           fmov @r1,fr3                         
        |   0x0ce30934      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce30936      68e1           mov 0x68,r1                          
        |   0x0ce30938      ec31           add r14,r1                           
        |   0x0ce3093a      30f2           fadd fr3,fr2                         
        |   0x0ce3093c      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce3093e      5ce0           mov 0x5C,r0                          
        |   0x0ce30940      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce30942      18f3           fmov @r1,fr3                         
        |   0x0ce30944      30f2           fadd fr3,fr2                         
        |   0x0ce30946      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce30948      68e0           mov 0x68,r0                          
        |   0x0ce3094a      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce3094c      5ce0           mov 0x5C,r0                          
        |   0x0ce3094e      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce30950      32f2           fmul fr3,fr2                         
        |   0x0ce30952      8df3           fldi0 fr3                            
        |   0x0ce30954      25f3           fcmp/gt fr2,fr3                      
       ,==< 0x0ce30956      3889           bt 0x0ce309ca               ;[3]     
       ||   0x0ce30958      e684           mov.b @(0x6,r14),r0                  
       ||   0x0ce3095a      03e6           mov 0x03,r6                          
       ||   0x0ce3095c      28d3           mov.l @(0xA0,PC),r3                  
       ||   0x0ce3095e      e364           mov r14,r4                           
       ||   0x0ce30960      0170           add 0x01,r0                          
       ||   0x0ce30962      e680           mov.b r0,@(0x6,r14)                  
       ||   0x0ce30964      0ae5           mov 0x0A,r5                          
       ||   0x0ce30966      264f           lds.l @r15+,pr                       
       ||   0x0ce30968      f66c           mov.l @r15+,r12                      
       ||   0x0ce3096a      f66d           mov.l @r15+,r13                      
       ||   0x0ce3096c      2b43           jmp @r3                              
       ||   0x0ce3096e      f66e           mov.l @r15+,r14                      
       ||   0x0ce30970      0b4c           jsr @r12                    ;[?]     
       ||   0x0ce30972      e364           mov r14,r4                           
       ||   0x0ce30974      0e60           exts.b r0,r0                         
       ||   0x0ce30976      1140           cmp/pz r0                            
      ,===< 0x0ce30978      208b           bf 0x0ce309bc               ;[4]     
      |||   0x0ce3097a      3b90           mov.w @(0x76,PC),r0                  
      |||   0x0ce3097c      ec03           mov.b @(r0,r14),r3                   
      |||   0x0ce3097e      3823           tst r3,r3                            
     ,====< 0x0ce30980      2389           bt 0x0ce309ca               ;[3]     
     ||||   0x0ce30982      20d3           mov.l @(0x80,PC),r3                  
     ||||   0x0ce30984      16e5           mov 0x16,r5                          
     ||||   0x0ce30986      d40e           mov.b r13,@(r0,r14)                  
     ||||   0x0ce30988      0b43           jsr @r3                     ;[?]     
     ||||   0x0ce3098a      e364           mov r14,r4                           
     ||||   0x0ce3098c      3390           mov.w @(0x66,PC),r0                  
     ||||   0x0ce3098e      19e2           mov 0x19,r2                          
     ||||   0x0ce30990      1dd3           mov.l @(0x74,PC),r3                  
     ||||   0x0ce30992      240e           mov.b r2,@(r0,r14)                   
     ||||   0x0ce30994      0b70           add 0x0B,r0                          
     ||||   0x0ce30996      d50e           mov.w r13,@(r0,r14)                  
     ||||   0x0ce30998      f270           add 0xF2,r0                          
     ||||   0x0ce3099a      d40e           mov.b r13,@(r0,r14)                  
     ||||   0x0ce3099c      2670           add 0x26,r0                          
     ||||   0x0ce3099e      d60e           mov.l r13,@(r0,r14)                  
     ||||   0x0ce309a0      e284           mov.b @(0x2,r14),r0                  
     ||||   0x0ce309a2      3262           mov.l @r3,r2                         
     ||||   0x0ce309a4      0c60           extu.b r0,r0                         
     ||||   0x0ce309a6      0040           shll r0                              
     ||||   0x0ce309a8      7c72           add 0x7C,r2                          
     ||||   0x0ce309aa      2d01           mov.w @(r0,r2),r1                    
     ||||   0x0ce309ac      0171           add 0x01,r1                          
    ,=====< 0x0ce309ae      0ca0           bra 0x0ce309ca              ;[3]     
    |||||   0x0ce309b0      1502           mov.w r1,@(r0,r2)                    
    ||||`-> 0x0ce309b2      0b4c           jsr @r12                    ;[?]     
    ||||    0x0ce309b4      e364           mov r14,r4                           
    ||||    0x0ce309b6      0e60           exts.b r0,r0                         
    ||||    0x0ce309b8      1140           cmp/pz r0                            
    ||||,=< 0x0ce309ba      0689           bt 0x0ce309ca               ;[3]     
    ||`---> 0x0ce309bc      264f           lds.l @r15+,pr                       
    || ||   0x0ce309be      13d3           mov.l @(0x4C,PC),r3                  
    || ||   0x0ce309c0      e364           mov r14,r4                           
    || ||   0x0ce309c2      f66c           mov.l @r15+,r12                      
    || ||   0x0ce309c4      f66d           mov.l @r15+,r13                      
    || ||   0x0ce309c6      2b43           jmp @r3                              
    || ||   0x0ce309c8      f66e           mov.l @r15+,r14                      
    ``-``-> 0x0ce309ca      264f           lds.l @r15+,pr                       
            0x0ce309cc      f66c           mov.l @r15+,r12                      
            0x0ce309ce      f66d           mov.l @r15+,r13                      
            0x0ce309d0      0b00           rts                                  
            0x0ce309d2      f66e           mov.l @r15+,r14       

;==============================================================================
            0x0ce309d4      1090           mov.w @(0x20,PC),r0                  
            0x0ce309d6      e62f           mov.l r14,@-r15                      
            0x0ce309d8      436e           mov r4,r14                           
            0x0ce309da      224f           sts.l pr,@-r15                       
            0x0ce309dc      ec00           mov.b @(r0,r14),r0                   
            0x0ce309de      0c60           extu.b r0,r0                         
            0x0ce309e0      0388           cmp/eq 0x03,r0                       
        ,=< 0x0ce309e2      1589           bt 0x0ce30a10               ;[1]     
        |   0x0ce309e4      0088           cmp/eq 0x00,r0                       
       ,==< 0x0ce309e6      1689           bt 0x0ce30a16               ;[2]     
       ||   0x0ce309e8      0288           cmp/eq 0x02,r0                       
      ,===< 0x0ce309ea      3f89           bt 0x0ce30a6c               ;[3]     
      |||   0x0ce309ec      0188           cmp/eq 0x01,r0                       
     ,====< 0x0ce309ee      4789           bt 0x0ce30a80               ;[4]     
    ,=====< 0x0ce309f0      60a0           bra 0x0ce30ab4              ;[5]     
    |||||   0x0ce309f2      0900           nop                                  

;##############################################################################
0x0ce309f4 0x0141 0x01a1 0x01ff 0x0000
0x0ce309fc  0x8c0e4adc 0x8c034e8c 0x8c04223a 0x8c2896b0  .J...N..:"....(.       
0x0ce30a0c  0x8c051648

;------------------------------------------------------------------------------
            0x0ce30a10      2bd3           mov.l @(0xAC,PC),r3                  
            0x0ce30a12      0b43           jsr @r3                     ;[?]     
            0x0ce30a14      e364           mov r14,r4                           
            0x0ce30a16      5ce1           mov 0x5C,r1                          
            0x0ce30a18      2ad3           mov.l @(0xA8,PC),r3                  
            0x0ce30a1a      ec31           add r14,r1                           
            0x0ce30a1c      34e0           mov 0x34,r0                          
            0x0ce30a1e      18f3           fmov @r1,fr3                         
            0x0ce30a20      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30a22      68e1           mov 0x68,r1                          
            0x0ce30a24      ec31           add r14,r1                           
            0x0ce30a26      30f2           fadd fr3,fr2                         
            0x0ce30a28      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30a2a      5ce0           mov 0x5C,r0                          
            0x0ce30a2c      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30a2e      18f3           fmov @r1,fr3                         
            0x0ce30a30      60e1           mov 0x60,r1                          
            0x0ce30a32      ec31           add r14,r1                           
            0x0ce30a34      30f2           fadd fr3,fr2                         
            0x0ce30a36      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30a38      38e0           mov 0x38,r0                          
            0x0ce30a3a      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30a3c      18f3           fmov @r1,fr3                         
            0x0ce30a3e      6ce1           mov 0x6C,r1                          
            0x0ce30a40      ec31           add r14,r1                           
            0x0ce30a42      30f2           fadd fr3,fr2                         
            0x0ce30a44      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30a46      60e0           mov 0x60,r0                          
            0x0ce30a48      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30a4a      18f3           fmov @r1,fr3                         
            0x0ce30a4c      30f2           fadd fr3,fr2                         
            0x0ce30a4e      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30a50      0b43           jsr @r3                     ;[?]     
            0x0ce30a52      e364           mov r14,r4                           
            0x0ce30a54      3190           mov.w @(0x62,PC),r0                  
            0x0ce30a56      ec02           mov.b @(r0,r14),r2                   
            0x0ce30a58      2822           tst r2,r2                            
      ,===< 0x0ce30a5a      038b           bf 0x0ce30a64               ;[1]     
      |     0x0ce30a5c      264f           lds.l @r15+,pr                       
      |::   0x0ce30a5e      e364           mov r14,r4                           
      |:`=< 0x0ce30a60      e2ae           bra 0x0ce30828              ;[1]     
      `---> 0x0ce30a62      f66e           mov.l @r15+,r14                      
       :    0x0ce30a64      264f           lds.l @r15+,pr                       
       :    0x0ce30a66      e364           mov r14,r4                           
       `==< 0x0ce30a68      06af           bra 0x0ce30878              ;[2]     
            0x0ce30a6a      f66e           mov.l @r15+,r14                      

            0x0ce30a6c      2690           mov.w @(0x4C,PC),r0                  
            0x0ce30a6e      ec03           mov.b @(r0,r14),r3                   
            0x0ce30a70      3823           tst r3,r3                            
        ,=< 0x0ce30a72      058b           bf 0x0ce30a80               ;[1]     
        |   0x0ce30a74      14d3           mov.l @(0x50,PC),r3                  
        |   0x0ce30a76      0b43           jsr @r3                     ;[?]     
        |   0x0ce30a78      e364           mov r14,r4                           
        |   0x0ce30a7a      14d2           mov.l @(0x50,PC),r2                  
        |   0x0ce30a7c      0b42           jsr @r2                     ;[?]     
        |   0x0ce30a7e      e364           mov r14,r4                           
        `-> 0x0ce30a80      13d3           mov.l @(0x4C,PC),r3                  
            0x0ce30a82      0b43           jsr @r3                     ;[?]     
            0x0ce30a84      e364           mov r14,r4                           
            0x0ce30a86      13d2           mov.l @(0x4C,PC),r2                  
            0x0ce30a88      0b42           jsr @r2                     ;[?]     
            0x0ce30a8a      e364           mov r14,r4                           
            0x0ce30a8c      12d3           mov.l @(0x48,PC),r3                  
            0x0ce30a8e      0b43           jsr @r3                     ;[?]     
            0x0ce30a90      e364           mov r14,r4                           
            0x0ce30a92      0e60           exts.b r0,r0                         
            0x0ce30a94      1140           cmp/pz r0                            
        ,=< 0x0ce30a96      0289           bt 0x0ce30a9e               ;[2]     
        |   0x0ce30a98      10d3           mov.l @(0x40,PC),r3                  
        |   0x0ce30a9a      0b43           jsr @r3                     ;[?]     
        |   0x0ce30a9c      e364           mov r14,r4                           
        `-> 0x0ce30a9e      10d2           mov.l @(0x40,PC),r2                  
            0x0ce30aa0      0b42           jsr @r2                     ;[?]     
            0x0ce30aa2      e364           mov r14,r4                           
            0x0ce30aa4      0c60           extu.b r0,r0                         
            0x0ce30aa6      0820           tst r0,r0                            
        ,=< 0x0ce30aa8      0489           bt 0x0ce30ab4               ;[3]     
        |   0x0ce30aaa      264f           lds.l @r15+,pr                       
        |   0x0ce30aac      0dd2           mov.l @(0x34,PC),r2                  
        |   0x0ce30aae      e364           mov r14,r4                           
        |   0x0ce30ab0      2b42           jmp @r2                              
        |   0x0ce30ab2      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30ab4      264f           lds.l @r15+,pr                       
            0x0ce30ab6      0b00           rts                                  
            0x0ce30ab8      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30aba 0x01fe 0x0201 0x0000
0x0ce30ac0  0x8c0511e2 0x8c052c84 0x8c050084 0x8c04ff88  .....,..........       
0x0ce30ad0  0x8c04fea8 0x8c050048 0x8c034dee 0x8c05176e  ....H....M..n...       
0x0ce30ae0  0x8c052ce2 0x8c052dac

;==============================================================================
            0x0ce30ae8      e62f           mov.l r14,@-r15                      
            0x0ce30aea      436e           mov r4,r14                           
            0x0ce30aec      224f           sts.l pr,@-r15                       
            0x0ce30aee      e684           mov.b @(0x6,r14),r0                  
            0x0ce30af0      0820           tst r0,r0                            
        ,=< 0x0ce30af2      278b           bf 0x0ce30b44               ;[1]     
        |   0x0ce30af4      48d3           mov.l @(0x120,PC),r3                 
        |   0x0ce30af6      0b43           jsr @r3                     ;[?]     
        |   0x0ce30af8      e364           mov r14,r4                           
        |   0x0ce30afa      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30afc      41e3           mov 0x41,r3                          
        |   0x0ce30afe      00e4           mov 0x00,r4                          
        |   0x0ce30b00      0170           add 0x01,r0                          
        |   0x0ce30b02      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30b04      05e5           mov 0x05,r5                          
        |   0x0ce30b06      8290           mov.w @(0x104,PC),r0                 
        |   0x0ce30b08      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce30b0a      0b70           add 0x0B,r0                          
        |   0x0ce30b0c      450e           mov.w r4,@(r0,r14)                   
        |   0x0ce30b0e      f270           add 0xF2,r0                          
        |   0x0ce30b10      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce30b12      2670           add 0x26,r0                          
        |   0x0ce30b14      41d3           mov.l @(0x104,PC),r3                 
        |   0x0ce30b16      460e           mov.l r4,@(r0,r14)                   
        |   0x0ce30b18      e284           mov.b @(0x2,r14),r0                  
        |   0x0ce30b1a      3262           mov.l @r3,r2                         
        |   0x0ce30b1c      0c60           extu.b r0,r0                         
        |   0x0ce30b1e      0040           shll r0                              
        |   0x0ce30b20      7c72           add 0x7C,r2                          
        |   0x0ce30b22      2d01           mov.w @(r0,r2),r1                    
        |   0x0ce30b24      0171           add 0x01,r1                          
        |   0x0ce30b26      1502           mov.w r1,@(r0,r2)                    
        |   0x0ce30b28      7290           mov.w @(0xE4,PC),r0                  
        |   0x0ce30b2a      3dd2           mov.l @(0xF4,PC),r2                  
        |   0x0ce30b2c      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce30b2e      0b42           jsr @r2                     ;[?]     
        |   0x0ce30b30      e364           mov r14,r4                           
        |   0x0ce30b32      3cd3           mov.l @(0xF0,PC),r3                  
        |   0x0ce30b34      14e5           mov 0x14,r5                          
        |   0x0ce30b36      07e6           mov 0x07,r6                          
        |   0x0ce30b38      0b43           jsr @r3                     ;[?]     
        |   0x0ce30b3a      e364           mov r14,r4                           
        |   0x0ce30b3c      3ad2           mov.l @(0xE8,PC),r2                  
        |   0x0ce30b3e      16e5           mov 0x16,r5                          
        |   0x0ce30b40      0b42           jsr @r2                     ;[?]     
        |   0x0ce30b42      e364           mov r14,r4                           
        `-> 0x0ce30b44      6590           mov.w @(0xCA,PC),r0                  
            0x0ce30b46      ec00           mov.b @(r0,r14),r0                   
            0x0ce30b48      0c60           extu.b r0,r0                         
            0x0ce30b4a      0388           cmp/eq 0x03,r0                       
        ,=< 0x0ce30b4c      028b           bf 0x0ce30b54               ;[2]     
        |   0x0ce30b4e      37d2           mov.l @(0xDC,PC),r2                  
        |   0x0ce30b50      0b42           jsr @r2                     ;[?]     
        |   0x0ce30b52      e364           mov r14,r4                           
        `-> 0x0ce30b54      5ce1           mov 0x5C,r1                          
            0x0ce30b56      36d3           mov.l @(0xD8,PC),r3                  
            0x0ce30b58      ec31           add r14,r1                           
            0x0ce30b5a      34e0           mov 0x34,r0                          
            0x0ce30b5c      18f3           fmov @r1,fr3                         
            0x0ce30b5e      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30b60      68e1           mov 0x68,r1                          
            0x0ce30b62      ec31           add r14,r1                           
            0x0ce30b64      30f2           fadd fr3,fr2                         
            0x0ce30b66      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30b68      5ce0           mov 0x5C,r0                          
            0x0ce30b6a      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30b6c      18f3           fmov @r1,fr3                         
            0x0ce30b6e      60e1           mov 0x60,r1                          
            0x0ce30b70      ec31           add r14,r1                           
            0x0ce30b72      30f2           fadd fr3,fr2                         
            0x0ce30b74      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30b76      38e0           mov 0x38,r0                          
            0x0ce30b78      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30b7a      18f3           fmov @r1,fr3                         
            0x0ce30b7c      6ce1           mov 0x6C,r1                          
            0x0ce30b7e      ec31           add r14,r1                           
            0x0ce30b80      30f2           fadd fr3,fr2                         
            0x0ce30b82      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30b84      60e0           mov 0x60,r0                          
            0x0ce30b86      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30b88      18f3           fmov @r1,fr3                         
            0x0ce30b8a      30f2           fadd fr3,fr2                         
            0x0ce30b8c      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30b8e      0b43           jsr @r3                     ;[?]     
            0x0ce30b90      e364           mov r14,r4                           
            0x0ce30b92      28d2           mov.l @(0xA0,PC),r2                  
            0x0ce30b94      0b42           jsr @r2                     ;[?]     
            0x0ce30b96      e364           mov r14,r4                           
            0x0ce30b98      0e60           exts.b r0,r0                         
            0x0ce30b9a      1140           cmp/pz r0                            
        ,=< 0x0ce30b9c      0489           bt 0x0ce30ba8               ;[1]     
        |   0x0ce30b9e      264f           lds.l @r15+,pr                       
        |   0x0ce30ba0      25d2           mov.l @(0x94,PC),r2                  
        |   0x0ce30ba2      e364           mov r14,r4                           
        |   0x0ce30ba4      2b42           jmp @r2                              
        |   0x0ce30ba6      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30ba8      264f           lds.l @r15+,pr                       
            0x0ce30baa      0b00           rts                                  
            0x0ce30bac      f66e           mov.l @r15+,r14                      
            0x0ce30bae      4363           mov r4,r3                            
            0x0ce30bb0      22d1           mov.l @(0x88,PC),r1                  
            0x0ce30bb2      462f           mov.l r4,@-r15                       
            0x0ce30bb4      3684           mov.b @(0x6,r3),r0                   
            0x0ce30bb6      0c60           extu.b r0,r0                         
            0x0ce30bb8      0840           shll2 r0                             
            0x0ce30bba      1e03           mov.l @(r0,r1),r3                    
            0x0ce30bbc      2b43           jmp @r3                              
            0x0ce30bbe      047f           add 0x04,r15                         
            0x0ce30bc0      e62f           mov.l r14,@-r15                      
            0x0ce30bc2      224f           sts.l pr,@-r15                       
            0x0ce30bc4      1bd3           mov.l @(0x6C,PC),r3                  
            0x0ce30bc6      0b43           jsr @r3                     ;[?]     
            0x0ce30bc8      436e           mov r4,r14                           
            0x0ce30bca      2390           mov.w @(0x46,PC),r0                  
            0x0ce30bcc      ec02           mov.b @(r0,r14),r2                   
            0x0ce30bce      2822           tst r2,r2                            
        ,=< 0x0ce30bd0      1a8b           bf 0x0ce30c08               ;[1]     
        |   0x0ce30bd2      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30bd4      8df4           fldi0 fr4                            
        |   0x0ce30bd6      0170           add 0x01,r0                          
        |   0x0ce30bd8      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30bda      5ce0           mov 0x5C,r0                          
        |   0x0ce30bdc      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30bde      60e0           mov 0x60,r0                          
        |   0x0ce30be0      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30be2      68e0           mov 0x68,r0                          
        |   0x0ce30be4      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30be6      6ce0           mov 0x6C,r0                          
        |   0x0ce30be8      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30bea      1490           mov.w @(0x28,PC),r0                  
        |   0x0ce30bec      ec03           mov.b @(r0,r14),r3                   
        |   0x0ce30bee      3823           tst r3,r3                            
       ,==< 0x0ce30bf0      0289           bt 0x0ce30bf8               ;[2]     
       ||   0x0ce30bf2      13c7           mova @(0x4C,PC),r0                   
      ,===< 0x0ce30bf4      02a0           bra 0x0ce30bfc              ;[3]     
      |||   0x0ce30bf6      08f3           fmov @r0,fr3                         
      |`--> 0x0ce30bf8      12c7           mova @(0x48,PC),r0                   
      | |   0x0ce30bfa      08f3           fmov @r0,fr3                         
      `---> 0x0ce30bfc      5ce0           mov 0x5C,r0                          
        |   0x0ce30bfe      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce30c00      04e0           mov 0x04,r0                          
        |   0x0ce30c02      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce30c04      18e0           mov 0x18,r0                          
        |   0x0ce30c06      ee81           mov.w r0,@(0x1C,r14)                 
        `-> 0x0ce30c08      264f           lds.l @r15+,pr                       
            0x0ce30c0a      0b00           rts                                  
            0x0ce30c0c      f66e           mov.l @r15+,r14                     

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30c0e 0x01a1 0x01f9 0x01ff 0x0141 0x01d2
0x0ce30c18  0x8c052b4c 0x8c2896b0 0x8c056de4 0x8c034e8c  L+....(..m...N..       
0x0ce30c28  0x8c04223a 0x8c0511e2 0x8c052c84 0x8c034dee  :".......,...M..       
0x0ce30c38  0x8c051648 0x0ce3245c 0x41a00000 0xc1a00000 

;==============================================================================
            0x0ce30c48      e62f           mov.l r14,@-r15                      
            0x0ce30c4a      436e           mov r4,r14                           
            0x0ce30c4c      224f           sts.l pr,@-r15                       
            0x0ce30c4e      ef85           mov.w @(0x1E,r14),r0                 
            0x0ce30c50      ff70           add 0xFF,r0                          
            0x0ce30c52      ef81           mov.w r0,@(0x1E,r14)                 
            0x0ce30c54      0f60           exts.w r0,r0                         
            0x0ce30c56      1140           cmp/pz r0                            
        ,=< 0x0ce30c58      0589           bt 0x0ce30c66               ;[1]     
        |   0x0ce30c5a      3dd3           mov.l @(0xF4,PC),r3                  
        |   0x0ce30c5c      04e0           mov 0x04,r0                          
        |   0x0ce30c5e      00e5           mov 0x00,r5                          
        |   0x0ce30c60      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce30c62      0b43           jsr @r3                     ;[?]     
        |   0x0ce30c64      e364           mov r14,r4                           
        `-> 0x0ce30c66      5ce1           mov 0x5C,r1                          
            0x0ce30c68      3ad3           mov.l @(0xE8,PC),r3                  
            0x0ce30c6a      ec31           add r14,r1                           
            0x0ce30c6c      34e0           mov 0x34,r0                          
            0x0ce30c6e      18f3           fmov @r1,fr3                         
            0x0ce30c70      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30c72      68e1           mov 0x68,r1                          
            0x0ce30c74      ec31           add r14,r1                           
            0x0ce30c76      30f2           fadd fr3,fr2                         
            0x0ce30c78      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30c7a      5ce0           mov 0x5C,r0                          
            0x0ce30c7c      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30c7e      18f3           fmov @r1,fr3                         
            0x0ce30c80      60e1           mov 0x60,r1                          
            0x0ce30c82      ec31           add r14,r1                           
            0x0ce30c84      30f2           fadd fr3,fr2                         
            0x0ce30c86      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30c88      38e0           mov 0x38,r0                          
            0x0ce30c8a      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30c8c      18f3           fmov @r1,fr3                         
            0x0ce30c8e      6ce1           mov 0x6C,r1                          
            0x0ce30c90      ec31           add r14,r1                           
            0x0ce30c92      30f2           fadd fr3,fr2                         
            0x0ce30c94      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30c96      60e0           mov 0x60,r0                          
            0x0ce30c98      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30c9a      18f3           fmov @r1,fr3                         
            0x0ce30c9c      30f2           fadd fr3,fr2                         
            0x0ce30c9e      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30ca0      0b43           jsr @r3                     ;[?]     
            0x0ce30ca2      e364           mov r14,r4                           
            0x0ce30ca4      ee85           mov.w @(0x1C,r14),r0                 
            0x0ce30ca6      ff70           add 0xFF,r0                          
            0x0ce30ca8      ee81           mov.w r0,@(0x1C,r14)                 
            0x0ce30caa      0f60           exts.w r0,r0                         
            0x0ce30cac      1140           cmp/pz r0                            
        ,=< 0x0ce30cae      0989           bt 0x0ce30cc4               ;[2]     
        |   0x0ce30cb0      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30cb2      02e6           mov 0x02,r6                          
        |   0x0ce30cb4      28d3           mov.l @(0xA0,PC),r3                  
        |   0x0ce30cb6      6365           mov r6,r5                            
        |   0x0ce30cb8      0170           add 0x01,r0                          
        |   0x0ce30cba      e364           mov r14,r4                           
        |   0x0ce30cbc      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30cbe      264f           lds.l @r15+,pr                       
        |   0x0ce30cc0      2b43           jmp @r3                              
        |   0x0ce30cc2      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30cc4      264f           lds.l @r15+,pr                       
            0x0ce30cc6      0b00           rts                                  
            0x0ce30cc8      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30cca      224f           sts.l pr,@-r15                       
            0x0ce30ccc      fc7f           add 0xFC,r15                         
            0x0ce30cce      21d3           mov.l @(0x84,PC),r3                  
            0x0ce30cd0      0b43           jsr @r3                     ;[?]     
            0x0ce30cd2      422f           mov.l r4,@r15                        
            0x0ce30cd4      0e60           exts.b r0,r0                         
            0x0ce30cd6      1140           cmp/pz r0                            
        ,=< 0x0ce30cd8      0489           bt 0x0ce30ce4               ;[1]     
        |   0x0ce30cda      f264           mov.l @r15,r4                        
        |   0x0ce30cdc      047f           add 0x04,r15                         
        |   0x0ce30cde      1fd3           mov.l @(0x7C,PC),r3                  
        |   0x0ce30ce0      2b43           jmp @r3                              
        |   0x0ce30ce2      264f           lds.l @r15+,pr                       
        `-> 0x0ce30ce4      047f           add 0x04,r15                         
            0x0ce30ce6      264f           lds.l @r15+,pr                       
            0x0ce30ce8      0b00           rts                                  
            0x0ce30cea      0900           nop                                  

;==============================================================================
            0x0ce30cee      1cd1           mov.l @(0x70,PC),r1                  
            0x0ce30cf0      462f           mov.l r4,@-r15                       
            0x0ce30cf2      3684           mov.b @(0x6,r3),r0                   
            0x0ce30cf4      0c60           extu.b r0,r0                         
            0x0ce30cf6      0840           shll2 r0                             
            0x0ce30cf8      1e03           mov.l @(r0,r1),r3                    
            0x0ce30cfa      2b43           jmp @r3                              
            0x0ce30cfc      047f           add 0x04,r15                         
            0x0ce30cfe      e62f           mov.l r14,@-r15                      
            0x0ce30d00      224f           sts.l pr,@-r15                       
            0x0ce30d02      14d3           mov.l @(0x50,PC),r3                  
            0x0ce30d04      0b43           jsr @r3                     ;[?]     
            0x0ce30d06      436e           mov r4,r14                           
            0x0ce30d08      2090           mov.w @(0x40,PC),r0                  
            0x0ce30d0a      ec02           mov.b @(r0,r14),r2                   
            0x0ce30d0c      2822           tst r2,r2                            
        ,=< 0x0ce30d0e      1a8b           bf 0x0ce30d46               ;[1]     
        |   0x0ce30d10      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30d12      8df4           fldi0 fr4                            
        |   0x0ce30d14      0170           add 0x01,r0                          
        |   0x0ce30d16      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30d18      5ce0           mov 0x5C,r0                          
        |   0x0ce30d1a      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30d1c      60e0           mov 0x60,r0                          
        |   0x0ce30d1e      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30d20      68e0           mov 0x68,r0                          
        |   0x0ce30d22      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30d24      6ce0           mov 0x6C,r0                          
        |   0x0ce30d26      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce30d28      1190           mov.w @(0x22,PC),r0                  
        |   0x0ce30d2a      ec03           mov.b @(r0,r14),r3                   
        |   0x0ce30d2c      3823           tst r3,r3                            
       ,==< 0x0ce30d2e      0289           bt 0x0ce30d36               ;[2]     
       ||   0x0ce30d30      0cc7           mova @(0x30,PC),r0                   
      ,===< 0x0ce30d32      02a0           bra 0x0ce30d3a              ;[3]     
      |||   0x0ce30d34      08f3           fmov @r0,fr3                         
      |`--> 0x0ce30d36      0cc7           mova @(0x30,PC),r0                   
      | |   0x0ce30d38      08f3           fmov @r0,fr3                         
      `---> 0x0ce30d3a      5ce0           mov 0x5C,r0                          
        |   0x0ce30d3c      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce30d3e      04e0           mov 0x04,r0                          
        |   0x0ce30d40      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce30d42      18e0           mov 0x18,r0                          
        |   0x0ce30d44      ee81           mov.w r0,@(0x1C,r14)                 
        `-> 0x0ce30d46      264f           lds.l @r15+,pr                       
            0x0ce30d48      0b00           rts                                  
            0x0ce30d4a      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30d4c  0x0141 0x01d2
0x0ce30d50  0x8c0e4adc 0x8c034dee 0x8c034e8c 0x8c051648  .J...M...N..H...       
0x0ce30d60  0x0ce32468 0xc1ad5555 0x41ad5555

;==============================================================================
            0x0ce30d6c      e62f           mov.l r14,@-r15                      
            0x0ce30d6e      436e           mov r4,r14                           
            0x0ce30d70      224f           sts.l pr,@-r15                       
            0x0ce30d72      ef85           mov.w @(0x1E,r14),r0                 
            0x0ce30d74      ff70           add 0xFF,r0                          
            0x0ce30d76      ef81           mov.w r0,@(0x1E,r14)                 
            0x0ce30d78      0f60           exts.w r0,r0                         
            0x0ce30d7a      1140           cmp/pz r0                            
        ,=< 0x0ce30d7c      0589           bt 0x0ce30d8a               ;[1]     
        |   0x0ce30d7e      3ed3           mov.l @(0xF8,PC),r3                  
        |   0x0ce30d80      04e0           mov 0x04,r0                          
        |   0x0ce30d82      01e5           mov 0x01,r5                          
        |   0x0ce30d84      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce30d86      0b43           jsr @r3                     ;[?]     
        |   0x0ce30d88      e364           mov r14,r4                           
        `-> 0x0ce30d8a      5ce1           mov 0x5C,r1                          
            0x0ce30d8c      3bd3           mov.l @(0xEC,PC),r3                  
            0x0ce30d8e      ec31           add r14,r1                           
            0x0ce30d90      34e0           mov 0x34,r0                          
            0x0ce30d92      18f3           fmov @r1,fr3                         
            0x0ce30d94      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30d96      68e1           mov 0x68,r1                          
            0x0ce30d98      ec31           add r14,r1                           
            0x0ce30d9a      30f2           fadd fr3,fr2                         
            0x0ce30d9c      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30d9e      5ce0           mov 0x5C,r0                          
            0x0ce30da0      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30da2      18f3           fmov @r1,fr3                         
            0x0ce30da4      60e1           mov 0x60,r1                          
            0x0ce30da6      ec31           add r14,r1                           
            0x0ce30da8      30f2           fadd fr3,fr2                         
            0x0ce30daa      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30dac      38e0           mov 0x38,r0                          
            0x0ce30dae      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30db0      18f3           fmov @r1,fr3                         
            0x0ce30db2      6ce1           mov 0x6C,r1                          
            0x0ce30db4      ec31           add r14,r1                           
            0x0ce30db6      30f2           fadd fr3,fr2                         
            0x0ce30db8      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30dba      60e0           mov 0x60,r0                          
            0x0ce30dbc      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30dbe      18f3           fmov @r1,fr3                         
            0x0ce30dc0      30f2           fadd fr3,fr2                         
            0x0ce30dc2      27fe           fmov fr2,@(r0,r14)                   
            0x0ce30dc4      0b43           jsr @r3                     ;[?]     
            0x0ce30dc6      e364           mov r14,r4                           
            0x0ce30dc8      ee85           mov.w @(0x1C,r14),r0                 
            0x0ce30dca      ff70           add 0xFF,r0                          
            0x0ce30dcc      ee81           mov.w r0,@(0x1C,r14)                 
            0x0ce30dce      0f60           exts.w r0,r0                         
            0x0ce30dd0      1140           cmp/pz r0                            
        ,=< 0x0ce30dd2      0989           bt 0x0ce30de8               ;[2]     
        |   0x0ce30dd4      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30dd6      e364           mov r14,r4                           
        |   0x0ce30dd8      29d3           mov.l @(0xA4,PC),r3                  
        |   0x0ce30dda      03e6           mov 0x03,r6                          
        |   0x0ce30ddc      0170           add 0x01,r0                          
        |   0x0ce30dde      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30de0      02e5           mov 0x02,r5                          
        |   0x0ce30de2      264f           lds.l @r15+,pr                       
        |   0x0ce30de4      2b43           jmp @r3                              
        |   0x0ce30de6      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30de8      264f           lds.l @r15+,pr                       
            0x0ce30dea      0b00           rts                                  
            0x0ce30dec      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30dee      224f           sts.l pr,@-r15                       
            0x0ce30df0      fc7f           add 0xFC,r15                         
            0x0ce30df2      22d3           mov.l @(0x88,PC),r3                  
            0x0ce30df4      0b43           jsr @r3                     ;[?]     
            0x0ce30df6      422f           mov.l r4,@r15                        
            0x0ce30df8      0e60           exts.b r0,r0                         
            0x0ce30dfa      1140           cmp/pz r0                            
        ,=< 0x0ce30dfc      0489           bt 0x0ce30e08               ;[1]     
        |   0x0ce30dfe      f264           mov.l @r15,r4                        
        |   0x0ce30e00      047f           add 0x04,r15                         
        |   0x0ce30e02      20d3           mov.l @(0x80,PC),r3                  
        |   0x0ce30e04      2b43           jmp @r3                              
        |   0x0ce30e06      264f           lds.l @r15+,pr                       
        `-> 0x0ce30e08      047f           add 0x04,r15                         
            0x0ce30e0a      264f           lds.l @r15+,pr                       
            0x0ce30e0c      0b00           rts                                  
            0x0ce30e0e      0900           nop                                  

;==============================================================================
            0x0ce30e10      e62f           mov.l r14,@-r15                      
            0x0ce30e12      436e           mov r4,r14                           
            0x0ce30e14      224f           sts.l pr,@-r15                       
            0x0ce30e16      e684           mov.b @(0x6,r14),r0                  
            0x0ce30e18      0820           tst r0,r0                            
        ,=< 0x0ce30e1a      0a8b           bf 0x0ce30e32               ;[1]     
        |   0x0ce30e1c      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30e1e      01e3           mov 0x01,r3                          
        |   0x0ce30e20      00e6           mov 0x00,r6                          
        |   0x0ce30e22      0170           add 0x01,r0                          
        |   0x0ce30e24      6365           mov r6,r5                            
        |   0x0ce30e26      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30e28      2590           mov.w @(0x4A,PC),r0                  
        |   0x0ce30e2a      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce30e2c      14d3           mov.l @(0x50,PC),r3                  
        |   0x0ce30e2e      0b43           jsr @r3                     ;[?]     
        |   0x0ce30e30      e364           mov r14,r4                           
        `-> 0x0ce30e32      e684           mov.b @(0x6,r14),r0                  
            0x0ce30e34      0c60           extu.b r0,r0                         
            0x0ce30e36      0188           cmp/eq 0x01,r0                       
        ,=< 0x0ce30e38      0d8b           bf 0x0ce30e56               ;[2]     
        |   0x0ce30e3a      13d3           mov.l @(0x4C,PC),r3                  
        |   0x0ce30e3c      02e1           mov 0x02,r1                          
        |   0x0ce30e3e      3062           mov.b @r3,r2                         
        |   0x0ce30e40      2c62           extu.b r2,r2                         
        |   0x0ce30e42      1332           cmp/ge r1,r2                         
       ,==< 0x0ce30e44      078b           bf 0x0ce30e56               ;[2]     
       ||   0x0ce30e46      e684           mov.b @(0x6,r14),r0                  
       ||   0x0ce30e48      12e5           mov 0x12,r5                          
       ||   0x0ce30e4a      0dd2           mov.l @(0x34,PC),r2                  
       ||   0x0ce30e4c      00e6           mov 0x00,r6                          
       ||   0x0ce30e4e      0170           add 0x01,r0                          
       ||   0x0ce30e50      e680           mov.b r0,@(0x6,r14)                  
       ||   0x0ce30e52      0b42           jsr @r2                     ;[?]     
       ||   0x0ce30e54      e364           mov r14,r4                           
       ``-> 0x0ce30e56      e684           mov.b @(0x6,r14),r0                  
            0x0ce30e58      0c60           extu.b r0,r0                         
            0x0ce30e5a      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce30e5c      088b           bf 0x0ce30e70               ;[3]     
        |   0x0ce30e5e      07d2           mov.l @(0x1C,PC),r2                  
        |   0x0ce30e60      0b42           jsr @r2                     ;[?]     
        |   0x0ce30e62      e364           mov r14,r4                           
        |   0x0ce30e64      0e60           exts.b r0,r0                         
        |   0x0ce30e66      1140           cmp/pz r0                            
       ,==< 0x0ce30e68      0289           bt 0x0ce30e70               ;[3]     
       ||   0x0ce30e6a      e584           mov.b @(0x5,r14),r0                  
       ||   0x0ce30e6c      0170           add 0x01,r0                          
       ||   0x0ce30e6e      e580           mov.b r0,@(0x5,r14)                  
       ``-> 0x0ce30e70      264f           lds.l @r15+,pr                       
            0x0ce30e72      0b00           rts                                  
            0x0ce30e74      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce30e76 0x012c
0x0ce30e78  0x8c0e4adc 0x8c034dee 0x8c034e8c 0x8c051648  .J...M...N..H...       
0x0ce30e88  0x8c2895f0

;==============================================================================
            0x0ce30e8c      e62f           mov.l r14,@-r15                      
            0x0ce30e8e      436e           mov r4,r14                           
            0x0ce30e90      d62f           mov.l r13,@-r15                      
            0x0ce30e92      224f           sts.l pr,@-r15                       
            0x0ce30e94      e684           mov.b @(0x6,r14),r0                  
            0x0ce30e96      0820           tst r0,r0                            
        ,=< 0x0ce30e98      228b           bf 0x0ce30ee0               ;[1]     
        |   0x0ce30e9a      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce30e9c      3ddd           mov.l @(0xF4,PC),r13                 
        |   0x0ce30e9e      0170           add 0x01,r0                          
        |   0x0ce30ea0      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce30ea2      20e0           mov 0x20,r0                          
        |   0x0ce30ea4      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce30ea6      0c60           extu.b r0,r0                         
        |   0x0ce30ea8      0088           cmp/eq 0x00,r0                       
       ,==< 0x0ce30eaa      0989           bt 0x0ce30ec0               ;[2]     
       ||   0x0ce30eac      0188           cmp/eq 0x01,r0                       
      ,===< 0x0ce30eae      1189           bt 0x0ce30ed4               ;[3]     
      |||   0x0ce30eb0      0388           cmp/eq 0x03,r0                       
     ,====< 0x0ce30eb2      0f89           bt 0x0ce30ed4               ;[3]     
     ||||   0x0ce30eb4      0488           cmp/eq 0x04,r0                       
    ,=====< 0x0ce30eb6      0d89           bt 0x0ce30ed4               ;[3]     
    |||||   0x0ce30eb8      0288           cmp/eq 0x02,r0                       
   ,======< 0x0ce30eba      0d89           bt 0x0ce30ed8               ;[4]     
  ,=======< 0x0ce30ebc      10a0           bra 0x0ce30ee0              ;[1]     
  |||||||   0x0ce30ebe      0900           nop                                  
  |||||`--> 0x0ce30ec0      35d3           mov.l @(0xD4,PC),r3                  
  ||||| |   0x0ce30ec2      0b43           jsr @r3                     ;[?]     
  ||||| |   0x0ce30ec4      0900           nop                                  
  ||||| |   0x0ce30ec6      01c8           tst 0x01,r0                          
  ||||| |   0x0ce30ec8      13e5           mov 0x13,r5                          
  ||||| |   0x0ce30eca      2906           movt r6                              
  ||||| |   0x0ce30ecc      0b4d           jsr @r13                    ;[?]     
  ||||| |   0x0ce30ece      e364           mov r14,r4                           
  |||||,==< 0x0ce30ed0      06a0           bra 0x0ce30ee0              ;[1]     
  |||||||   0x0ce30ed2      0900           nop                                  
  ==```---> 0x0ce30ed4      01a0           bra 0x0ce30eda              ;[5]     
  ||   ||   0x0ce30ed6      03e6           mov 0x03,r6                          
  |`------> 0x0ce30ed8      02e6           mov 0x02,r6                          
  --------> 0x0ce30eda      13e5           mov 0x13,r5                          
  |    ||   0x0ce30edc      0b4d           jsr @r13                    ;[?]     
  |    ||   0x0ce30ede      e364           mov r14,r4                           
  `----``-> 0x0ce30ee0      2ed3           mov.l @(0xB8,PC),r3                  
            0x0ce30ee2      0b43           jsr @r3                     ;[?]     
            0x0ce30ee4      e364           mov r14,r4                           
            0x0ce30ee6      0820           tst r0,r0                            
        ,=< 0x0ce30ee8      0589           bt 0x0ce30ef6               ;[6]     
        |   0x0ce30eea      264f           lds.l @r15+,pr                       
        |   0x0ce30eec      2cd3           mov.l @(0xB0,PC),r3                  
        |   0x0ce30eee      e364           mov r14,r4                           
        |   0x0ce30ef0      f66d           mov.l @r15+,r13                      
        |   0x0ce30ef2      2b43           jmp @r3                              
        |   0x0ce30ef4      f66e           mov.l @r15+,r14                      
        `-> 0x0ce30ef6      264f           lds.l @r15+,pr                       
            0x0ce30ef8      2ad3           mov.l @(0xA8,PC),r3                  
            0x0ce30efa      e364           mov r14,r4                           
            0x0ce30efc      f66d           mov.l @r15+,r13                      
            0x0ce30efe      2b43           jmp @r3                              
            0x0ce30f00      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce30f02      4390           mov.w @(0x86,PC),r0                  
            0x0ce30f04      4363           mov r4,r3                            
            0x0ce30f06      462f           mov.l r4,@-r15                       
            0x0ce30f08      3c02           mov.b @(r0,r3),r2                    
            0x0ce30f0a      27d0           mov.l @(0x9C,PC),r0                  
            0x0ce30f0c      2c62           extu.b r2,r2                         
            0x0ce30f0e      0842           shll2 r2                             
            0x0ce30f10      2e03           mov.l @(r0,r2),r3                    
            0x0ce30f12      2b43           jmp @r3                              
            0x0ce30f14      047f           add 0x04,r15                         
            0x0ce30f16      e62f           mov.l r14,@-r15                      
            0x0ce30f18      436e           mov r4,r14                           
            0x0ce30f1a      d62f           mov.l r13,@-r15                      
            0x0ce30f1c      c62f           mov.l r12,@-r15                      
            0x0ce30f1e      224f           sts.l pr,@-r15                       
            0x0ce30f20      e684           mov.b @(0x6,r14),r0                  
            0x0ce30f22      0820           tst r0,r0                            
        ,=< 0x0ce30f24      7b8b           bf 0x0ce3101e               ;[1]     
        |   0x0ce30f26      21d3           mov.l @(0x84,PC),r3                  
        |   0x0ce30f28      05e5           mov 0x05,r5                          
        |   0x0ce30f2a      0b43           jsr @r3                     ;[?]     
        |   0x0ce30f2c      e364           mov r14,r4                           
        |   0x0ce30f2e      20d2           mov.l @(0x80,PC),r2                  
        |   0x0ce30f30      00e5           mov 0x00,r5                          
        |   0x0ce30f32      0b42           jsr @r2                     ;[?]     
        |   0x0ce30f34      e364           mov r14,r4                           
        |   0x0ce30f36      2a90           mov.w @(0x54,PC),r0                  
        |   0x0ce30f38      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce30f3a      0c60           extu.b r0,r0                         
        |   0x0ce30f3c      0288           cmp/eq 0x02,r0                       
       ,==< 0x0ce30f3e      058d           bt.s 0x0ce30f4c             ;[2]     
       ||   0x0ce30f40      00ed           mov 0x00,r13                         
       ||   0x0ce30f42      1cd2           mov.l @(0x70,PC),r2                  
       ||   0x0ce30f44      0b42           jsr @r2                     ;[?]     
       ||   0x0ce30f46      e364           mov r14,r4                           
       ||   0x0ce30f48      2190           mov.w @(0x42,PC),r0                  
       ||   0x0ce30f4a      d40e           mov.b r13,@(r0,r14)                  
       `--> 0x0ce30f4c      1ad3           mov.l @(0x68,PC),r3                  
        |   0x0ce30f4e      0b43           jsr @r3                     ;[?]     
        |   0x0ce30f50      e364           mov r14,r4                           
        |   0x0ce30f52      1d90           mov.w @(0x3A,PC),r0                  
        |   0x0ce30f54      19d3           mov.l @(0x64,PC),r3                  
        |   0x0ce30f56      ec02           mov.b @(r0,r14),r2                   
        |   0x0ce30f58      fe70           add 0xFE,r0                          
        |   0x0ce30f5a      2c62           extu.b r2,r2                         
        |   0x0ce30f5c      0042           shll r2                              
        |   0x0ce30f5e      3072           add 0x30,r2                          
        |   0x0ce30f60      240e           mov.b r2,@(r0,r14)                   
        |   0x0ce30f62      0b70           add 0x0B,r0                          
        |   0x0ce30f64      d50e           mov.w r13,@(r0,r14)                  
        |   0x0ce30f66      f270           add 0xF2,r0                          
        |   0x0ce30f68      d40e           mov.b r13,@(r0,r14)                  
        |   0x0ce30f6a      2670           add 0x26,r0                          
        |   0x0ce30f6c      d60e           mov.l r13,@(r0,r14)                  
        |   0x0ce30f6e      e284           mov.b @(0x2,r14),r0                  
        |   0x0ce30f70      3262           mov.l @r3,r2                         
        |   0x0ce30f72      0c60           extu.b r0,r0                         
        |   0x0ce30f74      0040           shll r0                              
        |   0x0ce30f76      7c72           add 0x7C,r2                          
        |   0x0ce30f78      2d01           mov.w @(r0,r2),r1                    
        |   0x0ce30f7a      0171           add 0x01,r1                          
        |   0x0ce30f7c      1502           mov.w r1,@(r0,r2)                    
        |   0x0ce30f7e      0790           mov.w @(0xE,PC),r0                   
        |   0x0ce30f80      ec02           mov.b @(r0,r14),r2                   
        |   0x0ce30f82      2822           tst r2,r2                            
       ,==< 0x0ce30f84      1c8d           bt.s 0x0ce30fc0             ;[3]     
       ||   0x0ce30f86      15e5           mov 0x15,r5                          
      ,===< 0x0ce30f88      1ba0           bra 0x0ce30fc2              ;[4]     
      |||   0x0ce30f8a      00e6           mov 0x00,r6                          

;##############################################################################
0x0ce30f8c 0x01e9 0x01f9 0x01a3 0x0000
0x0ce30f94  0x8c034e8c 0x8c03319e 0x8c046c8a 0x8c051648  .N...1...l..H...       
0x0ce30fa4  0x8c034dee 0x0ce32474 0x8c056de4 0x8c035162  .M..t$...m..bQ..       
0x0ce30fb4  0x8c05115a 0x8c05218a 0x8c2896b0

;------------------------------------------------------------------------------
            0x0ce30fc0      10e6           mov 0x10,r6                          
            0x0ce30fc2      3cd2           mov.l @(0xF0,PC),r2                  
            0x0ce30fc4      0b42           jsr @r2                     ;[?]     
            0x0ce30fc6      e364           mov r14,r4                           
            0x0ce30fc8      3bd3           mov.l @(0xEC,PC),r3                  
            0x0ce30fca      02e5           mov 0x02,r5                          
            0x0ce30fcc      0b43           jsr @r3                     ;[?]     
            0x0ce30fce      e364           mov r14,r4                           
            0x0ce30fd0      3adc           mov.l @(0xE8,PC),r12                 
            0x0ce30fd2      05e5           mov 0x05,r5                          
            0x0ce30fd4      00e6           mov 0x00,r6                          
            0x0ce30fd6      0b4c           jsr @r12                    ;[?]     
            0x0ce30fd8      e364           mov r14,r4                           
            0x0ce30fda      05e5           mov 0x05,r5                          
            0x0ce30fdc      01e6           mov 0x01,r6                          
            0x0ce30fde      0b4c           jsr @r12                    ;[?]     
            0x0ce30fe0      e364           mov r14,r4                           
            0x0ce30fe2      05e5           mov 0x05,r5                          
            0x0ce30fe4      02e6           mov 0x02,r6                          
            0x0ce30fe6      0b4c           jsr @r12                    ;[?]     
            0x0ce30fe8      e364           mov r14,r4                           
            0x0ce30fea      35c7           mova @(0xD4,PC),r0                   
            0x0ce30fec      08f4           fmov @r0,fr4                         
            0x0ce30fee      5ce0           mov 0x5C,r0                          
            0x0ce30ff0      e6f3           fmov @(r0,r14),fr3                   
            0x0ce30ff2      10e3           mov 0x10,r3                          
            0x0ce30ff4      43f3           fdiv fr4,fr3                         
            0x0ce30ff6      37fe           fmov fr3,@(r0,r14)                   
            0x0ce30ff8      68e0           mov 0x68,r0                          
            0x0ce30ffa      e6f2           fmov @(r0,r14),fr2                   
            0x0ce30ffc      43f2           fdiv fr4,fr2                         
            0x0ce30ffe      27fe           fmov fr2,@(r0,r14)                   
            0x0ce31000      60e0           mov 0x60,r0                          
            0x0ce31002      e6f3           fmov @(r0,r14),fr3                   
            0x0ce31004      43f3           fdiv fr4,fr3                         
            0x0ce31006      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31008      6ce0           mov 0x6C,r0                          
            0x0ce3100a      e6f2           fmov @(r0,r14),fr2                   
            0x0ce3100c      43f2           fdiv fr4,fr2                         
            0x0ce3100e      27fe           fmov fr2,@(r0,r14)                   
            0x0ce31010      e684           mov.b @(0x6,r14),r0                  
            0x0ce31012      0170           add 0x01,r0                          
            0x0ce31014      e680           mov.b r0,@(0x6,r14)                  
            0x0ce31016      4a90           mov.w @(0x94,PC),r0                  
            0x0ce31018      d40e           mov.b r13,@(r0,r14)                  
            0x0ce3101a      ff70           add 0xFF,r0                          
            0x0ce3101c      340e           mov.b r3,@(r0,r14)                   
            0x0ce3101e      4790           mov.w @(0x8E,PC),r0                  
            0x0ce31020      ec00           mov.b @(r0,r14),r0                   
            0x0ce31022      0c60           extu.b r0,r0                         
            0x0ce31024      0288           cmp/eq 0x02,r0                       
       ,==< 0x0ce31026      228b           bf 0x0ce3106e               ;[1]     
       |:   0x0ce31028      38e0           mov 0x38,r0                          
       |:   0x0ce3102a      e6f3           fmov @(r0,r14),fr3                   
       |:   0x0ce3102c      4190           mov.w @(0x82,PC),r0                  
       |:   0x0ce3102e      e6f2           fmov @(r0,r14),fr2                   
       |:   0x0ce31030      35f2           fcmp/gt fr3,fr2                      
      ,===< 0x0ce31032      1f89           bt 0x0ce31074               ;[2]     
      ||:   0x0ce31034      5ce1           mov 0x5C,r1                          
      ||:   0x0ce31036      ec31           add r14,r1                           
      ||:   0x0ce31038      34e0           mov 0x34,r0                          
      ||:   0x0ce3103a      18f3           fmov @r1,fr3                         
      ||:   0x0ce3103c      e6f2           fmov @(r0,r14),fr2                   
      ||:   0x0ce3103e      68e1           mov 0x68,r1                          
      ||:   0x0ce31040      ec31           add r14,r1                           
      ||:   0x0ce31042      30f2           fadd fr3,fr2                         
      ||:   0x0ce31044      27fe           fmov fr2,@(r0,r14)                   
      ||:   0x0ce31046      5ce0           mov 0x5C,r0                          
      ||:   0x0ce31048      e6f2           fmov @(r0,r14),fr2                   
      ||:   0x0ce3104a      18f3           fmov @r1,fr3                         
      ||:   0x0ce3104c      60e1           mov 0x60,r1                          
      ||:   0x0ce3104e      ec31           add r14,r1                           
      ||:   0x0ce31050      30f2           fadd fr3,fr2                         
      ||:   0x0ce31052      27fe           fmov fr2,@(r0,r14)                   
      ||:   0x0ce31054      38e0           mov 0x38,r0                          
      ||:   0x0ce31056      e6f2           fmov @(r0,r14),fr2                   
      ||:   0x0ce31058      18f3           fmov @r1,fr3                         
      ||:   0x0ce3105a      6ce1           mov 0x6C,r1                          
      ||:   0x0ce3105c      ec31           add r14,r1                           
      ||:   0x0ce3105e      30f2           fadd fr3,fr2                         
      ||:   0x0ce31060      27fe           fmov fr2,@(r0,r14)                   
      ||:   0x0ce31062      60e0           mov 0x60,r0                          
      ||:   0x0ce31064      e6f2           fmov @(r0,r14),fr2                   
      ||:   0x0ce31066      18f3           fmov @r1,fr3                         
      ||:   0x0ce31068      30f2           fadd fr3,fr2                         
     ,====< 0x0ce3106a      03a0           bra 0x0ce31074              ;[2]     
     |||:   0x0ce3106c      27fe           fmov fr2,@(r0,r14)                   
     ||`--> 0x0ce3106e      15d2           mov.l @(0x54,PC),r2                  
     || :   0x0ce31070      0b42           jsr @r2                     ;[?]     
     || :   0x0ce31072      e364           mov r14,r4                           
     ``---> 0x0ce31074      14d3           mov.l @(0x50,PC),r3                  
        :   0x0ce31076      0b43           jsr @r3                     ;[?]     
        :   0x0ce31078      e364           mov r14,r4                           
        :   0x0ce3107a      0e60           exts.b r0,r0                         
        :   0x0ce3107c      1140           cmp/pz r0                            
       ,==< 0x0ce3107e      0889           bt 0x0ce31092               ;[3]     
       |:   0x0ce31080      264f           lds.l @r15+,pr                       
       |:   0x0ce31082      1590           mov.w @(0x2A,PC),r0                  
       |:   0x0ce31084      e364           mov r14,r4                           
       |:   0x0ce31086      f66c           mov.l @r15+,r12                      
       |:   0x0ce31088      ec05           mov.b @(r0,r14),r5                   
       |:   0x0ce3108a      f66d           mov.l @r15+,r13                      
       |:   0x0ce3108c      5c65           extu.b r5,r5                         
       |`=< 0x0ce3108e      75aa           bra 0x0ce3057c              ;[4]     
       |    0x0ce31090      f66e           mov.l @r15+,r14                      
       `--> 0x0ce31092      264f           lds.l @r15+,pr                       
            0x0ce31094      f66c           mov.l @r15+,r12                      
            0x0ce31096      f66d           mov.l @r15+,r13                      
            0x0ce31098      0b00           rts                                  
            0x0ce3109a      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce3109c 0x6343 0xd10b 0x2f46 0x8436 0x600c 0x4008 0x031e 0x432b  Cc..F/6..`.@
0x0ce310ac 0x7f04 0x027b 0x01f9 0x041c 
0x0ce310b4  0x8c034e8c 0x8c09cfd0 0x8c0e4b22 0x41000000  .N......"K.....A       
0x0ce310c4  0x8c052c84 0x8c034dee 0x0ce324ac

;==============================================================================
            0x0ce310d0      9590           mov.w @(0x12A,PC),r0                 
            0x0ce310d2      33e3           mov 0x33,r3                          
            0x0ce310d4      e62f           mov.l r14,@-r15                      
            0x0ce310d6      436e           mov r4,r14                           
            0x0ce310d8      d62f           mov.l r13,@-r15                      
            0x0ce310da      00ed           mov 0x00,r13                         
            0x0ce310dc      224f           sts.l pr,@-r15                       
            0x0ce310de      340e           mov.b r3,@(r0,r14)                   
            0x0ce310e0      0b70           add 0x0B,r0                          
            0x0ce310e2      d50e           mov.w r13,@(r0,r14)                  
            0x0ce310e4      f270           add 0xF2,r0                          
            0x0ce310e6      d40e           mov.b r13,@(r0,r14)                  
            0x0ce310e8      2670           add 0x26,r0                          
            0x0ce310ea      47d3           mov.l @(0x11C,PC),r3                 
            0x0ce310ec      10e5           mov 0x10,r5                          
            0x0ce310ee      d60e           mov.l r13,@(r0,r14)                  
            0x0ce310f0      e284           mov.b @(0x2,r14),r0                  
            0x0ce310f2      3262           mov.l @r3,r2                         
            0x0ce310f4      0c60           extu.b r0,r0                         
            0x0ce310f6      0040           shll r0                              
            0x0ce310f8      7c72           add 0x7C,r2                          
            0x0ce310fa      2d01           mov.w @(r0,r2),r1                    
            0x0ce310fc      0171           add 0x01,r1                          
            0x0ce310fe      1502           mov.w r1,@(r0,r2)                    
            0x0ce31100      42d2           mov.l @(0x108,PC),r2                 
            0x0ce31102      0b42           jsr @r2                     ;[?]     
            0x0ce31104      e364           mov r14,r4                           
            0x0ce31106      42d3           mov.l @(0x108,PC),r3                 
            0x0ce31108      d365           mov r13,r5                           
            0x0ce3110a      0b43           jsr @r3                     ;[?]     
            0x0ce3110c      e364           mov r14,r4                           
            0x0ce3110e      7794           mov.w @(0xEE,PC),r4                  
            0x0ce31110      ec34           add r14,r4                           
            0x0ce31112      d360           mov r13,r0                           
            0x0ce31114      0900           nop                                  
            0x0ce31116      3fd3           mov.l @(0xFC,PC),r3                  
            0x0ce31118      15e5           mov 0x15,r5                          
            0x0ce3111a      01e6           mov 0x01,r6                          
            0x0ce3111c      4e80           mov.b r0,@(0xE,r4)                   
            0x0ce3111e      4880           mov.b r0,@(0x8,r4)                   
            0x0ce31120      0b43           jsr @r3                     ;[?]     
            0x0ce31122      e364           mov r14,r4                           
            0x0ce31124      6d90           mov.w @(0xDA,PC),r0                  
            0x0ce31126      ec00           mov.b @(r0,r14),r0                   
            0x0ce31128      0c60           extu.b r0,r0                         
            0x0ce3112a      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce3112c      148b           bf 0x0ce31158               ;[1]     
        |   0x0ce3112e      3ac7           mova @(0xE8,PC),r0                   
        |   0x0ce31130      08f4           fmov @r0,fr4                         
        |   0x0ce31132      5ce0           mov 0x5C,r0                          
        |   0x0ce31134      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce31136      43f3           fdiv fr4,fr3                         
        |   0x0ce31138      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce3113a      68e0           mov 0x68,r0                          
        |   0x0ce3113c      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce3113e      43f2           fdiv fr4,fr2                         
        |   0x0ce31140      9df4           fldi1 fr4                            
        |   0x0ce31142      40f4           fadd fr4,fr4                         
        |   0x0ce31144      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce31146      60e0           mov 0x60,r0                          
        |   0x0ce31148      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce3114a      43f3           fdiv fr4,fr3                         
        |   0x0ce3114c      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce3114e      6ce0           mov 0x6C,r0                          
        |   0x0ce31150      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31152      43f2           fdiv fr4,fr2                         
       ,==< 0x0ce31154      05a0           bra 0x0ce31162              ;[2]     
       ||   0x0ce31156      27fe           fmov fr2,@(r0,r14)                   
       |`-> 0x0ce31158      30d2           mov.l @(0xC0,PC),r2                  
       |    0x0ce3115a      0b42           jsr @r2                     ;[?]     
       |    0x0ce3115c      e364           mov r14,r4                           
       |    0x0ce3115e      5090           mov.w @(0xA0,PC),r0                  
       |    0x0ce31160      d40e           mov.b r13,@(r0,r14)                  
       `--> 0x0ce31162      2fd3           mov.l @(0xBC,PC),r3                  
            0x0ce31164      0b43           jsr @r3                     ;[?]     
            0x0ce31166      e364           mov r14,r4                           
            0x0ce31168      e684           mov.b @(0x6,r14),r0                  
            0x0ce3116a      e364           mov r14,r4                           
            0x0ce3116c      0170           add 0x01,r0                          
            0x0ce3116e      e680           mov.b r0,@(0x6,r14)                  
            0x0ce31170      264f           lds.l @r15+,pr                       
            0x0ce31172      f66d           mov.l @r15+,r13                      
            0x0ce31174      f66e           mov.l @r15+,r14                      
            0x0ce31176      4490           mov.w @(0x88,PC),r0                  
            0x0ce31178      e62f           mov.l r14,@-r15                      
            0x0ce3117a      436e           mov r4,r14                           
            0x0ce3117c      224f           sts.l pr,@-r15                       
            0x0ce3117e      ec00           mov.b @(r0,r14),r0                   
            0x0ce31180      0c60           extu.b r0,r0                         
            0x0ce31182      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce31184      218b           bf 0x0ce311ca               ;[1]     
        |   0x0ce31186      27d2           mov.l @(0x9C,PC),r2                  
        |   0x0ce31188      0b42           jsr @r2                     ;[?]     
        |   0x0ce3118a      e364           mov r14,r4                           
        |   0x0ce3118c      5ce1           mov 0x5C,r1                          
        |   0x0ce3118e      26d3           mov.l @(0x98,PC),r3                  
        |   0x0ce31190      ec31           add r14,r1                           
        |   0x0ce31192      34e0           mov 0x34,r0                          
        |   0x0ce31194      18f3           fmov @r1,fr3                         
        |   0x0ce31196      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31198      68e1           mov 0x68,r1                          
        |   0x0ce3119a      ec31           add r14,r1                           
        |   0x0ce3119c      30f2           fadd fr3,fr2                         
        |   0x0ce3119e      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce311a0      5ce0           mov 0x5C,r0                          
        |   0x0ce311a2      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce311a4      18f3           fmov @r1,fr3                         
        |   0x0ce311a6      60e1           mov 0x60,r1                          
        |   0x0ce311a8      ec31           add r14,r1                           
        |   0x0ce311aa      30f2           fadd fr3,fr2                         
        |   0x0ce311ac      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce311ae      38e0           mov 0x38,r0                          
        |   0x0ce311b0      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce311b2      18f3           fmov @r1,fr3                         
        |   0x0ce311b4      6ce1           mov 0x6C,r1                          
        |   0x0ce311b6      ec31           add r14,r1                           
        |   0x0ce311b8      30f2           fadd fr3,fr2                         
        |   0x0ce311ba      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce311bc      60e0           mov 0x60,r0                          
        |   0x0ce311be      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce311c0      18f3           fmov @r1,fr3                         
        |   0x0ce311c2      30f2           fadd fr3,fr2                         
        |   0x0ce311c4      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce311c6      0b43           jsr @r3                     ;[?]     
        |   0x0ce311c8      e364           mov r14,r4                           
        `-> 0x0ce311ca      18d2           mov.l @(0x60,PC),r2                  
            0x0ce311cc      0b42           jsr @r2                     ;[?]     
            0x0ce311ce      e364           mov r14,r4                           
            0x0ce311d0      1890           mov.w @(0x30,PC),r0                  
            0x0ce311d2      ec03           mov.b @(r0,r14),r3                   
            0x0ce311d4      3823           tst r3,r3                            
        ,=< 0x0ce311d6      0f89           bt 0x0ce311f8               ;[2]     
        |   0x0ce311d8      00e3           mov 0x00,r3                          
        |   0x0ce311da      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce311dc      14d3           mov.l @(0x50,PC),r3                  
        |   0x0ce311de      0b43           jsr @r3                     ;[?]     
        |   0x0ce311e0      e364           mov r14,r4                           
        |   0x0ce311e2      3ce0           mov 0x3C,r0                          
        |   0x0ce311e4      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce311e6      00e3           mov 0x00,r3                          
        |   0x0ce311e8      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce311ea      10e2           mov 0x10,r2                          
        |   0x0ce311ec      0170           add 0x01,r0                          
        |   0x0ce311ee      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce311f0      0990           mov.w @(0x12,PC),r0                  
        |   0x0ce311f2      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce311f4      ff70           add 0xFF,r0                          
        |   0x0ce311f6      240e           mov.b r2,@(r0,r14)                   
        `-> 0x0ce311f8      264f           lds.l @r15+,pr                       
            0x0ce311fa      0b00           rts                                  
            0x0ce311fc      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce311fe 0x01a1 0x02a4 0x01f9 0x0141 0x027b
0x0ce31208  0x8c2896b0 0x8c056de4 0x8c035162 0x8c034e8c  ..(..m..bQ...N..       
0x0ce31218  0x41000000 0x8c05115a 0x8c05218a 0x8c052c84  ...AZ....!...,..       
0x0ce31228  0x8c052ce2 0x8c034dee 0x8c09e0c0

;==============================================================================
            0x0ce31234      9790           mov.w @(0x12E,PC),r0                 
            0x0ce31236      e62f           mov.l r14,@-r15                      
            0x0ce31238      436e           mov r4,r14                           
            0x0ce3123a      224f           sts.l pr,@-r15                       
            0x0ce3123c      ec00           mov.b @(r0,r14),r0                   
            0x0ce3123e      0c60           extu.b r0,r0                         
            0x0ce31240      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce31242      218b           bf 0x0ce31288               ;[1]     
        |   0x0ce31244      4cd2           mov.l @(0x130,PC),r2                 
        |   0x0ce31246      0b42           jsr @r2                     ;[?]     
        |   0x0ce31248      e364           mov r14,r4                           
        |   0x0ce3124a      5ce1           mov 0x5C,r1                          
        |   0x0ce3124c      4bd3           mov.l @(0x12C,PC),r3                 
        |   0x0ce3124e      ec31           add r14,r1                           
        |   0x0ce31250      34e0           mov 0x34,r0                          
        |   0x0ce31252      18f3           fmov @r1,fr3                         
        |   0x0ce31254      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31256      68e1           mov 0x68,r1                          
        |   0x0ce31258      ec31           add r14,r1                           
        |   0x0ce3125a      30f2           fadd fr3,fr2                         
        |   0x0ce3125c      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce3125e      5ce0           mov 0x5C,r0                          
        |   0x0ce31260      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31262      18f3           fmov @r1,fr3                         
        |   0x0ce31264      60e1           mov 0x60,r1                          
        |   0x0ce31266      ec31           add r14,r1                           
        |   0x0ce31268      30f2           fadd fr3,fr2                         
        |   0x0ce3126a      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce3126c      38e0           mov 0x38,r0                          
        |   0x0ce3126e      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31270      18f3           fmov @r1,fr3                         
        |   0x0ce31272      6ce1           mov 0x6C,r1                          
        |   0x0ce31274      ec31           add r14,r1                           
        |   0x0ce31276      30f2           fadd fr3,fr2                         
        |   0x0ce31278      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce3127a      60e0           mov 0x60,r0                          
        |   0x0ce3127c      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce3127e      18f3           fmov @r1,fr3                         
        |   0x0ce31280      30f2           fadd fr3,fr2                         
        |   0x0ce31282      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce31284      0b43           jsr @r3                     ;[?]     
        |   0x0ce31286      e364           mov r14,r4                           
        `-> 0x0ce31288      3dd2           mov.l @(0xF4,PC),r2                  
            0x0ce3128a      0b42           jsr @r2                     ;[?]     
            0x0ce3128c      e364           mov r14,r4                           
            0x0ce3128e      6b90           mov.w @(0xD6,PC),r0                  
            0x0ce31290      ec03           mov.b @(r0,r14),r3                   
            0x0ce31292      3823           tst r3,r3                            
       ,==< 0x0ce31294      058b           bf 0x0ce312a2               ;[1]     
       |:   0x0ce31296      ef85           mov.w @(0x1E,r14),r0                 
       |:   0x0ce31298      ff70           add 0xFF,r0                          
       |:   0x0ce3129a      ef81           mov.w r0,@(0x1E,r14)                 
       |:   0x0ce3129c      0f60           exts.w r0,r0                         
       |:   0x0ce3129e      1140           cmp/pz r0                            
      ,===< 0x0ce312a0      0689           bt 0x0ce312b0               ;[2]     
      |`--> 0x0ce312a2      6090           mov.w @(0xC0,PC),r0                  
      | :   0x0ce312a4      e364           mov r14,r4                           
      | :   0x0ce312a6      264f           lds.l @r15+,pr                       
      | :   0x0ce312a8      ec05           mov.b @(r0,r14),r5                   
      | :   0x0ce312aa      5c65           extu.b r5,r5                         
      | `=< 0x0ce312ac      66a9           bra 0x0ce3057c              ;[3]     
      |     0x0ce312ae      f66e           mov.l @r15+,r14                      
      `---> 0x0ce312b0      264f           lds.l @r15+,pr                       
            0x0ce312b2      0b00           rts                                  
            0x0ce312b4      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce312b6      4363           mov r4,r3                            
            0x0ce312b8      32d1           mov.l @(0xC8,PC),r1                  
            0x0ce312ba      462f           mov.l r4,@-r15                       
            0x0ce312bc      3684           mov.b @(0x6,r3),r0                   
            0x0ce312be      0c60           extu.b r0,r0                         
            0x0ce312c0      0840           shll2 r0                             
            0x0ce312c2      1e03           mov.l @(r0,r1),r3                    
            0x0ce312c4      2b43           jmp @r3                              
            0x0ce312c6      047f           add 0x04,r15                         
            0x0ce312c8      4f90           mov.w @(0x9E,PC),r0                  
            0x0ce312ca      e62f           mov.l r14,@-r15                      
            0x0ce312cc      436e           mov r4,r14                           
            0x0ce312ce      d62f           mov.l r13,@-r15                      
            0x0ce312d0      224f           sts.l pr,@-r15                       
            0x0ce312d2      ec00           mov.b @(r0,r14),r0                   
            0x0ce312d4      0c60           extu.b r0,r0                         
            0x0ce312d6      0688           cmp/eq 0x06,r0                       
        ,=< 0x0ce312d8      058b           bf 0x0ce312e6               ;[1]     
        |   0x0ce312da      4890           mov.w @(0x90,PC),r0                  
        |   0x0ce312dc      10e3           mov 0x10,r3                          
        |   0x0ce312de      4592           mov.w @(0x8A,PC),r2                  
        |   0x0ce312e0      240e           mov.b r2,@(r0,r14)                   
        |   0x0ce312e2      0170           add 0x01,r0                          
        |   0x0ce312e4      340e           mov.b r3,@(r0,r14)                   
        `-> 0x0ce312e6      e684           mov.b @(0x6,r14),r0                  
            0x0ce312e8      27d3           mov.l @(0x9C,PC),r3                  
            0x0ce312ea      0170           add 0x01,r0                          
            0x0ce312ec      e680           mov.b r0,@(0x6,r14)                  
            0x0ce312ee      0b43           jsr @r3                     ;[?]     
            0x0ce312f0      e364           mov r14,r4                           
            0x0ce312f2      3890           mov.w @(0x70,PC),r0                  
            0x0ce312f4      ec00           mov.b @(r0,r14),r0                   
            0x0ce312f6      0c60           extu.b r0,r0                         
            0x0ce312f8      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce312fa      058d           bt.s 0x0ce31308             ;[2]     
        |   0x0ce312fc      00ed           mov 0x00,r13                         
        |   0x0ce312fe      23d2           mov.l @(0x8C,PC),r2                  
        |   0x0ce31300      0b42           jsr @r2                     ;[?]     
        |   0x0ce31302      e364           mov r14,r4                           
        |   0x0ce31304      2f90           mov.w @(0x5E,PC),r0                  
        |   0x0ce31306      d40e           mov.b r13,@(r0,r14)                  
        `-> 0x0ce31308      21d3           mov.l @(0x84,PC),r3                  
            0x0ce3130a      00e5           mov 0x00,r5                          
            0x0ce3130c      0b43           jsr @r3                     ;[?]     
            0x0ce3130e      e364           mov r14,r4                           
            0x0ce31310      2e90           mov.w @(0x5C,PC),r0                  
            0x0ce31312      35e2           mov 0x35,r2                          
            0x0ce31314      1fd3           mov.l @(0x7C,PC),r3                  
            0x0ce31316      10e6           mov 0x10,r6                          
            0x0ce31318      240e           mov.b r2,@(r0,r14)                   
            0x0ce3131a      0b70           add 0x0B,r0                          
            0x0ce3131c      d50e           mov.w r13,@(r0,r14)                  
            0x0ce3131e      f270           add 0xF2,r0                          
            0x0ce31320      d40e           mov.b r13,@(r0,r14)                  
            0x0ce31322      2670           add 0x26,r0                          
            0x0ce31324      d60e           mov.l r13,@(r0,r14)                  
            0x0ce31326      16e5           mov 0x16,r5                          
            0x0ce31328      e284           mov.b @(0x2,r14),r0                  
            0x0ce3132a      e364           mov r14,r4                           
            0x0ce3132c      3262           mov.l @r3,r2                         
            0x0ce3132e      0c60           extu.b r0,r0                         
            0x0ce31330      0040           shll r0                              
            0x0ce31332      7c72           add 0x7C,r2                          
            0x0ce31334      2d01           mov.w @(r0,r2),r1                    
            0x0ce31336      0171           add 0x01,r1                          
            0x0ce31338      1502           mov.w r1,@(r0,r2)                    
            0x0ce3133a      264f           lds.l @r15+,pr                       
            0x0ce3133c      16d2           mov.l @(0x58,PC),r2                  
            0x0ce3133e      f66d           mov.l @r15+,r13                      
            0x0ce31340      2b42           jmp @r2                              
            0x0ce31342      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31344      e62f           mov.l r14,@-r15                      
            0x0ce31346      224f           sts.l pr,@-r15                       
            0x0ce31348      f47f           add 0xF4,r15                         
            0x0ce3134a      1290           mov.w @(0x24,PC),r0                  
            0x0ce3134c      436e           mov r4,r14                           
            0x0ce3134e      02e3           mov 0x02,r3                          
            0x0ce31350      340e           mov.b r3,@(r0,r14)                   
            0x0ce31352      05e2           mov 0x05,r2                          
            0x0ce31354      0e90           mov.w @(0x1C,PC),r0                  
            0x0ce31356      240e           mov.b r2,@(r0,r14)                   
            0x0ce31358      0790           mov.w @(0xE,PC),r0                   
            0x0ce3135a      ec00           mov.b @(r0,r14),r0                   
            0x0ce3135c      0c60           extu.b r0,r0                         
            0x0ce3135e      0688           cmp/eq 0x06,r0                       
        ,=< 0x0ce31360      1c8b           bf 0x0ce3139c               ;[1]     
       ,==< 0x0ce31362      1ca0           bra 0x0ce3139e              ;[2]     
       ||   0x0ce31364      02e3           mov 0x02,r3                          

;##############################################################################
0x0ce31366 0x01f9 0x02ac 0x0255 0x00ff 0x03f0 0x01a1 0x03f8 0x0328  ....U.......
0x0ce31376 0x0000
0x0ce31378  0x8c052c84 0x8c052ce2 0x8c034dee 0x0ce324b8  .,...,...M...$..       
0x0ce31388  0x8c05218a 0x8c05115a 0x8c035162 0x8c2896b0  .!..Z...bQ....(.       
0x0ce31398  0x8c034e8c 

;------------------------------------------------------------------------------
            0x0ce3139c      00e3           mov 0x00,r3                          
            0x0ce3139e      8a90           mov.w @(0x114,PC),r0                 
            0x0ce313a0      340e           mov.b r3,@(r0,r14)                   
            0x0ce313a2      49d3           mov.l @(0x124,PC),r3                 
            0x0ce313a4      0b43           jsr @r3                     ;[?]     
            0x0ce313a6      e364           mov r14,r4                           
            0x0ce313a8      0e60           exts.b r0,r0                         
            0x0ce313aa      1140           cmp/pz r0                            
        ,=< 0x0ce313ac      1189           bt 0x0ce313d2               ;[1]     
        |   0x0ce313ae      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce313b0      16e5           mov 0x16,r5                          
        |   0x0ce313b2      46d3           mov.l @(0x118,PC),r3                 
        |   0x0ce313b4      11e6           mov 0x11,r6                          
        |   0x0ce313b6      0170           add 0x01,r0                          
        |   0x0ce313b8      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce313ba      60e0           mov 0x60,r0                          
        |   0x0ce313bc      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce313be      02e0           mov 0x02,r0                          
        |   0x0ce313c0      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce313c2      0b43           jsr @r3                     ;[?]     
        |   0x0ce313c4      e364           mov r14,r4                           
        |   0x0ce313c6      42d2           mov.l @(0x108,PC),r2                 
        |   0x0ce313c8      18e5           mov 0x18,r5                          
        |   0x0ce313ca      0b42           jsr @r2                     ;[?]     
        |   0x0ce313cc      e364           mov r14,r4                           
       ,==< 0x0ce313ce      1aa0           bra 0x0ce31406              ;[2]     
       ||   0x0ce313d0      0900           nop                                  
       |`-> 0x0ce313d2      7190           mov.w @(0xE2,PC),r0                  
       |    0x0ce313d4      ec02           mov.b @(r0,r14),r2                   
       |    0x0ce313d6      2822           tst r2,r2                            
       |,=< 0x0ce313d8      1589           bt 0x0ce31406               ;[2]     
       ||   0x0ce313da      6e90           mov.w @(0xDC,PC),r0                  
       ||   0x0ce313dc      00e4           mov 0x00,r4                          
       ||   0x0ce313de      3fd3           mov.l @(0xFC,PC),r3                  
       ||   0x0ce313e0      f365           mov r15,r5                           
       ||   0x0ce313e2      440e           mov.b r4,@(r0,r14)                   
       ||   0x0ce313e4      0170           add 0x01,r0                          
       ||   0x0ce313e6      440e           mov.b r4,@(r0,r14)                   
       ||   0x0ce313e8      01e6           mov 0x01,r6                          
       ||   0x0ce313ea      6590           mov.w @(0xCA,PC),r0                  
       ||   0x0ce313ec      440e           mov.b r4,@(r0,r14)                   
       ||   0x0ce313ee      39c7           mova @(0xE4,PC),r0                   
       ||   0x0ce313f0      08f3           fmov @r0,fr3                         
       ||   0x0ce313f2      39c7           mova @(0xE4,PC),r0                   
       ||   0x0ce313f4      3aff           fmov fr3,@r15                        
       ||   0x0ce313f6      08f3           fmov @r0,fr3                         
       ||   0x0ce313f8      04e0           mov 0x04,r0                          
       ||   0x0ce313fa      37ff           fmov fr3,@(r0,r15)                   
       ||   0x0ce313fc      08e0           mov 0x08,r0                          
       ||   0x0ce313fe      8df3           fldi0 fr3                            
       ||   0x0ce31400      37ff           fmov fr3,@(r0,r15)                   
       ||   0x0ce31402      0b43           jsr @r3                     ;[?]     
       ||   0x0ce31404      e364           mov r14,r4                           
       ``-> 0x0ce31406      0c7f           add 0x0C,r15                         
            0x0ce31408      264f           lds.l @r15+,pr                       
            0x0ce3140a      0b00           rts                                  
            0x0ce3140c      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce3140e      5590           mov.w @(0xAA,PC),r0                  
            0x0ce31410      02e3           mov 0x02,r3                          
            0x0ce31412      e62f           mov.l r14,@-r15                      
            0x0ce31414      436e           mov r4,r14                           
            0x0ce31416      224f           sts.l pr,@-r15                       
            0x0ce31418      340e           mov.b r3,@(r0,r14)                   
            0x0ce3141a      05e2           mov 0x05,r2                          
            0x0ce3141c      4f90           mov.w @(0x9E,PC),r0                  
            0x0ce3141e      2ad3           mov.l @(0xA8,PC),r3                  
            0x0ce31420      240e           mov.b r2,@(r0,r14)                   
            0x0ce31422      0b43           jsr @r3                     ;[?]     
            0x0ce31424      e364           mov r14,r4                           
            0x0ce31426      ef85           mov.w @(0x1E,r14),r0                 
            0x0ce31428      ff70           add 0xFF,r0                          
            0x0ce3142a      ef81           mov.w r0,@(0x1E,r14)                 
            0x0ce3142c      0f60           exts.w r0,r0                         
            0x0ce3142e      0820           tst r0,r0                            
        ,=< 0x0ce31430      128b           bf 0x0ce31458               ;[1]     
        |   0x0ce31432      4590           mov.w @(0x8A,PC),r0                  
        |   0x0ce31434      00e4           mov 0x00,r4                          
        |   0x0ce31436      25d3           mov.l @(0x94,PC),r3                  
        |   0x0ce31438      12e6           mov 0x12,r6                          
        |   0x0ce3143a      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce3143c      ff70           add 0xFF,r0                          
        |   0x0ce3143e      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce31440      16e5           mov 0x16,r5                          
        |   0x0ce31442      3e90           mov.w @(0x7C,PC),r0                  
        |   0x0ce31444      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce31446      0170           add 0x01,r0                          
        |   0x0ce31448      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce3144a      e364           mov r14,r4                           
        |   0x0ce3144c      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce3144e      0170           add 0x01,r0                          
        |   0x0ce31450      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31452      264f           lds.l @r15+,pr                       
        |   0x0ce31454      2b43           jmp @r3                              
        |   0x0ce31456      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31458      ee85           mov.w @(0x1C,r14),r0                 
            0x0ce3145a      ff70           add 0xFF,r0                          
            0x0ce3145c      ee81           mov.w r0,@(0x1C,r14)                 
            0x0ce3145e      0f60           exts.w r0,r0                         
            0x0ce31460      0820           tst r0,r0                            
        ,=< 0x0ce31462      0a8b           bf 0x0ce3147a               ;[2]     
        |   0x0ce31464      1ed3           mov.l @(0x78,PC),r3                  
        |   0x0ce31466      02e0           mov 0x02,r0                          
        |   0x0ce31468      0b43           jsr @r3                     ;[?]     
        |   0x0ce3146a      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce3146c      264f           lds.l @r15+,pr                       
        |   0x0ce3146e      1dd3           mov.l @(0x74,PC),r3                  
        |   0x0ce31470      7fc8           tst 0x7F,r0                          
        |   0x0ce31472      2905           movt r5                              
        |   0x0ce31474      e364           mov r14,r4                           
        |   0x0ce31476      2b43           jmp @r3                              
        |   0x0ce31478      f66e           mov.l @r15+,r14                      
        `-> 0x0ce3147a      264f           lds.l @r15+,pr                       
            0x0ce3147c      0b00           rts                                  
            0x0ce3147e      f66e           mov.l @r15+,r14                      

;==============================================================================
        :   0x0ce31480      e62f           mov.l r14,@-r15                      
        :   0x0ce31482      224f           sts.l pr,@-r15                       
        :   0x0ce31484      10d3           mov.l @(0x40,PC),r3                  
        :   0x0ce31486      0b43           jsr @r3                     ;[?]     
        :   0x0ce31488      436e           mov r4,r14                           
        :   0x0ce3148a      0e60           exts.b r0,r0                         
        :   0x0ce3148c      1140           cmp/pz r0                            
       ,==< 0x0ce3148e      0689           bt 0x0ce3149e               ;[1]     
       |:   0x0ce31490      1890           mov.w @(0x30,PC),r0                  
       |:   0x0ce31492      e364           mov r14,r4                           
       |:   0x0ce31494      264f           lds.l @r15+,pr                       
       |:   0x0ce31496      ec05           mov.b @(r0,r14),r5                   
       |:   0x0ce31498      5c65           extu.b r5,r5                         
       |`=< 0x0ce3149a      6fa8           bra 0x0ce3057c              ;[2]     
       |    0x0ce3149c      f66e           mov.l @r15+,r14                      
       `--> 0x0ce3149e      264f           lds.l @r15+,pr                       
            0x0ce314a0      0b00           rts                                  

;==============================================================================
            0x0ce314a2      f66e           mov.l @r15+,r14                      
            0x0ce314a4      4363           mov r4,r3                            
            0x0ce314a6      10d1           mov.l @(0x40,PC),r1                  
            0x0ce314a8      462f           mov.l r4,@-r15                       
            0x0ce314aa      3684           mov.b @(0x6,r3),r0                   
            0x0ce314ac      0c60           extu.b r0,r0                         
            0x0ce314ae      0840           shll2 r0                             
            0x0ce314b0      1e03           mov.l @(r0,r1),r3                    
            0x0ce314b2      2b43           jmp @r3                              
            0x0ce314b4      047f           add 0x04,r15  

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce314b6 0x03f1 0x0141 0x03f0 0x03f8 0x0328 0x03f9 0x0327 0x01f9  ..A.....(...
0x0ce314c6 0x0000
0x0ce314c8  0x8c034dee 0x8c034e8c 0x8c042008 0xc0a00000  .M...N... ......       
0x0ce314d8  0x437cdb6d 0x8c050834 0x8c03319e 0x8c09d564  m.|C4....1..d...       
0x0ce314e8  0x0ce324c8

;==============================================================================
            0x0ce314ec      8a90           mov.w @(0x114,PC),r0                 
            0x0ce314ee      e62f           mov.l r14,@-r15                      
            0x0ce314f0      436e           mov r4,r14                           
            0x0ce314f2      d62f           mov.l r13,@-r15                      
            0x0ce314f4      224f           sts.l pr,@-r15                       
            0x0ce314f6      ec00           mov.b @(r0,r14),r0                   
            0x0ce314f8      0c60           extu.b r0,r0                         
            0x0ce314fa      0688           cmp/eq 0x06,r0                       
        ,=< 0x0ce314fc      068f           bf.s 0x0ce3150c             ;[1]     
        |   0x0ce314fe      e364           mov r14,r4                           
        |   0x0ce31500      8290           mov.w @(0x104,PC),r0                 
        |   0x0ce31502      10e3           mov 0x10,r3                          
        |   0x0ce31504      7f92           mov.w @(0xFE,PC),r2                  
        |   0x0ce31506      240e           mov.b r2,@(r0,r14)                   
        |   0x0ce31508      0170           add 0x01,r0                          
        |   0x0ce3150a      340e           mov.b r3,@(r0,r14)                   
        `-> 0x0ce3150c      42d3           mov.l @(0x108,PC),r3                 
            0x0ce3150e      0b43           jsr @r3                     ;[?]     
            0x0ce31510      0900           nop                                  
            0x0ce31512      42d2           mov.l @(0x108,PC),r2                 
            0x0ce31514      0b42           jsr @r2                     ;[?]     
            0x0ce31516      e364           mov r14,r4                           
            0x0ce31518      41d3           mov.l @(0x104,PC),r3                 
            0x0ce3151a      00e5           mov 0x00,r5                          
            0x0ce3151c      0b43           jsr @r3                     ;[?]     
            0x0ce3151e      e364           mov r14,r4                           
            0x0ce31520      7390           mov.w @(0xE6,PC),r0                  
            0x0ce31522      34e2           mov 0x34,r2                          
            0x0ce31524      00ed           mov 0x00,r13                         
            0x0ce31526      3fd3           mov.l @(0xFC,PC),r3                  
            0x0ce31528      240e           mov.b r2,@(r0,r14)                   
            0x0ce3152a      0b70           add 0x0B,r0                          
            0x0ce3152c      d50e           mov.w r13,@(r0,r14)                  
            0x0ce3152e      f270           add 0xF2,r0                          
            0x0ce31530      d40e           mov.b r13,@(r0,r14)                  
            0x0ce31532      2670           add 0x26,r0                          
            0x0ce31534      d60e           mov.l r13,@(r0,r14)                  
            0x0ce31536      16e5           mov 0x16,r5                          
            0x0ce31538      e284           mov.b @(0x2,r14),r0                  
            0x0ce3153a      d366           mov r13,r6                           
            0x0ce3153c      3262           mov.l @r3,r2                         
            0x0ce3153e      0c60           extu.b r0,r0                         
            0x0ce31540      0040           shll r0                              
            0x0ce31542      7c72           add 0x7C,r2                          
            0x0ce31544      2d01           mov.w @(r0,r2),r1                    
            0x0ce31546      0171           add 0x01,r1                          
            0x0ce31548      1502           mov.w r1,@(r0,r2)                    
            0x0ce3154a      5f90           mov.w @(0xBE,PC),r0                  
            0x0ce3154c      36d2           mov.l @(0xD8,PC),r2                  
            0x0ce3154e      e6f3           fmov @(r0,r14),fr3                   
            0x0ce31550      38e0           mov 0x38,r0                          
            0x0ce31552      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31554      5b90           mov.w @(0xB6,PC),r0                  
            0x0ce31556      d40e           mov.b r13,@(r0,r14)                  
            0x0ce31558      0b42           jsr @r2                     ;[?]     
            0x0ce3155a      e364           mov r14,r4                           
            0x0ce3155c      e684           mov.b @(0x6,r14),r0                  
            0x0ce3155e      e364           mov r14,r4                           
            0x0ce31560      0170           add 0x01,r0                          
            0x0ce31562      e680           mov.b r0,@(0x6,r14)                  
            0x0ce31564      264f           lds.l @r15+,pr                       
            0x0ce31566      f66d           mov.l @r15+,r13                      
            0x0ce31568      f66e           mov.l @r15+,r14                      
            0x0ce3156a      e62f           mov.l r14,@-r15                      
            0x0ce3156c      d62f           mov.l r13,@-r15                      
            0x0ce3156e      224f           sts.l pr,@-r15                       
            0x0ce31570      f47f           add 0xF4,r15                         
            0x0ce31572      4d90           mov.w @(0x9A,PC),r0                  
            0x0ce31574      436e           mov r4,r14                           
            0x0ce31576      02e3           mov 0x02,r3                          
            0x0ce31578      340e           mov.b r3,@(r0,r14)                   
            0x0ce3157a      05e2           mov 0x05,r2                          
            0x0ce3157c      4990           mov.w @(0x92,PC),r0                  
            0x0ce3157e      240e           mov.b r2,@(r0,r14)                   
            0x0ce31580      4090           mov.w @(0x80,PC),r0                  
            0x0ce31582      ec00           mov.b @(r0,r14),r0                   
            0x0ce31584      0c60           extu.b r0,r0                         
            0x0ce31586      0688           cmp/eq 0x06,r0                       
        ,=< 0x0ce31588      018b           bf 0x0ce3158e               ;[1]     
       ,==< 0x0ce3158a      01a0           bra 0x0ce31590              ;[2]     
       ||   0x0ce3158c      02e3           mov 0x02,r3                          
       |`-> 0x0ce3158e      00e3           mov 0x00,r3                          
       `--> 0x0ce31590      4090           mov.w @(0x80,PC),r0                  
            0x0ce31592      00ed           mov 0x00,r13                         
            0x0ce31594      340e           mov.b r3,@(r0,r14)                   
            0x0ce31596      25d3           mov.l @(0x94,PC),r3                  
            0x0ce31598      0b43           jsr @r3                     ;[?]     
            0x0ce3159a      e364           mov r14,r4                           
            0x0ce3159c      0e60           exts.b r0,r0                         
            0x0ce3159e      1140           cmp/pz r0                            
        ,=< 0x0ce315a0      1289           bt 0x0ce315c8               ;[1]     
        |   0x0ce315a2      18e0           mov 0x18,r0                          
        |   0x0ce315a4      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce315a6      d360           mov r13,r0                           
        |   0x0ce315a8      0900           nop                                  
        |   0x0ce315aa      1fd3           mov.l @(0x7C,PC),r3                  
        |   0x0ce315ac      16e5           mov 0x16,r5                          
        |   0x0ce315ae      ef81           mov.w r0,@(0x1E,r14)                 
        |   0x0ce315b0      01e6           mov 0x01,r6                          
        |   0x0ce315b2      0b43           jsr @r3                     ;[?]     
        |   0x0ce315b4      e364           mov r14,r4                           
        |   0x0ce315b6      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce315b8      00e5           mov 0x00,r5                          
        |   0x0ce315ba      1dd3           mov.l @(0x74,PC),r3                  
        |   0x0ce315bc      0170           add 0x01,r0                          
        |   0x0ce315be      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce315c0      0b43           jsr @r3                     ;[?]     
        |   0x0ce315c2      e364           mov r14,r4                           
       ,==< 0x0ce315c4      19a0           bra 0x0ce315fa              ;[2]     
       ||   0x0ce315c6      0900           nop                                  
       |`-> 0x0ce315c8      2590           mov.w @(0x4A,PC),r0                  
       |    0x0ce315ca      ec03           mov.b @(r0,r14),r3                   
       |    0x0ce315cc      3823           tst r3,r3                            
       |,=< 0x0ce315ce      1489           bt 0x0ce315fa               ;[2]     
       ||   0x0ce315d0      1a90           mov.w @(0x34,PC),r0                  
       ||   0x0ce315d2      f365           mov r15,r5                           
       ||   0x0ce315d4      19d3           mov.l @(0x64,PC),r3                  
       ||   0x0ce315d6      01e6           mov 0x01,r6                          
       ||   0x0ce315d8      d40e           mov.b r13,@(r0,r14)                  
       ||   0x0ce315da      0170           add 0x01,r0                          
       ||   0x0ce315dc      d40e           mov.b r13,@(r0,r14)                  
       ||   0x0ce315de      1a90           mov.w @(0x34,PC),r0                  
       ||   0x0ce315e0      d40e           mov.b r13,@(r0,r14)                  
       ||   0x0ce315e2      14c7           mova @(0x50,PC),r0                   
       ||   0x0ce315e4      08f3           fmov @r0,fr3                         
       ||   0x0ce315e6      14c7           mova @(0x50,PC),r0                   
       ||   0x0ce315e8      3aff           fmov fr3,@r15                        
       ||   0x0ce315ea      08f3           fmov @r0,fr3                         
       ||   0x0ce315ec      04e0           mov 0x04,r0                          
       ||   0x0ce315ee      37ff           fmov fr3,@(r0,r15)                   
       ||   0x0ce315f0      08e0           mov 0x08,r0                          
       ||   0x0ce315f2      8df3           fldi0 fr3                            
       ||   0x0ce315f4      37ff           fmov fr3,@(r0,r15)                   
       ||   0x0ce315f6      0b43           jsr @r3                     ;[?]     
       ||   0x0ce315f8      e364           mov r14,r4                           
       ``-> 0x0ce315fa      0c7f           add 0x0C,r15                         
            0x0ce315fc      264f           lds.l @r15+,pr                       
            0x0ce315fe      f66d           mov.l @r15+,r13                      
            0x0ce31600      0b00           rts                                  
            0x0ce31602      f66e           mov.l @r15+,r14                     

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31604 0x0255 0x00ff 0x03f0 0x01a1 0x041c 0x01f9 0x03f8 0x0328  U...........
0x0ce31614 0x03f1 0x0141 
0x0ce31618  0x8c05115a 0x8c05218a 0x8c035162 0x8c2896b0  Z....!..bQ....(.       
0x0ce31628  0x8c034e8c 0x8c034dee 0x8c09d89c 0xc226aaaa  .N...M........&.       
0x0ce31638  0x43586db6 0x8c050834

;==============================================================================
            0x0ce31640      8690           mov.w @(0x10C,PC),r0                 
            0x0ce31642      02e3           mov 0x02,r3                          
            0x0ce31644      e62f           mov.l r14,@-r15                      
            0x0ce31646      436e           mov r4,r14                           
            0x0ce31648      224f           sts.l pr,@-r15                       
            0x0ce3164a      340e           mov.b r3,@(r0,r14)                   
            0x0ce3164c      05e2           mov 0x05,r2                          
            0x0ce3164e      8090           mov.w @(0x100,PC),r0                 
            0x0ce31650      43d3           mov.l @(0x10C,PC),r3                 
            0x0ce31652      240e           mov.b r2,@(r0,r14)                   
            0x0ce31654      0b43           jsr @r3                     ;[?]     
            0x0ce31656      e364           mov r14,r4                           
            0x0ce31658      ee85           mov.w @(0x1C,r14),r0                 
            0x0ce3165a      ff70           add 0xFF,r0                          
            0x0ce3165c      ee81           mov.w r0,@(0x1C,r14)                 
            0x0ce3165e      0f60           exts.w r0,r0                         
            0x0ce31660      1140           cmp/pz r0                            
        ,=< 0x0ce31662      0989           bt 0x0ce31678               ;[1]     
        |   0x0ce31664      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce31666      e364           mov r14,r4                           
        |   0x0ce31668      3ed3           mov.l @(0xF8,PC),r3                  
        |   0x0ce3166a      02e6           mov 0x02,r6                          
        |   0x0ce3166c      0170           add 0x01,r0                          
        |   0x0ce3166e      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31670      16e5           mov 0x16,r5                          
        |   0x0ce31672      264f           lds.l @r15+,pr                       
        |   0x0ce31674      2b43           jmp @r3                              
        |   0x0ce31676      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31678      264f           lds.l @r15+,pr                       
            0x0ce3167a      0b00           rts                                  
            0x0ce3167c      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce3167e      6790           mov.w @(0xCE,PC),r0                  
            0x0ce31680      02e3           mov 0x02,r3                          
            0x0ce31682      e62f           mov.l r14,@-r15                      
            0x0ce31684      436e           mov r4,r14                           
            0x0ce31686      224f           sts.l pr,@-r15                       
            0x0ce31688      340e           mov.b r3,@(r0,r14)                   
            0x0ce3168a      05e2           mov 0x05,r2                          
            0x0ce3168c      6190           mov.w @(0xC2,PC),r0                  
            0x0ce3168e      34d3           mov.l @(0xD0,PC),r3                  
            0x0ce31690      240e           mov.b r2,@(r0,r14)                   
            0x0ce31692      0b43           jsr @r3                     ;[?]     
            0x0ce31694      e364           mov r14,r4                           
            0x0ce31696      0e60           exts.b r0,r0                         
            0x0ce31698      1140           cmp/pz r0                            
        ,=< 0x0ce3169a      1189           bt 0x0ce316c0               ;[1]     
        |   0x0ce3169c      5a90           mov.w @(0xB4,PC),r0                  
        |   0x0ce3169e      00e4           mov 0x00,r4                          
        |   0x0ce316a0      31d3           mov.l @(0xC4,PC),r3                  
        |   0x0ce316a2      4365           mov r4,r5                            
        |   0x0ce316a4      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce316a6      ff70           add 0xFF,r0                          
        |   0x0ce316a8      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce316aa      5490           mov.w @(0xA8,PC),r0                  
        |   0x0ce316ac      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce316ae      0170           add 0x01,r0                          
        |   0x0ce316b0      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce316b2      0b43           jsr @r3                     ;[?]     
        |   0x0ce316b4      e364           mov r14,r4                           
        |   0x0ce316b6      264f           lds.l @r15+,pr                       
        |   0x0ce316b8      2cd2           mov.l @(0xB0,PC),r2                  
        |   0x0ce316ba      e364           mov r14,r4                           
        |   0x0ce316bc      2b42           jmp @r2                              
        |   0x0ce316be      f66e           mov.l @r15+,r14                      
        `-> 0x0ce316c0      264f           lds.l @r15+,pr                       
            0x0ce316c2      0b00           rts                                  
            0x0ce316c4      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce316c6      4363           mov r4,r3                            
            0x0ce316c8      29d1           mov.l @(0xA4,PC),r1                  
            0x0ce316ca      462f           mov.l r4,@-r15                       
            0x0ce316cc      3684           mov.b @(0x6,r3),r0                   
            0x0ce316ce      0c60           extu.b r0,r0                         
            0x0ce316d0      0840           shll2 r0                             
            0x0ce316d2      1e03           mov.l @(r0,r1),r3                    
            0x0ce316d4      2b43           jmp @r3                              
            0x0ce316d6      047f           add 0x04,r15                         

;==============================================================================
            0x0ce316d8      3e90           mov.w @(0x7C,PC),r0                  
            0x0ce316da      e62f           mov.l r14,@-r15                      
            0x0ce316dc      436e           mov r4,r14                           
            0x0ce316de      224f           sts.l pr,@-r15                       
            0x0ce316e0      ec03           mov.b @(r0,r14),r3                   
            0x0ce316e2      3823           tst r3,r3                            
        ,=< 0x0ce316e4      0389           bt 0x0ce316ee               ;[1]     
        |   0x0ce316e6      264f           lds.l @r15+,pr                       
        |   0x0ce316e8      e364           mov r14,r4                           
       ,==< 0x0ce316ea      76a0           bra 0x0ce317da              ;[2]     
       ||   0x0ce316ec      f66e           mov.l @r15+,r14                      
       |`-> 0x0ce316ee      e684           mov.b @(0x6,r14),r0                  
       |    0x0ce316f0      0170           add 0x01,r0                          
       |    0x0ce316f2      e680           mov.b r0,@(0x6,r14)                  
       |    0x0ce316f4      3190           mov.w @(0x62,PC),r0                  
       |    0x0ce316f6      ec00           mov.b @(r0,r14),r0                   
       |    0x0ce316f8      0c60           extu.b r0,r0                         
       |    0x0ce316fa      0288           cmp/eq 0x02,r0                       
       |,=< 0x0ce316fc      0289           bt 0x0ce31704               ;[3]     
       ||   0x0ce316fe      1dd2           mov.l @(0x74,PC),r2                  
       ||   0x0ce31700      0b42           jsr @r2                     ;[?]     
       ||   0x0ce31702      e364           mov r14,r4                           
       |`-> 0x0ce31704      2890           mov.w @(0x50,PC),r0                  
       |    0x0ce31706      02e2           mov 0x02,r2                          
       |    0x0ce31708      2893           mov.w @(0x50,PC),r3                  
       |    0x0ce3170a      8df4           fldi0 fr4                            
       |    0x0ce3170c      340e           mov.b r3,@(r0,r14)                   
       |    0x0ce3170e      f870           add 0xF8,r0                          
       |    0x0ce31710      240e           mov.b r2,@(r0,r14)                   
       |    0x0ce31712      0370           add 0x03,r0                          
       |    0x0ce31714      00e3           mov 0x00,r3                          
       |    0x0ce31716      340e           mov.b r3,@(r0,r14)                   
       |    0x0ce31718      17c7           mova @(0x5C,PC),r0                   
       |    0x0ce3171a      08f3           fmov @r0,fr3                         
       |    0x0ce3171c      60e0           mov 0x60,r0                          
       |    0x0ce3171e      1e93           mov.w @(0x3C,PC),r3                  
       |    0x0ce31720      37fe           fmov fr3,@(r0,r14)                   
       |    0x0ce31722      16c7           mova @(0x58,PC),r0                   
       |    0x0ce31724      08f3           fmov @r0,fr3                         
       |    0x0ce31726      6ce0           mov 0x6C,r0                          
       |    0x0ce31728      37fe           fmov fr3,@(r0,r14)                   
       |    0x0ce3172a      5ce0           mov 0x5C,r0                          
       |    0x0ce3172c      47fe           fmov fr4,@(r0,r14)                   
       |    0x0ce3172e      68e0           mov 0x68,r0                          
       |    0x0ce31730      47fe           fmov fr4,@(r0,r14)                   
       |    0x0ce31732      3360           mov r3,r0                            
       |    0x0ce31734      0900           nop                                  
       |    0x0ce31736      5270           add 0x52,r0                          
       |    0x0ce31738      350e           mov.w r3,@(r0,r14)                   
       |    0x0ce3173a      10e0           mov 0x10,r0                          
       |    0x0ce3173c      09d3           mov.l @(0x24,PC),r3                  
       |    0x0ce3173e      1ae5           mov 0x1A,r5                          
       |    0x0ce31740      ee81           mov.w r0,@(0x1C,r14)                 
       |    0x0ce31742      00e6           mov 0x00,r6                          
       |    0x0ce31744      0b43           jsr @r3                     ;[?]     
       |    0x0ce31746      e364           mov r14,r4                           
       |    0x0ce31748      264f           lds.l @r15+,pr                       
       |    0x0ce3174a      e364           mov r14,r4                           
       |,=< 0x0ce3174c      18a0           bra 0x0ce31780              ;[4]     
       ||   0x0ce3174e      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31750 0x03f8 0x0328 0x03f9 0x0327 0x0201 0x01f9 0x00ff 0x0258
0x0ce31760  0x8c034dee 0x8c034e8c 0x8c035162 0x8c051648  .M...N..bQ..H...       
0x0ce31770  0x0ce324d8 0x8c05115a 0x414db6db 0xbe892492 

;==============================================================================
            0x0ce31780      e62f           mov.l r14,@-r15                      
            0x0ce31782      5ce1           mov 0x5C,r1                          
            0x0ce31784      436e           mov r4,r14                           
            0x0ce31786      ec31           add r14,r1                           
            0x0ce31788      34e0           mov 0x34,r0                          
            0x0ce3178a      43d3           mov.l @(0x10C,PC),r3                 
            0x0ce3178c      224f           sts.l pr,@-r15                       
            0x0ce3178e      e6f2           fmov @(r0,r14),fr2                   
            0x0ce31790      18f3           fmov @r1,fr3                         
            0x0ce31792      68e1           mov 0x68,r1                          
            0x0ce31794      ec31           add r14,r1                           
            0x0ce31796      30f2           fadd fr3,fr2                         
            0x0ce31798      27fe           fmov fr2,@(r0,r14)                   
            0x0ce3179a      5ce0           mov 0x5C,r0                          
            0x0ce3179c      18f3           fmov @r1,fr3                         
            0x0ce3179e      60e1           mov 0x60,r1                          
            0x0ce317a0      e6f2           fmov @(r0,r14),fr2                   
            0x0ce317a2      ec31           add r14,r1                           
            0x0ce317a4      30f2           fadd fr3,fr2                         
            0x0ce317a6      27fe           fmov fr2,@(r0,r14)                   
            0x0ce317a8      38e0           mov 0x38,r0                          
            0x0ce317aa      e6f2           fmov @(r0,r14),fr2                   
            0x0ce317ac      18f3           fmov @r1,fr3                         
            0x0ce317ae      6ce1           mov 0x6C,r1                          
            0x0ce317b0      ec31           add r14,r1                           
            0x0ce317b2      30f2           fadd fr3,fr2                         
            0x0ce317b4      27fe           fmov fr2,@(r0,r14)                   
            0x0ce317b6      60e0           mov 0x60,r0                          
            0x0ce317b8      e6f2           fmov @(r0,r14),fr2                   
            0x0ce317ba      18f3           fmov @r1,fr3                         
            0x0ce317bc      30f2           fadd fr3,fr2                         
            0x0ce317be      27fe           fmov fr2,@(r0,r14)                   
            0x0ce317c0      0b43           jsr @r3                     ;[?]     
            0x0ce317c2      e364           mov r14,r4                           
            0x0ce317c4      0e60           exts.b r0,r0                         
            0x0ce317c6      1140           cmp/pz r0                            
        ,=< 0x0ce317c8      0489           bt 0x0ce317d4               ;[1]     
        |   0x0ce317ca      264f           lds.l @r15+,pr                       
        |   0x0ce317cc      33d3           mov.l @(0xCC,PC),r3                  
        |   0x0ce317ce      e364           mov r14,r4                           
        |   0x0ce317d0      2b43           jmp @r3                              
        |   0x0ce317d2      f66e           mov.l @r15+,r14                      
        `-> 0x0ce317d4      264f           lds.l @r15+,pr                       
            0x0ce317d6      0b00           rts                                  
            0x0ce317d8      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce317da      5990           mov.w @(0xB2,PC),r0                  
            0x0ce317dc      00e3           mov 0x00,r3                          
            0x0ce317de      8df3           fldi0 fr3                            
            0x0ce317e0      3404           mov.b r3,@(r0,r4)                    
            0x0ce317e2      68e0           mov 0x68,r0                          
            0x0ce317e4      37f4           fmov fr3,@(r0,r4)                    
            0x0ce317e6      60e0           mov 0x60,r0                          
            0x0ce317e8      37f4           fmov fr3,@(r0,r4)                    
            0x0ce317ea      5ce0           mov 0x5C,r0                          
            0x0ce317ec      37f4           fmov fr3,@(r0,r4)                    
            0x0ce317ee      2cc7           mova @(0xB0,PC),r0                   
            0x0ce317f0      2cd3           mov.l @(0xB0,PC),r3                  
            0x0ce317f2      08f3           fmov @r0,fr3                         
            0x0ce317f4      6ce0           mov 0x6C,r0                          
            0x0ce317f6      2b43           jmp @r3                              
            0x0ce317f8      37f4           fmov fr3,@(r0,r4)                    

;==============================================================================
            0x0ce317fa      e62f           mov.l r14,@-r15                      
            0x0ce317fc      436e           mov r4,r14                           
            0x0ce317fe      d62f           mov.l r13,@-r15                      
            0x0ce31800      224f           sts.l pr,@-r15                       
            0x0ce31802      e684           mov.b @(0x6,r14),r0                  
            0x0ce31804      0820           tst r0,r0                            
        ,=< 0x0ce31806      398f           bf.s 0x0ce3187c             ;[1]     
        |   0x0ce31808      00ed           mov 0x00,r13                         
        |   0x0ce3180a      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce3180c      02e5           mov 0x02,r5                          
        |   0x0ce3180e      26d3           mov.l @(0x98,PC),r3                  
        |   0x0ce31810      0170           add 0x01,r0                          
        |   0x0ce31812      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31814      0b43           jsr @r3                     ;[?]     
        |   0x0ce31816      e364           mov r14,r4                           
        |   0x0ce31818      24d2           mov.l @(0x90,PC),r2                  
        |   0x0ce3181a      0b42           jsr @r2                     ;[?]     
        |   0x0ce3181c      e364           mov r14,r4                           
        |   0x0ce3181e      24d3           mov.l @(0x90,PC),r3                  
        |   0x0ce31820      00e5           mov 0x00,r5                          
        |   0x0ce31822      0b43           jsr @r3                     ;[?]     
        |   0x0ce31824      e364           mov r14,r4                           
        |   0x0ce31826      3490           mov.w @(0x68,PC),r0                  
        |   0x0ce31828      36e2           mov 0x36,r2                          
        |   0x0ce3182a      22d3           mov.l @(0x88,PC),r3                  
        |   0x0ce3182c      15e5           mov 0x15,r5                          
        |   0x0ce3182e      240e           mov.b r2,@(r0,r14)                   
        |   0x0ce31830      0b70           add 0x0B,r0                          
        |   0x0ce31832      d50e           mov.w r13,@(r0,r14)                  
        |   0x0ce31834      f270           add 0xF2,r0                          
        |   0x0ce31836      d40e           mov.b r13,@(r0,r14)                  
        |   0x0ce31838      2670           add 0x26,r0                          
        |   0x0ce3183a      d60e           mov.l r13,@(r0,r14)                  
        |   0x0ce3183c      12e6           mov 0x12,r6                          
        |   0x0ce3183e      e284           mov.b @(0x2,r14),r0                  
        |   0x0ce31840      3262           mov.l @r3,r2                         
        |   0x0ce31842      0c60           extu.b r0,r0                         
        |   0x0ce31844      0040           shll r0                              
        |   0x0ce31846      7c72           add 0x7C,r2                          
        |   0x0ce31848      2d01           mov.w @(r0,r2),r1                    
        |   0x0ce3184a      0171           add 0x01,r1                          
        |   0x0ce3184c      1502           mov.w r1,@(r0,r2)                    
        |   0x0ce3184e      1ad2           mov.l @(0x68,PC),r2                  
        |   0x0ce31850      0b42           jsr @r2                     ;[?]     
        |   0x0ce31852      e364           mov r14,r4                           
        |   0x0ce31854      1e90           mov.w @(0x3C,PC),r0                  
        |   0x0ce31856      d40e           mov.b r13,@(r0,r14)                  
        |   0x0ce31858      18c7           mova @(0x60,PC),r0                   
        |   0x0ce3185a      08f4           fmov @r0,fr4                         
        |   0x0ce3185c      5ce0           mov 0x5C,r0                          
        |   0x0ce3185e      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce31860      43f3           fdiv fr4,fr3                         
        |   0x0ce31862      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce31864      68e0           mov 0x68,r0                          
        |   0x0ce31866      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31868      43f2           fdiv fr4,fr2                         
        |   0x0ce3186a      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce3186c      60e0           mov 0x60,r0                          
        |   0x0ce3186e      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce31870      43f3           fdiv fr4,fr3                         
        |   0x0ce31872      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce31874      6ce0           mov 0x6C,r0                          
        |   0x0ce31876      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31878      43f2           fdiv fr4,fr2                         
        |   0x0ce3187a      27fe           fmov fr2,@(r0,r14)                   
        `-> 0x0ce3187c      0b90           mov.w @(0x16,PC),r0                  
            0x0ce3187e      ec00           mov.b @(r0,r14),r0                   
            0x0ce31880      0c60           extu.b r0,r0                         
            0x0ce31882      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce31884      1e89           bt 0x0ce318c4               ;[1]     
        |   0x0ce31886      0ed2           mov.l @(0x38,PC),r2                  
        |   0x0ce31888      0b42           jsr @r2                     ;[?]     
        |   0x0ce3188a      e364           mov r14,r4                           
       ,==< 0x0ce3188c      3ca0           bra 0x0ce31908              ;[2]     
       ||   0x0ce3188e      0900           nop                                  

;##############################################################################
0x0ce31890 0x0201 0x01a1 0x01d6 0x01f9
0x0ce31898  0x8c034dee 0x8c051648 0xbf4db6db 0x8c05176e  .M..H.....M.n...       
0x0ce318a8  0x8c056de4 0x8c05218a 0x8c035162 0x8c2896b0  .m...!..bQ....(.       
0x0ce318b8  0x8c034e8c 0x41000000 0x8c052c84

;------------------------------------------------------------------------------
            0x0ce318c4      38e0           mov 0x38,r0                          
            0x0ce318c6      e6f3           fmov @(r0,r14),fr3                   
            0x0ce318c8      8790           mov.w @(0x10E,PC),r0                 
            0x0ce318ca      e6f2           fmov @(r0,r14),fr2                   
            0x0ce318cc      35f2           fcmp/gt fr3,fr2                      
        ,=< 0x0ce318ce      1b89           bt 0x0ce31908               ;[1]     
        |   0x0ce318d0      5ce1           mov 0x5C,r1                          
        |   0x0ce318d2      ec31           add r14,r1                           
        |   0x0ce318d4      34e0           mov 0x34,r0                          
        |   0x0ce318d6      18f3           fmov @r1,fr3                         
        |   0x0ce318d8      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce318da      68e1           mov 0x68,r1                          
        |   0x0ce318dc      ec31           add r14,r1                           
        |   0x0ce318de      30f2           fadd fr3,fr2                         
        |   0x0ce318e0      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce318e2      5ce0           mov 0x5C,r0                          
        |   0x0ce318e4      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce318e6      18f3           fmov @r1,fr3                         
        |   0x0ce318e8      60e1           mov 0x60,r1                          
        |   0x0ce318ea      ec31           add r14,r1                           
        |   0x0ce318ec      30f2           fadd fr3,fr2                         
        |   0x0ce318ee      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce318f0      38e0           mov 0x38,r0                          
        |   0x0ce318f2      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce318f4      18f3           fmov @r1,fr3                         
        |   0x0ce318f6      6ce1           mov 0x6C,r1                          
        |   0x0ce318f8      ec31           add r14,r1                           
        |   0x0ce318fa      30f2           fadd fr3,fr2                         
        |   0x0ce318fc      27fe           fmov fr2,@(r0,r14)                   
        |   0x0ce318fe      60e0           mov 0x60,r0                          
        |   0x0ce31900      e6f2           fmov @(r0,r14),fr2                   
        |   0x0ce31902      18f3           fmov @r1,fr3                         
        |   0x0ce31904      30f2           fadd fr3,fr2                         
        |   0x0ce31906      27fe           fmov fr2,@(r0,r14)                   
        `-> 0x0ce31908      36d3           mov.l @(0xD8,PC),r3                  
            0x0ce3190a      0b43           jsr @r3                     ;[?]     
            0x0ce3190c      e364           mov r14,r4                           
            0x0ce3190e      0e60           exts.b r0,r0                         
            0x0ce31910      1140           cmp/pz r0                            
        ,=< 0x0ce31912      0689           bt 0x0ce31922               ;[2]     
        |   0x0ce31914      264f           lds.l @r15+,pr                       
        |   0x0ce31916      34d3           mov.l @(0xD0,PC),r3                  
        |   0x0ce31918      e364           mov r14,r4                           
        |   0x0ce3191a      02e5           mov 0x02,r5                          
        |   0x0ce3191c      f66d           mov.l @r15+,r13                      
        |   0x0ce3191e      2b43           jmp @r3                              
        |   0x0ce31920      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31922      5b90           mov.w @(0xB6,PC),r0                  
            0x0ce31924      ec03           mov.b @(r0,r14),r3                   
            0x0ce31926      3823           tst r3,r3                            
        ,=< 0x0ce31928      0f89           bt 0x0ce3194a               ;[1]     
        |   0x0ce3192a      d40e           mov.b r13,@(r0,r14)                  
        |   0x0ce3192c      01e3           mov 0x01,r3                          
        |   0x0ce3192e      5690           mov.w @(0xAC,PC),r0                  
        |   0x0ce31930      00e5           mov 0x00,r5                          
        |   0x0ce31932      e364           mov r14,r4                           
        |   0x0ce31934      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce31936      cb70           add 0xCB,r0                          
        |   0x0ce31938      d40e           mov.b r13,@(r0,r14)                  
        |   0x0ce3193a      ff70           add 0xFF,r0                          
        |   0x0ce3193c      10e3           mov 0x10,r3                          
        |   0x0ce3193e      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce31940      264f           lds.l @r15+,pr                       
        |   0x0ce31942      2ad3           mov.l @(0xA8,PC),r3                  
        |   0x0ce31944      f66d           mov.l @r15+,r13                      
        |   0x0ce31946      2b43           jmp @r3                              
        |   0x0ce31948      f66e           mov.l @r15+,r14                      
        `-> 0x0ce3194a      264f           lds.l @r15+,pr                       
            0x0ce3194c      f66d           mov.l @r15+,r13                      
            0x0ce3194e      0b00           rts                                  
            0x0ce31950      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31952      e62f           mov.l r14,@-r15                      
            0x0ce31954      436e           mov r4,r14                           
            0x0ce31956      26d1           mov.l @(0x98,PC),r1                  
            0x0ce31958      224f           sts.l pr,@-r15                       
            0x0ce3195a      e684           mov.b @(0x6,r14),r0                  
            0x0ce3195c      0c60           extu.b r0,r0                         
            0x0ce3195e      0840           shll2 r0                             
            0x0ce31960      1e03           mov.l @(r0,r1),r3                    
            0x0ce31962      0b43           jsr @r3                     ;[?]     
            0x0ce31964      0900           nop                                  
            0x0ce31966      3b90           mov.w @(0x76,PC),r0                  
            0x0ce31968      ec03           mov.b @(r0,r14),r3                   
            0x0ce3196a      3823           tst r3,r3                            
        ,=< 0x0ce3196c      1489           bt 0x0ce31998               ;[1]     
        |   0x0ce3196e      ec03           mov.b @(r0,r14),r3                   
        |   0x0ce31970      5670           add 0x56,r0                          
        |   0x0ce31972      00e4           mov 0x00,r4                          
        |   0x0ce31974      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce31976      0b70           add 0x0B,r0                          
        |   0x0ce31978      450e           mov.w r4,@(r0,r14)                   
        |   0x0ce3197a      f270           add 0xF2,r0                          
        |   0x0ce3197c      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce3197e      2670           add 0x26,r0                          
        |   0x0ce31980      1cd3           mov.l @(0x70,PC),r3                  
        |   0x0ce31982      460e           mov.l r4,@(r0,r14)                   
        |   0x0ce31984      e284           mov.b @(0x2,r14),r0                  
        |   0x0ce31986      3262           mov.l @r3,r2                         
        |   0x0ce31988      0c60           extu.b r0,r0                         
        |   0x0ce3198a      0040           shll r0                              
        |   0x0ce3198c      7c72           add 0x7C,r2                          
        |   0x0ce3198e      2d01           mov.w @(r0,r2),r1                    
        |   0x0ce31990      0171           add 0x01,r1                          
        |   0x0ce31992      1502           mov.w r1,@(r0,r2)                    
        |   0x0ce31994      2490           mov.w @(0x48,PC),r0                  
        |   0x0ce31996      440e           mov.b r4,@(r0,r14)                   
        `-> 0x0ce31998      264f           lds.l @r15+,pr                       
            0x0ce3199a      0b00           rts                                  
            0x0ce3199c      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce3199e      e62f           mov.l r14,@-r15                      
            0x0ce319a0      436e           mov r4,r14                           
            0x0ce319a2      224f           sts.l pr,@-r15                       
            0x0ce319a4      e684           mov.b @(0x6,r14),r0                  
            0x0ce319a6      00e5           mov 0x00,r5                          
            0x0ce319a8      13d3           mov.l @(0x4C,PC),r3                  
            0x0ce319aa      0170           add 0x01,r0                          
            0x0ce319ac      e680           mov.b r0,@(0x6,r14)                  
            0x0ce319ae      0b43           jsr @r3                     ;[?]     
            0x0ce319b0      e364           mov r14,r4                           
            0x0ce319b2      12d2           mov.l @(0x48,PC),r2                  
            0x0ce319b4      0b42           jsr @r2                     ;[?]     
            0x0ce319b6      e364           mov r14,r4                           
            0x0ce319b8      11d3           mov.l @(0x44,PC),r3                  
            0x0ce319ba      0b43           jsr @r3                     ;[?]     
            0x0ce319bc      e364           mov r14,r4                           
            0x0ce319be      1090           mov.w @(0x20,PC),r0                  
            0x0ce319c0      00e2           mov 0x00,r2                          
            0x0ce319c2      10d3           mov.l @(0x40,PC),r3                  
            0x0ce319c4      05e5           mov 0x05,r5                          
            0x0ce319c6      240e           mov.b r2,@(r0,r14)                   
            0x0ce319c8      0b43           jsr @r3                     ;[?]     
            0x0ce319ca      e364           mov r14,r4                           
            0x0ce319cc      264f           lds.l @r15+,pr                       
            0x0ce319ce      0ed2           mov.l @(0x38,PC),r2                  
            0x0ce319d0      e364           mov r14,r4                           
            0x0ce319d2      13e6           mov 0x13,r6                          
            0x0ce319d4      15e5           mov 0x15,r5                          
            0x0ce319d6      2b42           jmp @r2                              
            0x0ce319d8      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce319da 0x041c 0x0141 0x02b0 0x014b 0x01f9
0x0ce319e4  0x8c034dee 0x0ce3057c 0x8c09cfd0 0x0ce324e0  .M..|........$..       
0x0ce319f4  0x8c2896b0 0x8c035162 0x8c05218a 0x8c05115a  ..(.bQ...!..Z...       
0x0ce31a04  0x8c056de4 0x8c034e8c

;==============================================================================
            0x0ce31a0c      e62f           mov.l r14,@-r15                      
            0x0ce31a0e      224f           sts.l pr,@-r15                       
            0x0ce31a10      4cd3           mov.l @(0x130,PC),r3                 
            0x0ce31a12      0b43           jsr @r3                     ;[?]     
            0x0ce31a14      436e           mov r4,r14                           
            0x0ce31a16      8e90           mov.w @(0x11C,PC),r0                 
            0x0ce31a18      ec02           mov.b @(r0,r14),r2                   
            0x0ce31a1a      2822           tst r2,r2                            
        ,=< 0x0ce31a1c      1089           bt 0x0ce31a40               ;[1]     
        |   0x0ce31a1e      00e3           mov 0x00,r3                          
        |   0x0ce31a20      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce31a22      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce31a24      8893           mov.w @(0x110,PC),r3                 
        |   0x0ce31a26      0170           add 0x01,r0                          
        |   0x0ce31a28      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31a2a      8690           mov.w @(0x10C,PC),r0                 
        |   0x0ce31a2c      350e           mov.w r3,@(r0,r14)                   
        |   0x0ce31a2e      10e0           mov 0x10,r0                          
        |   0x0ce31a30      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce31a32      8390           mov.w @(0x106,PC),r0                 
        |   0x0ce31a34      ec03           mov.b @(r0,r14),r3                   
        |   0x0ce31a36      3823           tst r3,r3                            
       ,==< 0x0ce31a38      028b           bf 0x0ce31a40               ;[1]     
       ||   0x0ce31a3a      ee85           mov.w @(0x1C,r14),r0                 
       ||   0x0ce31a3c      0470           add 0x04,r0                          
       ||   0x0ce31a3e      ee81           mov.w r0,@(0x1C,r14)                 
       ``-> 0x0ce31a40      264f           lds.l @r15+,pr                       
            0x0ce31a42      0b00           rts                                  
            0x0ce31a44      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31a46      7890           mov.w @(0xF0,PC),r0                  
            0x0ce31a48      e62f           mov.l r14,@-r15                      
            0x0ce31a4a      436e           mov r4,r14                           
            0x0ce31a4c      d62f           mov.l r13,@-r15                      
            0x0ce31a4e      224f           sts.l pr,@-r15                       
            0x0ce31a50      ed00           mov.w @(r0,r14),r0                   
            0x0ce31a52      3ddd           mov.l @(0xF4,PC),r13                 
            0x0ce31a54      0d60           extu.w r0,r0                         
            0x0ce31a56      80c8           tst 0x80,r0                          
        ,=< 0x0ce31a58      178d           bt.s 0x0ce31a8a             ;[1]     
        |   0x0ce31a5a      00e4           mov 0x00,r4                          
        |   0x0ce31a5c      ee85           mov.w @(0x1C,r14),r0                 
        |   0x0ce31a5e      ff70           add 0xFF,r0                          
        |   0x0ce31a60      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce31a62      0f60           exts.w r0,r0                         
        |   0x0ce31a64      0820           tst r0,r0                            
       ,==< 0x0ce31a66      0a8b           bf 0x0ce31a7e               ;[2]     
       ||   0x0ce31a68      e684           mov.b @(0x6,r14),r0                  
       ||   0x0ce31a6a      15e6           mov 0x15,r6                          
       ||   0x0ce31a6c      6365           mov r6,r5                            
       ||   0x0ce31a6e      0170           add 0x01,r0                          
       ||   0x0ce31a70      e680           mov.b r0,@(0x6,r14)                  
       ||   0x0ce31a72      6290           mov.w @(0xC4,PC),r0                  
       ||   0x0ce31a74      450e           mov.w r4,@(r0,r14)                   
       ||   0x0ce31a76      0b4d           jsr @r13                    ;[?]     
       ||   0x0ce31a78      e364           mov r14,r4                           
      ,===< 0x0ce31a7a      2ba0           bra 0x0ce31ad4              ;[3]     
      |||   0x0ce31a7c      0900           nop                                  
      |`--> 0x0ce31a7e      264f           lds.l @r15+,pr                       
      | |   0x0ce31a80      30d2           mov.l @(0xC0,PC),r2                  
      | |   0x0ce31a82      e364           mov r14,r4                           
      | |   0x0ce31a84      f66d           mov.l @r15+,r13                      
      | |   0x0ce31a86      2b42           jmp @r2                              
      | |   0x0ce31a88      f66e           mov.l @r15+,r14                      
      | `-> 0x0ce31a8a      e684           mov.b @(0x6,r14),r0                  
      |     0x0ce31a8c      0170           add 0x01,r0                          
      |     0x0ce31a8e      e680           mov.b r0,@(0x6,r14)                  
      |     0x0ce31a90      5390           mov.w @(0xA6,PC),r0                  
      |     0x0ce31a92      450e           mov.w r4,@(r0,r14)                   
      |     0x0ce31a94      f570           add 0xF5,r0                          
      |     0x0ce31a96      ec03           mov.b @(r0,r14),r3                   
      |     0x0ce31a98      3823           tst r3,r3                            
      | ,=< 0x0ce31a9a      1789           bt 0x0ce31acc               ;[4]     
      | |   0x0ce31a9c      04e0           mov 0x04,r0                          
      | |   0x0ce31a9e      e680           mov.b r0,@(0x6,r14)                  
      | |   0x0ce31aa0      02e3           mov 0x02,r3                          
      | |   0x0ce31aa2      4c90           mov.w @(0x98,PC),r0                  
      | |   0x0ce31aa4      340e           mov.b r3,@(r0,r14)                   
      | |   0x0ce31aa6      c770           add 0xC7,r0                          
      | |   0x0ce31aa8      ee02           mov.l @(r0,r14),r2                   
      | |   0x0ce31aaa      2822           tst r2,r2                            
      |,==< 0x0ce31aac      058d           bt.s 0x0ce31aba             ;[5]     
      |||   0x0ce31aae      0de6           mov 0x0D,r6                          
      |||   0x0ce31ab0      4690           mov.w @(0x8C,PC),r0                  
      |||   0x0ce31ab2      10e3           mov 0x10,r3                          
      |||   0x0ce31ab4      ee02           mov.l @(r0,r14),r2                   
      |||   0x0ce31ab6      ec70           add 0xEC,r0                          
      |||   0x0ce31ab8      3402           mov.b r3,@(r0,r2)                    
      |`--> 0x0ce31aba      16e5           mov 0x16,r5                          
      | |   0x0ce31abc      0b4d           jsr @r13                    ;[?]     
      | |   0x0ce31abe      e364           mov r14,r4                           
      | |   0x0ce31ac0      264f           lds.l @r15+,pr                       
      | |   0x0ce31ac2      22d3           mov.l @(0x88,PC),r3                  
      | |   0x0ce31ac4      e364           mov r14,r4                           
      | |   0x0ce31ac6      f66d           mov.l @r15+,r13                      
      | |   0x0ce31ac8      2b43           jmp @r3                              
      | |   0x0ce31aca      f66e           mov.l @r15+,r14                      
      | `-> 0x0ce31acc      15e5           mov 0x15,r5                          
      |     0x0ce31ace      14e6           mov 0x14,r6                          
      |     0x0ce31ad0      0b4d           jsr @r13                    ;[?]     
      |     0x0ce31ad2      e364           mov r14,r4                           
      `---> 0x0ce31ad4      264f           lds.l @r15+,pr                       
            0x0ce31ad6      f66d           mov.l @r15+,r13                      
            0x0ce31ad8      0b00           rts                                  
            0x0ce31ada      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31adc      224f           sts.l pr,@-r15                       
            0x0ce31ade      fc7f           add 0xFC,r15                         
            0x0ce31ae0      18d3           mov.l @(0x60,PC),r3                  
            0x0ce31ae2      0b43           jsr @r3                     ;[?]     
            0x0ce31ae4      422f           mov.l r4,@r15                        
            0x0ce31ae6      0e60           exts.b r0,r0                         
            0x0ce31ae8      1140           cmp/pz r0                            
        ,=< 0x0ce31aea      0489           bt 0x0ce31af6               ;[1]     
        |   0x0ce31aec      f264           mov.l @r15,r4                        
        |   0x0ce31aee      047f           add 0x04,r15                         
        |   0x0ce31af0      17d3           mov.l @(0x5C,PC),r3                  
        |   0x0ce31af2      2b43           jmp @r3                              
        |   0x0ce31af4      264f           lds.l @r15+,pr                       
        `-> 0x0ce31af6      047f           add 0x04,r15                         
            0x0ce31af8      264f           lds.l @r15+,pr                       
            0x0ce31afa      0b00           rts                                  
            0x0ce31afc      0900           nop                                  
            0x0ce31afe      1e90           mov.w @(0x3C,PC),r0                  
            0x0ce31b00      02e3           mov 0x02,r3                          
            0x0ce31b02      e62f           mov.l r14,@-r15                      
            0x0ce31b04      436e           mov r4,r14                           
            0x0ce31b06      224f           sts.l pr,@-r15                       
            0x0ce31b08      340e           mov.b r3,@(r0,r14)                   
            0x0ce31b0a      0ed3           mov.l @(0x38,PC),r3                  
            0x0ce31b0c      0b43           jsr @r3                     ;[?]     
            0x0ce31b0e      e364           mov r14,r4                           
            0x0ce31b10      0e60           exts.b r0,r0                         
            0x0ce31b12      1140           cmp/pz r0                            
        ,=< 0x0ce31b14      0c89           bt 0x0ce31b30               ;[2]     
        |   0x0ce31b16      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce31b18      0ed3           mov.l @(0x38,PC),r3                  
        |   0x0ce31b1a      0170           add 0x01,r0                          
        |   0x0ce31b1c      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31b1e      0b43           jsr @r3                     ;[?]     
        |   0x0ce31b20      e364           mov r14,r4                           
        |   0x0ce31b22      264f           lds.l @r15+,pr                       
        |   0x0ce31b24      08d2           mov.l @(0x20,PC),r2                  
        |   0x0ce31b26      e364           mov r14,r4                           
        |   0x0ce31b28      0ee6           mov 0x0E,r6                          
        |   0x0ce31b2a      16e5           mov 0x16,r5                          
        |   0x0ce31b2c      2b42           jmp @r2                              
        |   0x0ce31b2e      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31b30      264f           lds.l @r15+,pr                       
            0x0ce31b32      0b00           rts                                  
            0x0ce31b34      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31b36 0x0141 0x0080 0x01ae 0x01a3 0x01ed 0x01b4 0x0000
0x0ce31b44  0x8c034dee 0x8c034e8c 0x8c05115a 0x8c051648  .M...N..Z...H...       
0x0ce31b54  0x8c09d9d0 

;==============================================================================
            0x0ce31b58      e62f           mov.l r14,@-r15                      
            0x0ce31b5a      224f           sts.l pr,@-r15                       
            0x0ce31b5c      48d3           mov.l @(0x120,PC),r3                 
            0x0ce31b5e      0b43           jsr @r3                     ;[?]     
            0x0ce31b60      436e           mov r4,r14                           
            0x0ce31b62      0e60           exts.b r0,r0                         
            0x0ce31b64      1140           cmp/pz r0                            
        ,=< 0x0ce31b66      0a89           bt 0x0ce31b7e               ;[1]     
        |   0x0ce31b68      03e0           mov 0x03,r0                          
        |   0x0ce31b6a      46d3           mov.l @(0x118,PC),r3                 
        |   0x0ce31b6c      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31b6e      14e0           mov 0x14,r0                          
        |   0x0ce31b70      e364           mov r14,r4                           
        |   0x0ce31b72      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce31b74      264f           lds.l @r15+,pr                       
        |   0x0ce31b76      0fe6           mov 0x0F,r6                          
        |   0x0ce31b78      16e5           mov 0x16,r5                          
        |   0x0ce31b7a      2b43           jmp @r3                              
        |   0x0ce31b7c      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31b7e      264f           lds.l @r15+,pr                       
            0x0ce31b80      0b00           rts                                  
            0x0ce31b82      f66e           mov.l @r15+,r14                      
            0x0ce31b84      e62f           mov.l r14,@-r15                      
            0x0ce31b86      436e           mov r4,r14                           
            0x0ce31b88      224f           sts.l pr,@-r15                       
            0x0ce31b8a      e684           mov.b @(0x6,r14),r0                  
            0x0ce31b8c      0820           tst r0,r0                            
        ,=< 0x0ce31b8e      128b           bf 0x0ce31bb6               ;[2]     
        |   0x0ce31b90      3cd3           mov.l @(0xF0,PC),r3                  
        |   0x0ce31b92      13e5           mov 0x13,r5                          
        |   0x0ce31b94      01e6           mov 0x01,r6                          
        |   0x0ce31b96      0b43           jsr @r3                     ;[?]     
        |   0x0ce31b98      e364           mov r14,r4                           
        |   0x0ce31b9a      3ce0           mov 0x3C,r0                          
        |   0x0ce31b9c      8df4           fldi0 fr4                            
        |   0x0ce31b9e      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce31ba0      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce31ba2      0170           add 0x01,r0                          
        |   0x0ce31ba4      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31ba6      5ce0           mov 0x5C,r0                          
        |   0x0ce31ba8      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31baa      60e0           mov 0x60,r0                          
        |   0x0ce31bac      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31bae      68e0           mov 0x68,r0                          
        |   0x0ce31bb0      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31bb2      6ce0           mov 0x6C,r0                          
        |   0x0ce31bb4      47fe           fmov fr4,@(r0,r14)                   
        `-> 0x0ce31bb6      32d3           mov.l @(0xC8,PC),r3                  
            0x0ce31bb8      0b43           jsr @r3                     ;[?]     
            0x0ce31bba      e364           mov r14,r4                           
            0x0ce31bbc      ee85           mov.w @(0x1C,r14),r0                 
            0x0ce31bbe      ff70           add 0xFF,r0                          
            0x0ce31bc0      ee81           mov.w r0,@(0x1C,r14)                 
            0x0ce31bc2      0f60           exts.w r0,r0                         
            0x0ce31bc4      1140           cmp/pz r0                            
        ,=< 0x0ce31bc6      0489           bt 0x0ce31bd2               ;[3]     
        |   0x0ce31bc8      264f           lds.l @r15+,pr                       
        |   0x0ce31bca      2fd2           mov.l @(0xBC,PC),r2                  
        |   0x0ce31bcc      e364           mov r14,r4                           
        |   0x0ce31bce      2b42           jmp @r2                              
        |   0x0ce31bd0      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31bd2      264f           lds.l @r15+,pr                       
            0x0ce31bd4      0b00           rts                                  
            0x0ce31bd6      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31bd8      e62f           mov.l r14,@-r15                      
            0x0ce31bda      436e           mov r4,r14                           
            0x0ce31bdc      224f           sts.l pr,@-r15                       
            0x0ce31bde      e684           mov.b @(0x6,r14),r0                  
            0x0ce31be0      0820           tst r0,r0                            
        ,=< 0x0ce31be2      328b           bf 0x0ce31c4a               ;[1]     
        |   0x0ce31be4      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce31be6      00e4           mov 0x00,r4                          
        |   0x0ce31be8      8df4           fldi0 fr4                            
        |   0x0ce31bea      40e3           mov 0x40,r3                          
        |   0x0ce31bec      0170           add 0x01,r0                          
        |   0x0ce31bee      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31bf0      5ce0           mov 0x5C,r0                          
        |   0x0ce31bf2      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31bf4      60e0           mov 0x60,r0                          
        |   0x0ce31bf6      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31bf8      68e0           mov 0x68,r0                          
        |   0x0ce31bfa      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31bfc      6ce0           mov 0x6C,r0                          
        |   0x0ce31bfe      47fe           fmov fr4,@(r0,r14)                   
        |   0x0ce31c00      3a90           mov.w @(0x74,PC),r0                  
        |   0x0ce31c02      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce31c04      3990           mov.w @(0x72,PC),r0                  
        |   0x0ce31c06      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce31c08      38e0           mov 0x38,r0                          
        |   0x0ce31c0a      37fe           fmov fr3,@(r0,r14)                   
        |   0x0ce31c0c      3690           mov.w @(0x6C,PC),r0                  
        |   0x0ce31c0e      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce31c10      0b70           add 0x0B,r0                          
        |   0x0ce31c12      450e           mov.w r4,@(r0,r14)                   
        |   0x0ce31c14      f270           add 0xF2,r0                          
        |   0x0ce31c16      1dd3           mov.l @(0x74,PC),r3                  
        |   0x0ce31c18      440e           mov.b r4,@(r0,r14)                   
        |   0x0ce31c1a      2670           add 0x26,r0                          
        |   0x0ce31c1c      460e           mov.l r4,@(r0,r14)                   
        |   0x0ce31c1e      3262           mov.l @r3,r2                         
        |   0x0ce31c20      e284           mov.b @(0x2,r14),r0                  
        |   0x0ce31c22      7c72           add 0x7C,r2                          
        |   0x0ce31c24      0c60           extu.b r0,r0                         
        |   0x0ce31c26      4365           mov r4,r5                            
        |   0x0ce31c28      0040           shll r0                              
        |   0x0ce31c2a      2d01           mov.w @(r0,r2),r1                    
        |   0x0ce31c2c      0171           add 0x01,r1                          
        |   0x0ce31c2e      1502           mov.w r1,@(r0,r2)                    
        |   0x0ce31c30      17d2           mov.l @(0x5C,PC),r2                  
        |   0x0ce31c32      0b42           jsr @r2                     ;[?]     
        |   0x0ce31c34      e364           mov r14,r4                           
        |   0x0ce31c36      17d3           mov.l @(0x5C,PC),r3                  
        |   0x0ce31c38      0b43           jsr @r3                     ;[?]     
        |   0x0ce31c3a      e364           mov r14,r4                           
        |   0x0ce31c3c      264f           lds.l @r15+,pr                       
        |   0x0ce31c3e      11d2           mov.l @(0x44,PC),r2                  
        |   0x0ce31c40      e364           mov r14,r4                           
        |   0x0ce31c42      17e6           mov 0x17,r6                          
        |   0x0ce31c44      15e5           mov 0x15,r5                          
        |   0x0ce31c46      2b42           jmp @r2                              
        |   0x0ce31c48      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31c4a      0dd2           mov.l @(0x34,PC),r2                  
            0x0ce31c4c      0b42           jsr @r2                     ;[?]     
            0x0ce31c4e      e364           mov r14,r4                           
            0x0ce31c50      0e60           exts.b r0,r0                         
            0x0ce31c52      1140           cmp/pz r0                            
        ,=< 0x0ce31c54      0489           bt 0x0ce31c60               ;[2]     
        |   0x0ce31c56      264f           lds.l @r15+,pr                       
        |   0x0ce31c58      0bd2           mov.l @(0x2C,PC),r2                  
        |   0x0ce31c5a      e364           mov r14,r4                           
        |   0x0ce31c5c      2b42           jmp @r2                              
        |   0x0ce31c5e      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31c60      264f           lds.l @r15+,pr                       
            0x0ce31c62      0b00           rts                                  
            0x0ce31c64      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31c66      4363           mov r4,r3                            
            0x0ce31c68      0bd1           mov.l @(0x2C,PC),r1                  
            0x0ce31c6a      462f           mov.l r4,@-r15                       
            0x0ce31c6c      3684           mov.b @(0x6,r3),r0                   
            0x0ce31c6e      0c60           extu.b r0,r0                         
            0x0ce31c70      0840           shll2 r0                             
            0x0ce31c72      1e03           mov.l @(r0,r1),r3                    
            0x0ce31c74      2b43           jmp @r3                              
            0x0ce31c76      047f           add 0x04,r15                         

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31c78 0x01f9 0x041c 0x01a1 0x0000
0x0ce31c80  0x8c034dee 0x8c034e8c 0x8c051648 0x8c2896b0  .M...N..H.....(.       
0x0ce31c90  0x8c035162 0x8c05218a 0x0ce324f8

;==============================================================================
            0x0ce31c9c      e62f           mov.l r14,@-r15                      
            0x0ce31c9e      436e           mov r4,r14                           
            0x0ce31ca0      224f           sts.l pr,@-r15                       
            0x0ce31ca2      48d3           mov.l @(0x120,PC),r3                 
            0x0ce31ca4      0b43           jsr @r3                     ;[?]     
            0x0ce31ca6      00e5           mov 0x00,r5                          
            0x0ce31ca8      e684           mov.b @(0x6,r14),r0                  
            0x0ce31caa      02e3           mov 0x02,r3                          
            0x0ce31cac      0170           add 0x01,r0                          
            0x0ce31cae      e680           mov.b r0,@(0x6,r14)                  
            0x0ce31cb0      8590           mov.w @(0x10A,PC),r0                 
            0x0ce31cb2      340e           mov.b r3,@(r0,r14)                   
            0x0ce31cb4      44c7           mova @(0x110,PC),r0                  
            0x0ce31cb6      08f3           fmov @r0,fr3                         
            0x0ce31cb8      5ce0           mov 0x5C,r0                          
            0x0ce31cba      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31cbc      8090           mov.w @(0x100,PC),r0                 
            0x0ce31cbe      ec03           mov.b @(r0,r14),r3                   
            0x0ce31cc0      3823           tst r3,r3                            
        ,=< 0x0ce31cc2      038b           bf 0x0ce31ccc               ;[1]     
        |   0x0ce31cc4      5ce0           mov 0x5C,r0                          
        |   0x0ce31cc6      e6f3           fmov @(r0,r14),fr3                   
        |   0x0ce31cc8      4df3           fneg fr3                             
        |   0x0ce31cca      37fe           fmov fr3,@(r0,r14)                   
        `-> 0x0ce31ccc      68e0           mov 0x68,r0                          
            0x0ce31cce      8df3           fldi0 fr3                            
            0x0ce31cd0      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31cd2      3ec7           mova @(0xF8,PC),r0                   
            0x0ce31cd4      08f3           fmov @r0,fr3                         
            0x0ce31cd6      60e0           mov 0x60,r0                          
            0x0ce31cd8      3de3           mov 0x3D,r3                          
            0x0ce31cda      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31cdc      3cc7           mova @(0xF0,PC),r0                   
            0x0ce31cde      08f3           fmov @r0,fr3                         
            0x0ce31ce0      6ce0           mov 0x6C,r0                          
            0x0ce31ce2      00e4           mov 0x00,r4                          
            0x0ce31ce4      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31ce6      14e5           mov 0x14,r5                          
            0x0ce31ce8      6b90           mov.w @(0xD6,PC),r0                  
            0x0ce31cea      05e6           mov 0x05,r6                          
            0x0ce31cec      340e           mov.b r3,@(r0,r14)                   
            0x0ce31cee      0b70           add 0x0B,r0                          
            0x0ce31cf0      450e           mov.w r4,@(r0,r14)                   
            0x0ce31cf2      f270           add 0xF2,r0                          
            0x0ce31cf4      440e           mov.b r4,@(r0,r14)                   
            0x0ce31cf6      2670           add 0x26,r0                          
            0x0ce31cf8      36d3           mov.l @(0xD8,PC),r3                  
            0x0ce31cfa      460e           mov.l r4,@(r0,r14)                   
            0x0ce31cfc      e284           mov.b @(0x2,r14),r0                  
            0x0ce31cfe      3262           mov.l @r3,r2                         
            0x0ce31d00      0c60           extu.b r0,r0                         
            0x0ce31d02      0040           shll r0                              
            0x0ce31d04      7c72           add 0x7C,r2                          
            0x0ce31d06      2d01           mov.w @(r0,r2),r1                    
            0x0ce31d08      0171           add 0x01,r1                          
            0x0ce31d0a      1502           mov.w r1,@(r0,r2)                    
            0x0ce31d0c      264f           lds.l @r15+,pr                       
            0x0ce31d0e      32d2           mov.l @(0xC8,PC),r2                  
            0x0ce31d10      e364           mov r14,r4                           
            0x0ce31d12      2b42           jmp @r2                              
            0x0ce31d14      f66e           mov.l @r15+,r14                      
            0x0ce31d16      e62f           mov.l r14,@-r15                      
            0x0ce31d18      224f           sts.l pr,@-r15                       
            0x0ce31d1a      30d3           mov.l @(0xC0,PC),r3                  
            0x0ce31d1c      0b43           jsr @r3                     ;[?]     
            0x0ce31d1e      436e           mov r4,r14                           
            0x0ce31d20      5ce1           mov 0x5C,r1                          
            0x0ce31d22      2fd3           mov.l @(0xBC,PC),r3                  
            0x0ce31d24      ec31           add r14,r1                           
            0x0ce31d26      34e0           mov 0x34,r0                          
            0x0ce31d28      18f3           fmov @r1,fr3                         
            0x0ce31d2a      e6f2           fmov @(r0,r14),fr2                   
            0x0ce31d2c      68e1           mov 0x68,r1                          
            0x0ce31d2e      ec31           add r14,r1                           
            0x0ce31d30      30f2           fadd fr3,fr2                         
            0x0ce31d32      27fe           fmov fr2,@(r0,r14)                   
            0x0ce31d34      5ce0           mov 0x5C,r0                          
            0x0ce31d36      e6f2           fmov @(r0,r14),fr2                   
            0x0ce31d38      18f3           fmov @r1,fr3                         
            0x0ce31d3a      60e1           mov 0x60,r1                          
            0x0ce31d3c      ec31           add r14,r1                           
            0x0ce31d3e      30f2           fadd fr3,fr2                         
            0x0ce31d40      27fe           fmov fr2,@(r0,r14)                   
            0x0ce31d42      38e0           mov 0x38,r0                          
            0x0ce31d44      e6f2           fmov @(r0,r14),fr2                   
            0x0ce31d46      18f3           fmov @r1,fr3                         
            0x0ce31d48      6ce1           mov 0x6C,r1                          
            0x0ce31d4a      ec31           add r14,r1                           
            0x0ce31d4c      30f2           fadd fr3,fr2                         
            0x0ce31d4e      27fe           fmov fr2,@(r0,r14)                   
            0x0ce31d50      60e0           mov 0x60,r0                          
            0x0ce31d52      e6f2           fmov @(r0,r14),fr2                   
            0x0ce31d54      18f3           fmov @r1,fr3                         
            0x0ce31d56      30f2           fadd fr3,fr2                         
            0x0ce31d58      27fe           fmov fr2,@(r0,r14)                   
            0x0ce31d5a      0b43           jsr @r3                     ;[?]     
            0x0ce31d5c      e364           mov r14,r4                           
            0x0ce31d5e      0c60           extu.b r0,r0                         
            0x0ce31d60      0820           tst r0,r0                            
        ,=< 0x0ce31d62      0c89           bt 0x0ce31d7e               ;[1]     
        |   0x0ce31d64      1fd3           mov.l @(0x7C,PC),r3                  
        |   0x0ce31d66      0b43           jsr @r3                     ;[?]     
        |   0x0ce31d68      e364           mov r14,r4                           
        |   0x0ce31d6a      e684           mov.b @(0x6,r14),r0                  
        |   0x0ce31d6c      e364           mov r14,r4                           
        |   0x0ce31d6e      1ad3           mov.l @(0x68,PC),r3                  
        |   0x0ce31d70      06e6           mov 0x06,r6                          
        |   0x0ce31d72      0170           add 0x01,r0                          
        |   0x0ce31d74      e680           mov.b r0,@(0x6,r14)                  
        |   0x0ce31d76      14e5           mov 0x14,r5                          
        |   0x0ce31d78      264f           lds.l @r15+,pr                       
        |   0x0ce31d7a      2b43           jmp @r3                              
        |   0x0ce31d7c      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31d7e      264f           lds.l @r15+,pr                       
            0x0ce31d80      0b00           rts                                  
            0x0ce31d82      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31d84      e62f           mov.l r14,@-r15                      
            0x0ce31d86      224f           sts.l pr,@-r15                       
            0x0ce31d88      14d3           mov.l @(0x50,PC),r3                  
            0x0ce31d8a      0b43           jsr @r3                     ;[?]     
            0x0ce31d8c      436e           mov r4,r14                           
            0x0ce31d8e      0e60           exts.b r0,r0                         
            0x0ce31d90      1140           cmp/pz r0                            
        ,=< 0x0ce31d92      0889           bt 0x0ce31da6               ;[1]     
        |   0x0ce31d94      0bd3           mov.l @(0x2C,PC),r3                  
        |   0x0ce31d96      00e5           mov 0x00,r5                          
        |   0x0ce31d98      0b43           jsr @r3                     ;[?]     
        |   0x0ce31d9a      e364           mov r14,r4                           
        |   0x0ce31d9c      264f           lds.l @r15+,pr                       
        |   0x0ce31d9e      12d2           mov.l @(0x48,PC),r2                  
        |   0x0ce31da0      e364           mov r14,r4                           
        |   0x0ce31da2      2b42           jmp @r2                              
        |   0x0ce31da4      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31da6      264f           lds.l @r15+,pr                       
            0x0ce31da8      0b00           rts                                  
            0x0ce31daa      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31dac      4363           mov r4,r3                            
            0x0ce31dae      0fd1           mov.l @(0x3C,PC),r1                  
            0x0ce31db0      462f           mov.l r4,@-r15                       
            0x0ce31db2      3684           mov.b @(0x6,r3),r0                   
            0x0ce31db4      0c60           extu.b r0,r0                         
            0x0ce31db6      0840           shll2 r0                             
            0x0ce31db8      1e03           mov.l @(r0,r1),r3                    
            0x0ce31dba      2b43           jmp @r3                              
            0x0ce31dbc      047f           add 0x04,r15                         

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31dbe 0x01f9 0x01d2 0x01a1
0x0ce31dc4  0x8c035162 0x41f00000 0x40892492 0xbf4db6db  bQ.....A.$.@..M.       
0x0ce31dd4  0x8c2896b0 0x8c034e8c 0x8c034dee 0x8c052ce2  ..(..N...M...,..       
0x0ce31de4  0x8c0511b4 0x8c051854 0x0ce32504

;==============================================================================
            0x0ce31df0      e62f           mov.l r14,@-r15                      
            0x0ce31df2      436e           mov r4,r14                           
            0x0ce31df4      8df4           fldi0 fr4                            
            0x0ce31df6      d62f           mov.l r13,@-r15                      
            0x0ce31df8      00ed           mov 0x00,r13                         
            0x0ce31dfa      224f           sts.l pr,@-r15                       
            0x0ce31dfc      e684           mov.b @(0x6,r14),r0                  
            0x0ce31dfe      d365           mov r13,r5                           
            0x0ce31e00      4ad3           mov.l @(0x128,PC),r3                 
            0x0ce31e02      0170           add 0x01,r0                          
            0x0ce31e04      e680           mov.b r0,@(0x6,r14)                  
            0x0ce31e06      5ce0           mov 0x5C,r0                          
            0x0ce31e08      47fe           fmov fr4,@(r0,r14)                   
            0x0ce31e0a      60e0           mov 0x60,r0                          
            0x0ce31e0c      47fe           fmov fr4,@(r0,r14)                   
            0x0ce31e0e      68e0           mov 0x68,r0                          
            0x0ce31e10      47fe           fmov fr4,@(r0,r14)                   
            0x0ce31e12      6ce0           mov 0x6C,r0                          
            0x0ce31e14      47fe           fmov fr4,@(r0,r14)                   
            0x0ce31e16      7e90           mov.w @(0xFC,PC),r0                  
            0x0ce31e18      d40e           mov.b r13,@(r0,r14)                  
            0x0ce31e1a      7d90           mov.w @(0xFA,PC),r0                  
            0x0ce31e1c      e6f3           fmov @(r0,r14),fr3                   
            0x0ce31e1e      38e0           mov 0x38,r0                          
            0x0ce31e20      37fe           fmov fr3,@(r0,r14)                   
            0x0ce31e22      0b43           jsr @r3                     ;[?]     
            0x0ce31e24      e364           mov r14,r4                           
            0x0ce31e26      42d2           mov.l @(0x108,PC),r2                 
            0x0ce31e28      0b42           jsr @r2                     ;[?]     
            0x0ce31e2a      e364           mov r14,r4                           
            0x0ce31e2c      41d3           mov.l @(0x104,PC),r3                 
            0x0ce31e2e      0b43           jsr @r3                     ;[?]     
            0x0ce31e30      e364           mov r14,r4                           
            0x0ce31e32      7290           mov.w @(0xE4,PC),r0                  
            0x0ce31e34      3fe2           mov 0x3F,r2                          
            0x0ce31e36      40d3           mov.l @(0x100,PC),r3                 
            0x0ce31e38      16e6           mov 0x16,r6                          
            0x0ce31e3a      240e           mov.b r2,@(r0,r14)                   
            0x0ce31e3c      0b70           add 0x0B,r0                          
            0x0ce31e3e      d50e           mov.w r13,@(r0,r14)                  
            0x0ce31e40      f270           add 0xF2,r0                          
            0x0ce31e42      d40e           mov.b r13,@(r0,r14)                  
            0x0ce31e44      2670           add 0x26,r0                          
            0x0ce31e46      d60e           mov.l r13,@(r0,r14)                  
            0x0ce31e48      15e5           mov 0x15,r5                          
            0x0ce31e4a      e284           mov.b @(0x2,r14),r0                  
            0x0ce31e4c      e364           mov r14,r4                           
            0x0ce31e4e      3262           mov.l @r3,r2                         
            0x0ce31e50      0c60           extu.b r0,r0                         
            0x0ce31e52      0040           shll r0                              
            0x0ce31e54      7c72           add 0x7C,r2                          
            0x0ce31e56      2d01           mov.w @(r0,r2),r1                    
            0x0ce31e58      0171           add 0x01,r1                          
            0x0ce31e5a      1502           mov.w r1,@(r0,r2)                    
            0x0ce31e5c      264f           lds.l @r15+,pr                       
            0x0ce31e5e      37d2           mov.l @(0xDC,PC),r2                  
            0x0ce31e60      f66d           mov.l @r15+,r13                      
            0x0ce31e62      2b42           jmp @r2                              
            0x0ce31e64      f66e           mov.l @r15+,r14                      
            0x0ce31e66      e62f           mov.l r14,@-r15                      
            0x0ce31e68      224f           sts.l pr,@-r15                       
            0x0ce31e6a      f47f           add 0xF4,r15                         
            0x0ce31e6c      34d3           mov.l @(0xD0,PC),r3                  
            0x0ce31e6e      0b43           jsr @r3                     ;[?]     
            0x0ce31e70      436e           mov r4,r14                           
            0x0ce31e72      0e60           exts.b r0,r0                         
            0x0ce31e74      1140           cmp/pz r0                            
        ,=< 0x0ce31e76      0689           bt 0x0ce31e86               ;[1]     
        |   0x0ce31e78      32d3           mov.l @(0xC8,PC),r3                  
        |   0x0ce31e7a      0b43           jsr @r3                     ;[?]     
        |   0x0ce31e7c      e364           mov r14,r4                           
        |   0x0ce31e7e      0c7f           add 0x0C,r15                         
        |   0x0ce31e80      264f           lds.l @r15+,pr                       
        |   0x0ce31e82      0b00           rts                                  
        |   0x0ce31e84      f66e           mov.l @r15+,r14                      
        `-> 0x0ce31e86      4990           mov.w @(0x92,PC),r0                  
            0x0ce31e88      ec02           mov.b @(r0,r14),r2                   
            0x0ce31e8a      2822           tst r2,r2                            
        ,=< 0x0ce31e8c      0b89           bt 0x0ce31ea6               ;[2]     
        |   0x0ce31e8e      00e3           mov 0x00,r3                          
        |   0x0ce31e90      8df3           fldi0 fr3                            
        |   0x0ce31e92      340e           mov.b r3,@(r0,r14)                   
        |   0x0ce31e94      2cc7           mova @(0xB0,PC),r0                   
        |   0x0ce31e96      3aff           fmov fr3,@r15                        
        |   0x0ce31e98      f365           mov r15,r5                           
        |   0x0ce31e9a      08f3           fmov @r0,fr3                         
        |   0x0ce31e9c      04e0           mov 0x04,r0                          
        |   0x0ce31e9e      2bd3           mov.l @(0xAC,PC),r3                  
        |   0x0ce31ea0      37ff           fmov fr3,@(r0,r15)                   
        |   0x0ce31ea2      0b43           jsr @r3                     ;[?]     
        |   0x0ce31ea4      e364           mov r14,r4                           
        `-> 0x0ce31ea6      0c7f           add 0x0C,r15                         
            0x0ce31ea8      264f           lds.l @r15+,pr                       
            0x0ce31eaa      0b00           rts                                  
            0x0ce31eac      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce31eae      3690           mov.w @(0x6C,PC),r0                  
            0x0ce31eb0      e62f           mov.l r14,@-r15                      
            0x0ce31eb2      436e           mov r4,r14                           
            0x0ce31eb4      224f           sts.l pr,@-r15                       
            0x0ce31eb6      ec03           mov.b @(r0,r14),r3                   
            0x0ce31eb8      3823           tst r3,r3                            
        ,=< 0x0ce31eba      288b           bf 0x0ce31f0e               ;[1]     
        |   0x0ce31ebc      2b90           mov.w @(0x56,PC),r0                  
        |   0x0ce31ebe      ec00           mov.b @(r0,r14),r0                   
        |   0x0ce31ec0      0c60           extu.b r0,r0                         
        |   0x0ce31ec2      0188           cmp/eq 0x01,r0                       
       ,==< 0x0ce31ec4      2389           bt 0x0ce31f0e               ;[1]     
       ||   0x0ce31ec6      2b90           mov.w @(0x56,PC),r0                  
       ||   0x0ce31ec8      2b93           mov.w @(0x56,PC),r3                  
       ||   0x0ce31eca      ed02           mov.w @(r0,r14),r2                   
       ||   0x0ce31ecc      2d62           extu.w r2,r2                         
       ||   0x0ce31ece      3822           tst r3,r2                            
      ,===< 0x0ce31ed0      1d89           bt 0x0ce31f0e               ;[1]     
      |||   0x0ce31ed2      2790           mov.w @(0x4E,PC),r0                  
      |||   0x0ce31ed4      ec02           mov.b @(r0,r14),r2                   
      |||   0x0ce31ed6      2822           tst r2,r2                            
     ,====< 0x0ce31ed8      1989           bt 0x0ce31f0e               ;[1]     
     ||||   0x0ce31eda      1dd3           mov.l @(0x74,PC),r3                  
     ||||   0x0ce31edc      0b43           jsr @r3                     ;[?]     
     ||||   0x0ce31ede      e364           mov r14,r4                           
     ||||   0x0ce31ee0      0820           tst r0,r0                            
    ,=====< 0x0ce31ee2      0f8d           bt.s 0x0ce31f04             ;[2]     
    |||||   0x0ce31ee4      0364           mov r0,r4                            
    |||||   0x0ce31ee6      1e90           mov.w @(0x3C,PC),r0                  
    |||||   0x0ce31ee8      ec03           mov.b @(r0,r14),r3                   
    |||||   0x0ce31eea      3823           tst r3,r3                            
   ,======< 0x0ce31eec      038b           bf 0x0ce31ef6               ;[3]     
   ||||||   0x0ce31eee      1b90           mov.w @(0x36,PC),r0                  
   ||||||   0x0ce31ef0      00e3           mov 0x00,r3                          
  ,=======< 0x0ce31ef2      03a0           bra 0x0ce31efc              ;[4]     
  |||||||   0x0ce31ef4      340e           mov.b r3,@(r0,r14)                   
  |`------> 0x0ce31ef6      1790           mov.w @(0x2E,PC),r0                  
  | |||||   0x0ce31ef8      01e1           mov 0x01,r1                          
  | |||||   0x0ce31efa      140e           mov.b r1,@(r0,r14)                   
  `-------> 0x0ce31efc      1090           mov.w @(0x20,PC),r0                  
    |||||   0x0ce31efe      ed03           mov.w @(r0,r14),r3                   
    |||||   0x0ce31f00      1390           mov.w @(0x26,PC),r0                  
    |||||   0x0ce31f02      350e           mov.w r3,@(r0,r14)                   
    `-----> 0x0ce31f04      4360           mov r4,r0                            
     ||||   0x0ce31f06      0900           nop                                  
     ||||   0x0ce31f08      264f           lds.l @r15+,pr                       
     ||||   0x0ce31f0a      0b00           rts                                  
     ||||   0x0ce31f0c      f66e           mov.l @r15+,r14                      
     ````-> 0x0ce31f0e      00e0           mov 0x00,r0                          
            0x0ce31f10      264f           lds.l @r15+,pr                       
            0x0ce31f12      0b00           rts                                  
            0x0ce31f14      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce31f16 0x01f9 0x041c 0x01a1 0x0141 0x02b2 0x01fa 0x0c00 0x01a3  ......A.....
0x0ce31f26 0x01fe 0x01f7 0x02a4
0x0ce31f2c  0x8c035162 0x8c05218a 0x8c05115a 0x8c2896b0  bQ...!..Z.....(.       
0x0ce31f3c  0x8c034e8c 0x8c034dee 0x8c051648 0x432b6db6  .N...M..H....m+C       
0x0ce31f4c  0x8c050ea4 0x8c045790

;==============================================================================
            0x0ce31f54      e62f           mov.l r14,@-r15                      
            0x0ce31f56      d62f           mov.l r13,@-r15                      
            0x0ce31f58      224f           sts.l pr,@-r15                       
            0x0ce31f5a      f07f           add 0xF0,r15                         
            0x0ce31f5c      2cd3           mov.l @(0xB0,PC),r3                  
            0x0ce31f5e      436e           mov r4,r14                           
            0x0ce31f60      522f           mov.l r5,@r15                        
            0x0ce31f62      00e5           mov 0x00,r5                          
            0x0ce31f64      0b43           jsr @r3                     ;[?]     
            0x0ce31f66      e364           mov r14,r4                           
            0x0ce31f68      4c90           mov.w @(0x98,PC),r0                  
            0x0ce31f6a      05e6           mov 0x05,r6                          
            0x0ce31f6c      29d3           mov.l @(0xA4,PC),r3                  
            0x0ce31f6e      0ae2           mov 0x0A,r2                          
            0x0ce31f70      6365           mov r6,r5                            
            0x0ce31f72      240e           mov.b r2,@(r0,r14)                   
            0x0ce31f74      0b43           jsr @r3                     ;[?]     
            0x0ce31f76      e364           mov r14,r4                           
            0x0ce31f78      4590           mov.w @(0x8A,PC),r0                  
            0x0ce31f7a      4593           mov.w @(0x8A,PC),r3                  
            0x0ce31f7c      ed02           mov.w @(r0,r14),r2                   
            0x0ce31f7e      2d62           extu.w r2,r2                         
            0x0ce31f80      3822           tst r3,r2                            
        ,=< 0x0ce31f82      0889           bt 0x0ce31f96               ;[1]     
        |   0x0ce31f84      4190           mov.w @(0x82,PC),r0                  
        |   0x0ce31f86      01e2           mov 0x01,r2                          
        |   0x0ce31f88      ed01           mov.w @(r0,r14),r1                   
        |   0x0ce31f8a      2a21           xor r2,r1                            
        |   0x0ce31f8c      150e           mov.w r1,@(r0,r14)                   
        |   0x0ce31f8e      3d90           mov.w @(0x7A,PC),r0                  
        |   0x0ce31f90      ec01           mov.b @(r0,r14),r1                   
        |   0x0ce31f92      2a21           xor r2,r1                            
        |   0x0ce31f94      140e           mov.b r1,@(r0,r14)                   
        `-> 0x0ce31f96      f263           mov.l @r15,r3                        
            0x0ce31f98      3791           mov.w @(0x6E,PC),r1                  
            0x0ce31f9a      3790           mov.w @(0x6E,PC),r0                  
            0x0ce31f9c      3362           mov r3,r2                            
            0x0ce31f9e      2c31           add r2,r1                            
            0x0ce31fa0      3492           mov.w @(0x68,PC),r2                  
            0x0ce31fa2      ec00           mov.b @(r0,r14),r0                   
            0x0ce31fa4      3c32           add r3,r2                            
            0x0ce31fa6      0c60           extu.b r0,r0                         
            0x0ce31fa8      01ca           xor 0x01,r0                          
            0x0ce31faa      0121           mov.w r0,@r1                         
            0x0ce31fac      0022           mov.b r0,@r2                         
            0x0ce31fae      2e90           mov.w @(0x5C,PC),r0                  
            0x0ce31fb0      ec03           mov.b @(r0,r14),r3                   
            0x0ce31fb2      3823           tst r3,r3                            
        ,=< 0x0ce31fb4      068f           bf.s 0x0ce31fc4             ;[1]     
        |   0x0ce31fb6      00e4           mov 0x00,r4                          
        |   0x0ce31fb8      17d3           mov.l @(0x5C,PC),r3                  
        |   0x0ce31fba      436d           mov r4,r13                           
        |   0x0ce31fbc      0b43           jsr @r3                     ;[?]     
        |   0x0ce31fbe      e364           mov r14,r4                           
       ,==< 0x0ce31fc0      06a0           bra 0x0ce31fd0              ;[2]     
       ||   0x0ce31fc2      0900           nop                                  
       |`-> 0x0ce31fc4      20e0           mov 0x20,r0                          
       |    0x0ce31fc6      ee81           mov.w r0,@(0x1C,r14)                 
       |    0x0ce31fc8      02ed           mov 0x02,r13                         
       |    0x0ce31fca      4360           mov r4,r0                            
       |    0x0ce31fcc      0900           nop                                  
       |    0x0ce31fce      e680           mov.b r0,@(0x6,r14)                  
       `--> 0x0ce31fd0      12d3           mov.l @(0x48,PC),r3                  
            0x0ce31fd2      0fe5           mov 0x0F,r5                          
            0x0ce31fd4      d366           mov r13,r6                           
            0x0ce31fd6      0b43           jsr @r3                     ;[?]     
            0x0ce31fd8      e364           mov r14,r4                           
            0x0ce31fda      11c7           mova @(0x44,PC),r0                   
            0x0ce31fdc      f365           mov r15,r5                           
            0x0ce31fde      08f3           fmov @r0,fr3                         
            0x0ce31fe0      04e0           mov 0x04,r0                          
            0x0ce31fe2      11d3           mov.l @(0x44,PC),r3                  
            0x0ce31fe4      0475           add 0x04,r5                          
            0x0ce31fe6      37ff           fmov fr3,@(r0,r15)                   
            0x0ce31fe8      0ec7           mova @(0x38,PC),r0                   
            0x0ce31fea      08f3           fmov @r0,fr3                         
            0x0ce31fec      08e0           mov 0x08,r0                          
            0x0ce31fee      37ff           fmov fr3,@(r0,r15)                   
            0x0ce31ff0      0b43           jsr @r3                     ;[?]     
            0x0ce31ff2      e364           mov r14,r4                           
            0x0ce31ff4      0dd2           mov.l @(0x34,PC),r2                  
            0x0ce31ff6      0b42           jsr @r2                     ;[?]     
            0x0ce31ff8      e364           mov r14,r4                           
            0x0ce31ffa      107f           add 0x10,r15                         
            0x0ce31ffc      264f           lds.l @r15+,pr                       
            0x0ce31ffe      f66d           mov.l @r15+,r13                      
            0x0ce32000      0b00           rts                                  
            0x0ce32002      f66e           mov.l @r15+,r14                      

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce32004 0x01a0 0x02a4 0x0400 0x0130 0x01d2 0x01f7 
0x0ce32010  0x8c035162 0x8c02fec4 0x8c0e4f9c 0x8c034e8c  bQ.......O...N..       
0x0ce32020  0xc2f00000 0x43870000 0x8c103660 0x8c056f2a 

;==============================================================================
            0x0ce32030      e62f           mov.l r14,@-r15                      
            0x0ce32032      d62f           mov.l r13,@-r15                      
            0x0ce32034      c62f           mov.l r12,@-r15                      
            0x0ce32036      fbff           fmov fr15,@-r15                      
            0x0ce32038      224f           sts.l pr,@-r15                       
            0x0ce3203a      fc7f           add 0xFC,r15                         
            0x0ce3203c      8090           mov.w @(0x100,PC),r0                 
            0x0ce3203e      01e3           mov 0x01,r3                          
            0x0ce32040      436e           mov r4,r14                           
            0x0ce32042      43dd           mov.l @(0x10C,PC),r13                
            0x0ce32044      340e           mov.b r3,@(r0,r14)                   
            0x0ce32046      0d70           add 0x0D,r0                          
            0x0ce32048      ec03           mov.b @(r0,r14),r3                   
            0x0ce3204a      00ec           mov 0x00,r12                         
            0x0ce3204c      3823           tst r3,r3                            
        ,=< 0x0ce3204e      3e8f           bf.s 0x0ce320ce             ;[1]     
        |   0x0ce32050      8dff           fldi0 fr15                           
        |   0x0ce32052      0b4d           jsr @r13                    ;[?]     
        |   0x0ce32054      e364           mov r14,r4                           
        |   0x0ce32056      0e60           exts.b r0,r0                         
        |   0x0ce32058      1140           cmp/pz r0                            
       ,==< 0x0ce3205a      628b           bf 0x0ce32122               ;[2]     
       ||   0x0ce3205c      7190           mov.w @(0xE2,PC),r0                  
       ||   0x0ce3205e      ec00           mov.b @(r0,r14),r0                   
       ||   0x0ce32060      0188           cmp/eq 0x01,r0                       
      ,===< 0x0ce32062      058b           bf 0x0ce32070               ;[3]     
            0x0ce32064      6d90           mov.w @(0xDA,PC),r0                  
            0x0ce32066      03e5           mov 0x03,r5                          
            0x0ce32068      3ad3           mov.l @(0xE8,PC),r3                  
            0x0ce3206a      c40e           mov.b r12,@(r0,r14)                  
            0x0ce3206c      0b43           jsr @r3                     ;[?]     
            0x0ce3206e      e364           mov r14,r4                           

            0x0ce32070      6790           mov.w @(0xCE,PC),r0                  
            0x0ce32072      ec00           mov.b @(r0,r14),r0                   
            0x0ce32074      0288           cmp/eq 0x02,r0                       
        ,=< 0x0ce32076      0189           bt 0x0ce3207c               ;[1]     
       ,==< 0x0ce32078      96a0           bra 0x0ce321a8              ;[2]     
       ||   0x0ce3207a      0900           nop                                  

            0x0ce3207c      6190           mov.w @(0xC2,PC),r0                  
            0x0ce3207e      05e2           mov 0x05,r2                          
            0x0ce32080      6291           mov.w @(0xC4,PC),r1                  
            0x0ce32082      c40e           mov.b r12,@(r0,r14)                  
            0x0ce32084      5ce0           mov 0x5C,r0                          
            0x0ce32086      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce32088      60e0           mov 0x60,r0                          
            0x0ce3208a      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce3208c      68e0           mov 0x68,r0                          
            0x0ce3208e      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce32090      6ce0           mov 0x6C,r0                          
            0x0ce32092      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce32094      5690           mov.w @(0xAC,PC),r0                  
            0x0ce32096      ee03           mov.l @(r0,r14),r3                   
            0x0ce32098      ec70           add 0xEC,r0                          
            0x0ce3209a      e603           mov.l r14,@(r0,r3)                   
            0x0ce3209c      1470           add 0x14,r0                          
            0x0ce3209e      ee03           mov.l @(r0,r14),r3                   
            0x0ce320a0      2e70           add 0x2E,r0                          
            0x0ce320a2      2403           mov.b r2,@(r0,r3)                    
            0x0ce320a4      d270           add 0xD2,r0                          
            0x0ce320a6      ee03           mov.l @(r0,r14),r3                   
            0x0ce320a8      4d90           mov.w @(0x9A,PC),r0                  
            0x0ce320aa      ed02           mov.w @(r0,r14),r2                   
            0x0ce320ac      2ad0           mov.l @(0xA8,PC),r0                  
            0x0ce320ae      2d62           extu.w r2,r2                         
            0x0ce320b0      1922           and r1,r2                            
            0x0ce320b2      f6e1           mov 0xF6,r1                          
            0x0ce320b4      1c42           shad r1,r2                           
            0x0ce320b6      0042           shll r2                              
            0x0ce320b8      2c02           mov.b @(r0,r2),r2                    
            0x0ce320ba      4690           mov.w @(0x8C,PC),r0                  
            0x0ce320bc      2403           mov.b r2,@(r0,r3)                    
            0x0ce320be      047f           add 0x04,r15                         
            0x0ce320c0      264f           lds.l @r15+,pr                       
            0x0ce320c2      26d3           mov.l @(0x98,PC),r3                  
            0x0ce320c4      f9ff           fmov @r15+,fr15                      
            0x0ce320c6      f66c           mov.l @r15+,r12                      
            0x0ce320c8      f66d           mov.l @r15+,r13                      
            0x0ce320ca      2b43           jmp @r3                              
            0x0ce320cc      f66e           mov.l @r15+,r14                      

            0x0ce320ce      e684           mov.b @(0x6,r14),r0                  
            0x0ce320d0      0820           tst r0,r0                            
        ,=< 0x0ce320d2      218b           bf 0x0ce32118               ;[1]     
        |   0x0ce320d4      ee85           mov.w @(0x1C,r14),r0                 
        |   0x0ce320d6      ff70           add 0xFF,r0                          
        |   0x0ce320d8      ee81           mov.w r0,@(0x1C,r14)                 
        |   0x0ce320da      0f60           exts.w r0,r0                         
        |   0x0ce320dc      1140           cmp/pz r0                            
       ,==< 0x0ce320de      1789           bt 0x0ce32110               ;[2]     
       ||   0x0ce320e0      e684           mov.b @(0x6,r14),r0                  
       ||   0x0ce320e2      f6e2           mov 0xF6,r2                          
       ||   0x0ce320e4      3093           mov.w @(0x60,PC),r3                  
       ||   0x0ce320e6      0fe5           mov 0x0F,r5                          
       ||   0x0ce320e8      0170           add 0x01,r0                          
       ||   0x0ce320ea      e680           mov.b r0,@(0x6,r14)                  
       ||   0x0ce320ec      2b90           mov.w @(0x56,PC),r0                  
       ||   0x0ce320ee      ed04           mov.w @(r0,r14),r4                   
       ||   0x0ce320f0      1bd0           mov.l @(0x6C,PC),r0                  
       ||   0x0ce320f2      4d64           extu.w r4,r4                         
       ||   0x0ce320f4      3924           and r3,r4                            
       ||   0x0ce320f6      1cd3           mov.l @(0x70,PC),r3                  
       ||   0x0ce320f8      2c44           shad r2,r4                           
       ||   0x0ce320fa      4f64           exts.w r4,r4                         
       ||   0x0ce320fc      0044           shll r4                              
       ||   0x0ce320fe      422f           mov.l r4,@r15                        
       ||   0x0ce32100      4d02           mov.w @(r0,r4),r2                    
       ||   0x0ce32102      2390           mov.w @(0x46,PC),r0                  
       ||   0x0ce32104      240e           mov.b r2,@(r0,r14)                   
       ||   0x0ce32106      17d0           mov.l @(0x5C,PC),r0                  
       ||   0x0ce32108      f261           mov.l @r15,r1                        
       ||   0x0ce3210a      1d06           mov.w @(r0,r1),r6                    
       ||   0x0ce3210c      0b43           jsr @r3                     ;[?]     
       ||   0x0ce3210e      e364           mov r14,r4                           
       `--> 0x0ce32110      0b4d           jsr @r13                    ;[?]     
        |   0x0ce32112      e364           mov r14,r4                           
       ,==< 0x0ce32114      48a0           bra 0x0ce321a8              ;[3]     
       ||   0x0ce32116      0900           nop                                  

            0x0ce32118      0b4d           jsr @r13                    ;[?]     
            0x0ce3211a      e364           mov r14,r4                           
            0x0ce3211c      0e60           exts.b r0,r0                         
            0x0ce3211e      1140           cmp/pz r0                            
        ,=< 0x0ce32120      2689           bt 0x0ce32170               ;[1]     

            0x0ce32122      0ed2           mov.l @(0x38,PC),r2                  
            0x0ce32124      0b42           jsr @r2                     ;[?]     
            0x0ce32126      0900           nop                                  
            0x0ce32128      1190           mov.w @(0x22,PC),r0                  
            0x0ce3212a      e364           mov r14,r4                           
            0x0ce3212c      ec05           mov.b @(r0,r14),r5                   
            0x0ce3212e      5c65           extu.b r5,r5                         
            0x0ce32130      047f           add 0x04,r15                         
            0x0ce32132      264f           lds.l @r15+,pr                       
            0x0ce32134      0dd3           mov.l @(0x34,PC),r3                  
            0x0ce32136      f9ff           fmov @r15+,fr15                      
            0x0ce32138      f66c           mov.l @r15+,r12                      
            0x0ce3213a      f66d           mov.l @r15+,r13                      
            0x0ce3213c      2b43           jmp @r3                              
            0x0ce3213e      f66e           mov.l @r15+,r14                      

;##############################################################################
0x0ce32140 0x01ea 0x0141 0x01c8 0x034a 0x3c00 0x01a1 0x01a3 0x01f9
0x0ce32150  0x8c034dee 0x8c0e4adc 0x0ce32370 0x8c02fd26  .M...J..p#..&...       
0x0ce32160  0x0ce32390 0x0ce323b0 0x8c034e8c 0x0ce3057c

;------------------------------------------------------------------------------
            0x0ce32170      7990           mov.w @(0xF2,PC),r0                  
            0x0ce32172      ec03           mov.b @(r0,r14),r3                   
            0x0ce32174      3823           tst r3,r3                            
            0x0ce32176      1789           bt 0x0ce321a8               ;[1]     
            0x0ce32178      c40e           mov.b r12,@(r0,r14)                  
            0x0ce3217a      5ce0           mov 0x5C,r0                          
            0x0ce3217c      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce3217e      60e0           mov 0x60,r0                          
            0x0ce32180      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce32182      68e0           mov 0x68,r0                          
            0x0ce32184      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce32186      6ce0           mov 0x6C,r0                          
            0x0ce32188      f7fe           fmov fr15,@(r0,r14)                  
            0x0ce3218a      01e2           mov 0x01,r2                          
            0x0ce3218c      6c90           mov.w @(0xD8,PC),r0                  
            0x0ce3218e      ee03           mov.l @(r0,r14),r3                   
            0x0ce32190      ec70           add 0xEC,r0                          
            0x0ce32192      e603           mov.l r14,@(r0,r3)                   
            0x0ce32194      1470           add 0x14,r0                          
            0x0ce32196      ee03           mov.l @(r0,r14),r3                   
            0x0ce32198      2e70           add 0x2E,r0                          
            0x0ce3219a      2403           mov.b r2,@(r0,r3)                    
            0x0ce3219c      d270           add 0xD2,r0                          
            0x0ce3219e      ee03           mov.l @(r0,r14),r3                   
            0x0ce321a0      db70           add 0xDB,r0                          
            0x0ce321a2      ec02           mov.b @(r0,r14),r2                   
            0x0ce321a4      fe70           add 0xFE,r0                          
            0x0ce321a6      2403           mov.b r2,@(r0,r3)                    

            0x0ce321a8      047f           add 0x04,r15                         
            0x0ce321aa      264f           lds.l @r15+,pr                       
            0x0ce321ac      f9ff           fmov @r15+,fr15                      
            0x0ce321ae      f66c           mov.l @r15+,r12                      
            0x0ce321b0      f66d           mov.l @r15+,r13                      
            0x0ce321b2      0b00           rts                                  
            0x0ce321b4      f66e           mov.l @r15+,r14                      

;==============================================================================
            0x0ce321b6      5790           mov.w @(0xAE,PC),r0                  
            0x0ce321b8      4365           mov r4,r5                            
            0x0ce321ba      462f           mov.l r4,@-r15                       
            0x0ce321bc      2cd3           mov.l @(0xB0,PC),r3                  
            0x0ce321be      4e04           mov.l @(r0,r4),r4                    
            0x0ce321c0      2b43           jmp @r3                              
            0x0ce321c2      047f           add 0x04,r15                         

;==============================================================================
            0x0ce321c4      00e0           mov 0x00,r0                          
            0x0ce321c6      4580           mov.b r0,@(0x5,r4)                   
            0x0ce321c8      4780           mov.b r0,@(0x7,r4)                   
            0x0ce321ca      4680           mov.b r0,@(0x6,r4)                   
            0x0ce321cc      4d90           mov.w @(0x9A,PC),r0                  
            0x0ce321ce      4c00           mov.b @(r0,r4),r0                    
            0x0ce321d0      0088           cmp/eq 0x00,r0                       
        ,=< 0x0ce321d2      068d           bt.s 0x0ce321e2             ;[1]     
        |   0x0ce321d4      03e5           mov 0x03,r5                          
        |   0x0ce321d6      0188           cmp/eq 0x01,r0                       
       ,==< 0x0ce321d8      0789           bt 0x0ce321ea               ;[2]     
       ||   0x0ce321da      0288           cmp/eq 0x02,r0                       
      ,===< 0x0ce321dc      0589           bt 0x0ce321ea               ;[2]     
     ,====< 0x0ce321de      06a0           bra 0x0ce321ee              ;[3]     
     ||||   0x0ce321e0      0900           nop                                  
     |||`-> 0x0ce321e2      4390           mov.w @(0x86,PC),r0                  
     |||    0x0ce321e4      02e3           mov 0x02,r3                          
     |||,=< 0x0ce321e6      02a0           bra 0x0ce321ee              ;[3]     
     ||||   0x0ce321e8      3404           mov.b r3,@(r0,r4)                    
     |``--> 0x0ce321ea      3f90           mov.w @(0x7E,PC),r0                  
     |  |   0x0ce321ec      5404           mov.b r5,@(r0,r4)                    
     `--`-> 0x0ce321ee      21d2           mov.l @(0x84,PC),r2                  
            0x0ce321f0      2b42           jmp @r2                              
            0x0ce321f2      1de5           mov 0x1D,r5                          

;==============================================================================
            0x0ce321f4      00e0           mov 0x00,r0                          
            0x0ce321f6      4580           mov.b r0,@(0x5,r4)                   
            0x0ce321f8      4780           mov.b r0,@(0x7,r4)                   
            0x0ce321fa      4680           mov.b r0,@(0x6,r4)                   
            0x0ce321fc      3590           mov.w @(0x6A,PC),r0                  
            0x0ce321fe      4c00           mov.b @(r0,r4),r0                    
            0x0ce32200      0088           cmp/eq 0x00,r0                       
        ,=< 0x0ce32202      068d           bt.s 0x0ce32212             ;[1]     
        |   0x0ce32204      03e5           mov 0x03,r5                          
        |   0x0ce32206      0188           cmp/eq 0x01,r0                       
       ,==< 0x0ce32208      0789           bt 0x0ce3221a               ;[2]     
       ||   0x0ce3220a      0288           cmp/eq 0x02,r0                       
      ,===< 0x0ce3220c      0589           bt 0x0ce3221a               ;[2]     
     ,====< 0x0ce3220e      06a0           bra 0x0ce3221e              ;[3]     
     ||||   0x0ce32210      0900           nop                                  
     |||`-> 0x0ce32212      2b90           mov.w @(0x56,PC),r0                  
     |||    0x0ce32214      02e3           mov 0x02,r3                          
     |||,=< 0x0ce32216      02a0           bra 0x0ce3221e              ;[3]     
     ||||   0x0ce32218      3404           mov.b r3,@(r0,r4)                    
     |``--> 0x0ce3221a      2790           mov.w @(0x4E,PC),r0                  
     |  |   0x0ce3221c      5404           mov.b r5,@(r0,r4)                    
     `--`-> 0x0ce3221e      15d2           mov.l @(0x54,PC),r2                  
            0x0ce32220      2b42           jmp @r2                              
            0x0ce32222      1de5           mov 0x1D,r5                         

;==============================================================================
            0x0ce32224      00e5           mov 0x00,r5                          
            0x0ce32226      5360           mov r5,r0                            
            0x0ce32228      0900           nop                                  
            0x0ce3222a      4580           mov.b r0,@(0x5,r4)                   
            0x0ce3222c      4780           mov.b r0,@(0x7,r4)                   
            0x0ce3222e      4680           mov.b r0,@(0x6,r4)                   
            0x0ce32230      1b90           mov.w @(0x36,PC),r0                  
            0x0ce32232      4c00           mov.b @(r0,r4),r0                    
            0x0ce32234      0088           cmp/eq 0x00,r0                       
        ,=< 0x0ce32236      068d           bt.s 0x0ce32246             ;[1]     
        |   0x0ce32238      01e6           mov 0x01,r6                          
        |   0x0ce3223a      0188           cmp/eq 0x01,r0                       
       ,==< 0x0ce3223c      0689           bt 0x0ce3224c               ;[2]     
       ||   0x0ce3223e      0288           cmp/eq 0x02,r0                       
      ,===< 0x0ce32240      0989           bt 0x0ce32256               ;[3]     
     ,====< 0x0ce32242      0da0           bra 0x0ce32260              ;[4]     
     ||||   0x0ce32244      0900           nop                                  
     |||`-> 0x0ce32246      1190           mov.w @(0x22,PC),r0                  
     |||,=< 0x0ce32248      08a0           bra 0x0ce3225c              ;[5]     
     ||||   0x0ce3224a      5404           mov.b r5,@(r0,r4)                    
     ||`--> 0x0ce3224c      0e90           mov.w @(0x1C,PC),r0                  
     || |   0x0ce3224e      6404           mov.b r6,@(r0,r4)                    
     || |   0x0ce32250      ba70           add 0xBA,r0                          
     ||,==< 0x0ce32252      05a0           bra 0x0ce32260              ;[4]     
     ||||   0x0ce32254      5404           mov.b r5,@(r0,r4)                    
     |`---> 0x0ce32256      0990           mov.w @(0x12,PC),r0                  
     | ||   0x0ce32258      0de2           mov 0x0D,r2                          
     | ||   0x0ce3225a      2404           mov.b r2,@(r0,r4)                    
     | |`-> 0x0ce3225c      0790           mov.w @(0xE,PC),r0                   
     | |    0x0ce3225e      6404           mov.b r6,@(r0,r4)                    
     `-`--> 0x0ce32260      04d2           mov.l @(0x10,PC),r2                  
            0x0ce32262      2b42           jmp @r2                              
            0x0ce32264      15e5           mov 0x15,r5                         

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce32266 0x0141 0x01c8 0x04c9 0x01e9 0x01a3
0x0ce32270  0x8c04cc1c 0x8c0530d8 

;==============================================================================
            0x0ce32278      00e5           mov 0x00,r5                          
            0x0ce3227a      5360           mov r5,r0                            
            0x0ce3227c      0900           nop                                  
            0x0ce3227e      4580           mov.b r0,@(0x5,r4)                   
            0x0ce32280      4780           mov.b r0,@(0x7,r4)                   
            0x0ce32282      4680           mov.b r0,@(0x6,r4)                   
            0x0ce32284      1990           mov.w @(0x32,PC),r0                  
            0x0ce32286      4c00           mov.b @(r0,r4),r0                    
            0x0ce32288      0088           cmp/eq 0x00,r0                       
        ,=< 0x0ce3228a      068d           bt.s 0x0ce3229a             ;[1]     
        |   0x0ce3228c      01e6           mov 0x01,r6                          
        |   0x0ce3228e      0188           cmp/eq 0x01,r0                       
       ,==< 0x0ce32290      0689           bt 0x0ce322a0               ;[2]     
       ||   0x0ce32292      0288           cmp/eq 0x02,r0                       
      ,===< 0x0ce32294      0989           bt 0x0ce322aa               ;[3]     
     ,====< 0x0ce32296      0da0           bra 0x0ce322b4              ;[4]     
     ||||   0x0ce32298      0900           nop                                  
     |||`-> 0x0ce3229a      0f90           mov.w @(0x1E,PC),r0                  
     |||,=< 0x0ce3229c      08a0           bra 0x0ce322b0              ;[5]     
     ||||   0x0ce3229e      5404           mov.b r5,@(r0,r4)                    
     ||`--> 0x0ce322a0      0c90           mov.w @(0x18,PC),r0                  
     || |   0x0ce322a2      6404           mov.b r6,@(r0,r4)                    
     || |   0x0ce322a4      ba70           add 0xBA,r0                          
     ||,==< 0x0ce322a6      05a0           bra 0x0ce322b4              ;[4]     
     ||||   0x0ce322a8      5404           mov.b r5,@(r0,r4)                    
     |`---> 0x0ce322aa      0790           mov.w @(0xE,PC),r0                   
     | ||   0x0ce322ac      0de2           mov 0x0D,r2                          
     | ||   0x0ce322ae      2404           mov.b r2,@(r0,r4)                    
     | |`-> 0x0ce322b0      0590           mov.w @(0xA,PC),r0                   
     | |    0x0ce322b2      6404           mov.b r6,@(r0,r4)                    
     `-`--> 0x0ce322b4      02d2           mov.l @(0x8,PC),r2                   
            0x0ce322b6      2b42           jmp @r2                              
            0x0ce322b8      15e5           mov 0x15,r5                          

;/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
0x0ce322ba  0x04c9 0x01e9 0x01a3
0x0ce322c0  0x8c0530d8

0x0ce322c4  0102 0102 ffff ffff ffff ffff 0102 0102
0x0ce322d4  ffff ffff ffff ffff 0102 0002 ff02 0102
0x0ce322e4  ffff ff02 0102 0102 ff02 ff02 ffff ffff

;Input Data
0x0ce322f4  0500 0000 0000 0000 0004 0014 0010 0018 0008 0003 ;EM disruptor
0x0ce32308  0500 0000 0100 0000 0008 0018 0010 0014 0004 6000 ;Hyper Grav
0x0ce3231c  0300 0091 0200 0000 0010 0018 0008 0003 ;Shockwave
0x0ce3232c  0300 0081 0300 0000 0010 0018 0008 6000 ;Tempest
0x0ce3233c  0300 0080 0400 0000 0010 0014 0004 6000 ;Fight
0x0ce3234c  0500 0010 0800 0000 0004 0014 0010 0018 0008 6000 ;Force Field
0x0ce32360  0300 0020 0700 0000 0020 0028 0008 0003 ;Blast

0x0ce32370  2000 2000
0x0ce32374  2000 2000 2000 2000 2000 2000 2100 2000
0x0ce32384  2100 2000 2100 2000 2100 2000 2300 2300
0x0ce32394  2300 2300 2400 2400 2400 2400 2200 2300
0x0ce323a4  2200 2300 2200 2300 2200 2300 0500 0500
0x0ce323b4  0500 0500 0700 0700 0700 0700 0400 0400
0x0ce323c4  0400 0400 0400 0400 0400 0400

0x0ce323d0  0x0ce3050e 0x0ce3001c 0x0ce307f6 0x0ce309d4
0x0ce323e0  0x0ce30bae 0x0ce30cec 0x0ce30e10 0x0ce30e8c
0x0ce323f0  0x0ce30f02 0x0ce31eae 0x0ce31f54 0x0ce32030
0x0ce32400  0x0ce321b6 0x0ce304b4 0x0ce31c66 0x0ce30ae8
0x0ce32410  0x0ce321c4 0x0ce321f4 0x0ce32224 0x0ce32278

0x0ce32420  0x00000000 0x00000000 0x00000000 0x00000000
0x0ce32430  0x00000000 0x00000000 0x00000000 0x00000000

0x0ce32440 0x0000 0x1400 0x1615 0x0014 0x1400 0x1615

0x0ce3244c  0x0ce305f0 0x0ce307ca 0x0ce306a0 0x0ce305f0
0x0ce3245c  0x0ce30bc0 0x0ce30c48 0x0ce30cca 0x0ce30cfe
0x0ce3246c  0x0ce30d6c 0x0ce30dee 0x0ce30f16 0x0ce3109c
0x0ce3247c  0x0ce314a4 0x0ce312b6 0x0ce316c6 0x8c051648
0x0ce3248c  0x0ce31b84 0x0ce317fa 0x0ce31952 0x8c051648
0x0ce3249c  0x8c051648 0x8c051648 0x0ce31dac 0x0ce31bd8
0x0ce324ac  0x0ce310d0 0x0ce31176 0x0ce31234 0x0ce312c8
0x0ce324bc  0x0ce31344 0x0ce3140e 0x0ce31480 0x0ce314ec
0x0ce324cc  0x0ce3156a 0x0ce31640 0x0ce3167e 0x0ce316d8
0x0ce324dc  0x0ce31780 0x0ce3199e 0x0ce31a0c 0x0ce31a46
0x0ce324ec  0x0ce31adc 0x0ce31afe 0x0ce31b58 0x0ce31c9c
0x0ce324fc  0x0ce31d16 0x0ce31d84 0x0ce31df0 0x0ce31e66
