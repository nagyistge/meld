meld fil       ©                                                                                                                                                                                                                                                                                             	       	                     
       
                                                                                                                                                     !       !       "       "       #       #       $       $       %       %       &       &       )       )       *       *       +       +       '       '       ,       ,       (       (       -       -       .       .       /       /       0       0       1       1       2       2       3       3       6       6       7       7       8       8       4       4       9       9       5       5       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       C       C       D       D       E       E       A       A       F       F       B       B       G       G       H       H       I       I       J       J       K       K       L       L       M       M       P       P       Q       Q       R       R       N       N       S       S       O       O       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       ]       ]       ^       ^       _       _       [       [       `       `       \       \       a       a       b       b       c       c       d       d       e       e       f       f       g       g       j       j       k       k       l       l       h       h       m       m       i       i       n       n       o       o       p       p       q       q       r       r       s       s       t       t       w       w       x       x       y       y       u       u       z       z       v       v       {       {       |       |       }       }       ~       ~                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ¡       ¡                     ¢       ¢       £       £       ¤       ¤       ¥       ¥       ¦       ¦       §       §       ¨       ¨        	                _init -o node-axioms.   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).v   test-y(Y, MV3, Nodes, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).à   test-y(MV24, MV25, MV26, MV27), MV29 := head(MV28), MV28 := tail(MV25), not(test-nil(MV25)), 
			not(test-nil(MV28)) -o (MV24 = MV29 -o 1), OR (RestCoords := tail(MV28), MV24 != MV29 -o test-y(MV24, RestCoords, MV26, MV27)).   test-diag-left(X, Y, MV1, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).9  test-diag-left(MV30, MV31, MV32, MV33, MV34), MV37 := head(MV36), MV36 := tail(MV32), MV35 := head(MV32), 
			not(test-nil(MV32)), not(test-nil(MV36)) -o (MV30 = MV35, MV31 = MV37 -o 1), OR (RestCoords := tail(MV36), (MV30 != MV35) || (MV31 != MV37) -o test-diag-left(MV30 - 1, MV31 - 1, RestCoords, MV33, MV34)).¡   test-diag-right(X, Y, MV16, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 13), test-nil(MV16) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).;  test-diag-right(MV38, MV39, MV40, MV41, MV42), MV45 := head(MV44), MV44 := tail(MV40), MV43 := head(MV40), 
			not(test-nil(MV40)), not(test-nil(MV44)) -o (MV38 = MV43, MV39 = MV45 -o 1), OR (RestCoords := tail(MV44), (MV38 != MV43) || (MV39 != MV45) -o test-diag-right(MV38 - 1, MV39 + 1, RestCoords, MV41, MV42)).U   send-down(Nodes, Coords), !coord(MV23, MV2), MV23 = 12 -o final-state(Nodes, Coords).¯   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           ð                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   test-y                                                               test-diag-left                                                       test-diag-right                                                      send-down                                                            final-state                                                      ÿÿÿÿÿÿïÿ   E                   E    
eE  ©      q   Ö   ;       j  Ï  4    þ  c  È  -    ÷  \  Á  &    ð  U  º  	  	  é	  N
  ³
    }  â  G  ¬    v  Û  @  ¥  
  o  Ô  9      h  Í  2    ü  a  Æ  +    õ  Z  ¿  $    î  S  ¸      ç  L  ±    {  à  E  ª    t  Ù  >  £    m  Ò  7       f   Ë   0!  !  ú!  _"  Ä"  )#  #  ó#  X$  ½$  "%  %  ì%  Q&  ¶&  '  '  å'  J(  ¯(  )  y)  Þ)  C*  ¨*  +  r+  ×+  <,  ¡,  -  k-  Ð-  5.  .  ÿ.  d/  É/  .0  0  ø0  ]1  Â1  '2  2  ñ2  V3  »3   4  4  ê4  O5  ´5  6  ~6  ã6  H7  ­7  8  w8  Ü8  A9  ¦9  :  p:  Õ:  :;  ;  <  i<  Î<  3=  =  ý=  b>  Ç>  ,?  ?  ö?  [@  À@  %A  A  ïA  TB                 ,­.      *@£@p pw2                                         MB                ,­.      *@£2                                       èA                ,­.      *@£2                                      A                ,­.      *@£2                                      A                ,­.      *@£2                                      ¹@                ,­.      *@£2                                      T@                ,­.      *@£2                                      ï?                ,­.      *@£2                                      ?                ,­.      *@£2                               	       %?      	          ,­.      *@£2       	                        
       À>      
          ,­.      *@£2       
                 	              [>                ,­.      *@£2                        
              ö=                ,­.      *@£2                                      =                ,­.      (@£2                                      ,=               ,­.      (@£2                                     Ç<               ,­.      (@£2                                     b<               ,­.      (@£2                                     ý;               ,­.      (@£2                                      ;               ,­.      (@£2         !                            3;               ,­.      (@£2         "                            Î:               ,­.      (@£2         #                            i:               ,­.      (@£2         $                             :     	          ,­.      (@£2      	   %       !                     9     
          ,­.      (@£2      
   &       "                     :9               ,­.      (@£2                #                     Õ8               ,­.      (@£2                $                     p8                ,­.      &@£2          )                            8               ,­.      &@£2         *                            ¦7               ,­.      &@£2         +       '                     A7               ,­.      &@£2         ,       (                     Ü6               ,­.      &@£2         -       )                     w6               ,­.      &@£2         .       *                      6               ,­.      &@£2         /       +              !       ­5               ,­.      &@£2         0       ,               "       H5               ,­.      &@£2         1       -       !       #       ã4     	          ,­.      &@£2      	   2       .       "       $       ~4     
          ,­.      &@£2      
   3       /       #       %       4               ,­.      &@£2         %       0       $       &       ´3               ,­.      &@£2         &       1       %       &       O3                ,­.      $@£2          6       '       '       (       ê2               ,­.      $@£2         7       (       '       )       2               ,­.      $@£2         8       4       (       *        2               ,­.      $@£2         9       5       )       +       »1               ,­.      $@£2         :       6       *       ,       V1               ,­.      $@£2         ;       7       +       -       ñ0               ,­.      $@£2         <       8       ,       .       0               ,­.      $@£2         =       9       -       /       '0               ,­.      $@£2         >       :       .       0       Â/     	          ,­.      $@£2      	   ?       ;       /       1       ]/     
          ,­.      $@£2      
   @       <       0       2       ø.               ,­.      $@£2         2       =       1       3       .               ,­.      $@£2         3       >       2       3       ..                ,­.      "@£2          C       4       4       5       É-               ,­.      "@£2         D       5       4       6       d-               ,­.      "@£2         E       A       5       7       ÿ,               ,­.      "@£2         F       B       6       8       ,               ,­.      "@£2         G       C       7       9       5,               ,­.      "@£2         H       D       8       :       Ð+               ,­.      "@£2         I       E       9       ;       k+               ,­.      "@£2         J       F       :       <       +               ,­.      "@£2         K       G       ;       =       ¡*     	          ,­.      "@£2      	   L       H       <       >       <*     
          ,­.      "@£2      
   M       I       =       ?       ×)               ,­.      "@£2         ?       J       >       @       r)               ,­.      "@£2         @       K       ?       @       )                ,­.       @£2          P       A       A       B       ¨(               ,­.       @£2         Q       B       A       C       C(               ,­.       @£2         R       N       B       D       Þ'               ,­.       @£2         S       O       C       E       y'               ,­.       @£2         T       P       D       F       '               ,­.       @£2         U       Q       E       G       ¯&               ,­.       @£2         V       R       F       H       J&               ,­.       @£2         W       S       G       I       å%               ,­.       @£2         X       T       H       J       %     	          ,­.       @£2      	   Y       U       I       K       %     
          ,­.       @£2      
   Z       V       J       L       ¶$               ,­.       @£2         L       W       K       M       Q$               ,­.       @£2         M       X       L       M       ì#                ,­.      @£2          ]       N       N       O       #               ,­.      @£2         ^       O       N       P       "#               ,­.      @£2         _       [       O       Q       ½"               ,­.      @£2         `       \       P       R       X"               ,­.      @£2         a       ]       Q       S       ó!               ,­.      @£2         b       ^       R       T       !               ,­.      @£2         c       _       S       U       )!               ,­.      @£2         d       `       T       V       Ä                ,­.      @£2         e       a       U       W       _      	          ,­.      @£2      	   f       b       V       X       ú     
          ,­.      @£2      
   g       c       W       Y                      ,­.      @£2         Y       d       X       Z       0               ,­.      @£2         Z       e       Y       Z       Ë                ,­.      @£2          j       [       [       \       f               ,­.      @£2         k       \       [       ]                      ,­.      @£2         l       h       \       ^                      ,­.      @£2         m       i       ]       _       7               ,­.      @£2         n       j       ^       `       Ò               ,­.      @£2         o       k       _       a       m               ,­.      @£2         p       l       `       b                      ,­.      @£2         q       m       a       c       £               ,­.      @£2         r       n       b       d       >     	          ,­.      @£2      	   s       o       c       e       Ù     
          ,­.      @£2      
   t       p       d       f       t               ,­.      @£2         f       q       e       g                      ,­.      @£2         g       r       f       g       ª                ,­.      @£2          w       h       h       i       E               ,­.      @£2         x       i       h       j       à               ,­.      @£2         y       u       i       k       {               ,­.      @£2         z       v       j       l                      ,­.      @£2         {       w       k       m       ±               ,­.      @£2         |       x       l       n       L               ,­.      @£2         }       y       m       o       ç               ,­.      @£2         ~       z       n       p                      ,­.      @£2                {       o       q            	          ,­.      @£2      	          |       p       r       ¸     
          ,­.      @£2      
          }       q       s       S               ,­.      @£2         s       ~       r       t       î               ,­.      @£2         t              s       t         	              ,­.      @£2   	              u       u       v       $  	             ,­.      @£2   	             v       u       w       ¿  	             ,­.      @£2   	                    v       x       Z  	             ,­.      @£2   	                    w       y       õ  	             ,­.      @£2   	                    x       z         	             ,­.      @£2   	                    y       {       +  	             ,­.      @£2   	                    z       |       Æ  	             ,­.      @£2   	                    {       }       a  	             ,­.      @£2   	                    |       ~       ü  	   	          ,­.      @£2   	   	                 }                	   
          ,­.      @£2   	   
                 ~              2  	             ,­.      @£2   	                                  Í  	             ,­.      @£2   	                                  h  
              ,­.      @£2   
                                     
             ,­.      @£2   
                                    
             ,­.      @£2   
                                  9  
             ,­.      @£2   
                                  Ô  
             ,­.      @£2   
                                  o  
             ,­.      @£2   
                                  
  
             ,­.      @£2   
                                  ¥  
             ,­.      @£2   
                                  @  
             ,­.      @£2   
                                  Û  
   	          ,­.      @£2   
   	                               v  
   
          ,­.      @£2   
   
                                 
             ,­.      @£2   
                                  ¬
  
             ,­.      @£2   
                                  G
                ,­.       @£2                                      â	               ,­.       @£2                                     }	               ,­.       @£2                                      	               ,­.       @£2         ¡                            ³               ,­.       @£2         ¢                            N               ,­.       @£2         £                            é               ,­.       @£2         ¤                                            ,­.       @£2         ¥       ¡                                    ,­.       @£2         ¦       ¢                     º     	          ,­.       @£2      	   §       £                     U     
          ,­.       @£2      
   ¨       ¤                     ð               ,­.       @£2                ¥                                    ,­.       @£2                ¦                     &                ,­.      ð?£2                                      Á               ,­.      ð?£2                                     \               ,­.      ð?£2                                     ÷               ,­.      ð?£2                                                     ,­.      ð?£2                                ¡       -               ,­.      ð?£2         ¡       ¡               ¢       È               ,­.      ð?£2         ¢       ¢       ¡       £       c               ,­.      ð?£2         £       £       ¢       ¤       þ               ,­.      ð?£2         ¤       ¤       £       ¥            	          ,­.      ð?£2      	   ¥       ¥       ¤       ¦       4     
          ,­.      ð?£2      
   ¦       ¦       ¥       §       Ï                ,­.      ð?£2         §       §       ¦       ¨       j                ,­.      ð?£2         ¨       ¨       §       ¨          #         ð ¤  uE  lE  cE  ZE  E  E  þD  õD  «D  ¢D  D  D  FD  =D  4D  +D  áC  ØC  ÏC  ÆC  |C  sC  jC  aC  C  C  C  üB  ²B  ©B   B  B  MB  DB  ;B  2B  èA  ßA  ÖA  ÍA  A  zA  qA  hA  A  A  A  A  ¹@  °@  §@  @  T@  K@  B@  9@  ï?  æ?  Ý?  Ô?  ?  ?  x?  o?  %?  ?  ?  
?  À>  ·>  ®>  ¥>  [>  R>  I>  @>  ö=  í=  ä=  Û=  =  =  =  v=  ,=  #=  =  =  Ç<  ¾<  µ<  ¬<  b<  Y<  P<  G<  ý;  ô;  ë;  â;  ;  ;  ;  };  3;  *;  !;  ;  Î:  Å:  ¼:  ³:  i:  `:  W:  N:  :  û9  ò9  é9  9  9  9  9  :9  19  (9  9  Õ8  Ì8  Ã8  º8  p8  g8  ^8  U8  8  8  ù7  ð7  ¦7  7  7  7  A7  87  /7  &7  Ü6  Ó6  Ê6  Á6  w6  n6  e6  \6  6  	6   6  ÷5  ­5  ¤5  5  5  H5  ?5  65  -5  ã4  Ú4  Ñ4  È4  ~4  u4  l4  c4  4  4  4  þ3  ´3  «3  ¢3  3  O3  F3  =3  43  ê2  á2  Ø2  Ï2  2  |2  s2  j2   2  2  2  2  »1  ²1  ©1   1  V1  M1  D1  ;1  ñ0  è0  ß0  Ö0  0  0  z0  q0  '0  0  0  0  Â/  ¹/  °/  §/  ]/  T/  K/  B/  ø.  ï.  æ.  Ý.  .  .  .  x.  ..  %.  .  .  É-  À-  ·-  ®-  d-  [-  R-  I-  ÿ,  ö,  í,  ä,  ,  ,  ,  ,  5,  ,,  #,  ,  Ð+  Ç+  ¾+  µ+  k+  b+  Y+  P+  +  ý*  ô*  ë*  ¡*  *  *  *  <*  3*  **  !*  ×)  Î)  Å)  ¼)  r)  i)  `)  W)  )  )  û(  ò(  ¨(  (  (  (  C(  :(  1(  ((  Þ'  Õ'  Ì'  Ã'  y'  p'  g'  ^'  '  '  '  ù&  ¯&  ¦&  &  &  J&  A&  8&  /&  å%  Ü%  Ó%  Ê%  %  w%  n%  e%  %  %  	%   %  ¶$  ­$  ¤$  $  Q$  H$  ?$  6$  ì#  ã#  Ú#  Ñ#  #  ~#  u#  l#  "#  #  #  #  ½"  ´"  «"  ¢"  X"  O"  F"  ="  ó!  ê!  á!  Ø!  !  !  |!  s!  )!   !  !  !  Ä   »   ²   ©   _   V   M   D   ú  ñ  è  ß        z  0  '      Ë  Â  ¹  °  f  ]  T  K    ø  ï  æ          7  .  %    Ò  É  À  ·  m  d  [  R    ÿ  ö  í  £        >  5  ,  #  Ù  Ð  Ç  ¾  t  k  b  Y      ý  ô  ª  ¡      E  <  3  *  à  ×  Î  Å  {  r  i  `        û  ±  ¨      L  C  :  1  ç  Þ  Õ  Ì    y  p  g          ¸  ¯  ¦    S  J  A  8  î  å  Ü  Ó      w  n  $      	  ¿  ¶  ­  ¤  Z  Q  H  ?  õ  ì  ã  Ú      ~  u  +  "      Æ  ½  ´  «  a  X  O  F  ü  ó  ê  á        |  2  )       Í  Ä  »  ²  h  _  V  M    ú  ñ  è          9  0  '    Ô  Ë  Â  ¹  o  f  ]  T  
    ø  ï  ¥        @  7  .  %  Û  Ò  É  À  v  m  d  [      ÿ
  ö
  ¬
  £
  
  
  G
  >
  5
  ,
  â	  Ù	  Ð	  Ç	  }	  t	  k	  b	  	  	  	  ý  ³  ª  ¡    N  E  <  3  é  à  ×  Î    {  r  i          º  ±  ¨    U  L  C  :  ð  ç  Þ  Õ      y  p  &        Á  ¸  ¯  ¦  \  S  J  A  ÷  î  å  Ü        w  -  $          o                  i    @%   % wA              ;    " 78`   @%   % " ð ð        o                  i    @%   % wA              ;    " 78`   @%   % " ð ð        N                  H               2    @! % %  % w ð        o                  i              Q    @"    :& "   :&% % % w ð        P                  J   Z S"  ;`	    ð"  <`   Y' { ð                              "      >`   "     >`W              Q    @"    :& "   =&% % % w ð                             Z ST "  ;`   " ;`	    ð"  <`   " <`4   Y"     :&  "    :& ' { ð        {                  u   "      >`   "    ?`8              2    @7a  c b w ð           	                  Z ST "  ;`   " ;`	    ð"  <`   " <`4   Y"     :&  "    =& ' { ð        J   
               D               .       @%   % w ð        ¡                      A              ;    " 78`   @%   % " ðA              ;    " 78`   @%   % " ð ð        