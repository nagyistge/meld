meld fil       ©                                                                                                                                                                                                                                                                                             	       	                     
       
                                                                                                                                                     !       !       "       "       #       #       $       $       %       %       &       &       )       )       *       *       +       +       '       '       ,       ,       (       (       -       -       .       .       /       /       0       0       1       1       2       2       3       3       6       6       7       7       8       8       4       4       9       9       5       5       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       C       C       D       D       E       E       A       A       F       F       B       B       G       G       H       H       I       I       J       J       K       K       L       L       M       M       P       P       Q       Q       R       R       N       N       S       S       O       O       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       ]       ]       ^       ^       _       _       [       [       `       `       \       \       a       a       b       b       c       c       d       d       e       e       f       f       g       g       j       j       k       k       l       l       h       h       m       m       i       i       n       n       o       o       p       p       q       q       r       r       s       s       t       t       w       w       x       x       y       y       u       u       z       z       v       v       {       {       |       |       }       }       ~       ~                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ”       ”                     ¢       ¢       £       £       ¤       ¤       „       „       ¦       ¦       §       §       Ø       Ø        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.F   test-and-send-down(Coords), !coord(X, Y) -o test-y(Y, Coords, Coords).h   test-y(Y, MV3, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Coords).«   test-y(MV18, MV19, MV20), MV21 := head(MV19), not(test-nil(MV19)) -o (MV18 = MV21 -o 1), 
			OR (RestCoords := tail(MV19), MV18 != MV21 -o test-y(MV18, RestCoords, MV20)).y   test-diag-left(X, Y, MV1, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Coords).Ļ   test-diag-left(MV22, MV23, MV24, MV25), MV26 := head(MV24), not(test-nil(MV24)) -o (MV23 = MV26 -o 1), 
			OR (RestCoords := tail(MV24), MV23 != MV26 -o test-diag-left(MV22 - 1, MV23 - 1, RestCoords, MV25)).|   test-diag-right(X, Y, MV12, Coords), !coord(OX, OY), (X < 0) || (Y >= 13), test-nil(MV12) -o 
			send-down(cons(OY,Coords)).Ń   test-diag-right(MV27, MV28, MV29, MV30), MV31 := head(MV29), not(test-nil(MV29)) -o (MV28 = MV31 -o 1), 
			OR (RestCoords := tail(MV29), MV28 != MV31 -o test-diag-right(MV27 - 1, MV28 + 1, RestCoords, MV30)).G   send-down(Coords), !coord(MV17, MV2), MV17 = 12 -o final-state(Coords).   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           š                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   test-y                                                               test-diag-left                                                       test-diag-right                                                      send-down                                                            final-state                                                      ’’’’’’ļ’   E                   E    
bE  ©      n   Ó   8      g  Ģ  1    ū  `  Å  *    ō  Y  ¾  #    ķ  R  ·  	  	  ę	  K
  °
    z  ß  D  ©    s  Ų  =  ¢    l  Ń  6       e  Ź  /    ł  ^  Ć  (    ņ  W  ¼  !    ė  P  µ      ä  I  ®    x  Ż  B  §    q  Ö  ;       j  Ļ  4    ž  c   Č   -!  !  ÷!  \"  Į"  &#  #  š#  U$  ŗ$  %  %  é%  N&  ³&  '  }'  ā'  G(  ¬(  )  v)  Ū)  @*  „*  
+  o+  Ō+  9,  ,  -  h-  Ķ-  2.  .  ü.  a/  Ę/  +0  0  õ0  Z1  æ1  $2  2  ī2  S3  ø3  4  4  ē4  L5  ±5  6  {6  ą6  E7  Ŗ7  8  t8  Ł8  >9  £9  :  m:  Ņ:  7;  ;  <  f<  Ė<  0=  =  ś=  _>  Ä>  )?  ?  ó?  X@  ½@  "A  A  ģA  QB                 ,­.      *@£@p w2                                         MB                ,­.      *@£2                                       čA                ,­.      *@£2                                      A                ,­.      *@£2                                      A                ,­.      *@£2                                      ¹@                ,­.      *@£2                                      T@                ,­.      *@£2                                      ļ?                ,­.      *@£2                                      ?                ,­.      *@£2                               	       %?      	          ,­.      *@£2       	                        
       Ą>      
          ,­.      *@£2       
                 	              [>                ,­.      *@£2                        
              ö=                ,­.      *@£2                                      =                ,­.      (@£2                                      ,=               ,­.      (@£2                                     Ē<               ,­.      (@£2                                     b<               ,­.      (@£2                                     ż;               ,­.      (@£2                                      ;               ,­.      (@£2         !                            3;               ,­.      (@£2         "                            Ī:               ,­.      (@£2         #                            i:               ,­.      (@£2         $                             :     	          ,­.      (@£2      	   %       !                     9     
          ,­.      (@£2      
   &       "                     :9               ,­.      (@£2                #                     Õ8               ,­.      (@£2                $                     p8                ,­.      &@£2          )                            8               ,­.      &@£2         *                            ¦7               ,­.      &@£2         +       '                     A7               ,­.      &@£2         ,       (                     Ü6               ,­.      &@£2         -       )                     w6               ,­.      &@£2         .       *                      6               ,­.      &@£2         /       +              !       ­5               ,­.      &@£2         0       ,               "       H5               ,­.      &@£2         1       -       !       #       ć4     	          ,­.      &@£2      	   2       .       "       $       ~4     
          ,­.      &@£2      
   3       /       #       %       4               ,­.      &@£2         %       0       $       &       “3               ,­.      &@£2         &       1       %       &       O3                ,­.      $@£2          6       '       '       (       ź2               ,­.      $@£2         7       (       '       )       2               ,­.      $@£2         8       4       (       *        2               ,­.      $@£2         9       5       )       +       »1               ,­.      $@£2         :       6       *       ,       V1               ,­.      $@£2         ;       7       +       -       ń0               ,­.      $@£2         <       8       ,       .       0               ,­.      $@£2         =       9       -       /       '0               ,­.      $@£2         >       :       .       0       Ā/     	          ,­.      $@£2      	   ?       ;       /       1       ]/     
          ,­.      $@£2      
   @       <       0       2       ų.               ,­.      $@£2         2       =       1       3       .               ,­.      $@£2         3       >       2       3       ..                ,­.      "@£2          C       4       4       5       É-               ,­.      "@£2         D       5       4       6       d-               ,­.      "@£2         E       A       5       7       ’,               ,­.      "@£2         F       B       6       8       ,               ,­.      "@£2         G       C       7       9       5,               ,­.      "@£2         H       D       8       :       Š+               ,­.      "@£2         I       E       9       ;       k+               ,­.      "@£2         J       F       :       <       +               ,­.      "@£2         K       G       ;       =       ”*     	          ,­.      "@£2      	   L       H       <       >       <*     
          ,­.      "@£2      
   M       I       =       ?       ×)               ,­.      "@£2         ?       J       >       @       r)               ,­.      "@£2         @       K       ?       @       )                ,­.       @£2          P       A       A       B       Ø(               ,­.       @£2         Q       B       A       C       C(               ,­.       @£2         R       N       B       D       Ž'               ,­.       @£2         S       O       C       E       y'               ,­.       @£2         T       P       D       F       '               ,­.       @£2         U       Q       E       G       Æ&               ,­.       @£2         V       R       F       H       J&               ,­.       @£2         W       S       G       I       å%               ,­.       @£2         X       T       H       J       %     	          ,­.       @£2      	   Y       U       I       K       %     
          ,­.       @£2      
   Z       V       J       L       ¶$               ,­.       @£2         L       W       K       M       Q$               ,­.       @£2         M       X       L       M       ģ#                ,­.      @£2          ]       N       N       O       #               ,­.      @£2         ^       O       N       P       "#               ,­.      @£2         _       [       O       Q       ½"               ,­.      @£2         `       \       P       R       X"               ,­.      @£2         a       ]       Q       S       ó!               ,­.      @£2         b       ^       R       T       !               ,­.      @£2         c       _       S       U       )!               ,­.      @£2         d       `       T       V       Ä                ,­.      @£2         e       a       U       W       _      	          ,­.      @£2      	   f       b       V       X       ś     
          ,­.      @£2      
   g       c       W       Y                      ,­.      @£2         Y       d       X       Z       0               ,­.      @£2         Z       e       Y       Z       Ė                ,­.      @£2          j       [       [       \       f               ,­.      @£2         k       \       [       ]                      ,­.      @£2         l       h       \       ^                      ,­.      @£2         m       i       ]       _       7               ,­.      @£2         n       j       ^       `       Ņ               ,­.      @£2         o       k       _       a       m               ,­.      @£2         p       l       `       b                      ,­.      @£2         q       m       a       c       £               ,­.      @£2         r       n       b       d       >     	          ,­.      @£2      	   s       o       c       e       Ł     
          ,­.      @£2      
   t       p       d       f       t               ,­.      @£2         f       q       e       g                      ,­.      @£2         g       r       f       g       Ŗ                ,­.      @£2          w       h       h       i       E               ,­.      @£2         x       i       h       j       ą               ,­.      @£2         y       u       i       k       {               ,­.      @£2         z       v       j       l                      ,­.      @£2         {       w       k       m       ±               ,­.      @£2         |       x       l       n       L               ,­.      @£2         }       y       m       o       ē               ,­.      @£2         ~       z       n       p                      ,­.      @£2                {       o       q            	          ,­.      @£2      	          |       p       r       ø     
          ,­.      @£2      
          }       q       s       S               ,­.      @£2         s       ~       r       t       ī               ,­.      @£2         t              s       t         	              ,­.      @£2   	              u       u       v       $  	             ,­.      @£2   	             v       u       w       æ  	             ,­.      @£2   	                    v       x       Z  	             ,­.      @£2   	                    w       y       õ  	             ,­.      @£2   	                    x       z         	             ,­.      @£2   	                    y       {       +  	             ,­.      @£2   	                    z       |       Ę  	             ,­.      @£2   	                    {       }       a  	             ,­.      @£2   	                    |       ~       ü  	   	          ,­.      @£2   	   	                 }                	   
          ,­.      @£2   	   
                 ~              2  	             ,­.      @£2   	                                  Ķ  	             ,­.      @£2   	                                  h  
              ,­.      @£2   
                                     
             ,­.      @£2   
                                    
             ,­.      @£2   
                                  9  
             ,­.      @£2   
                                  Ō  
             ,­.      @£2   
                                  o  
             ,­.      @£2   
                                  
  
             ,­.      @£2   
                                  „  
             ,­.      @£2   
                                  @  
             ,­.      @£2   
                                  Ū  
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
                ,­.       @£2                                      ā	               ,­.       @£2                                     }	               ,­.       @£2                                      	               ,­.       @£2         ”                            ³               ,­.       @£2         ¢                            N               ,­.       @£2         £                            é               ,­.       @£2         ¤                                            ,­.       @£2         „       ”                                    ,­.       @£2         ¦       ¢                     ŗ     	          ,­.       @£2      	   §       £                     U     
          ,­.       @£2      
   Ø       ¤                     š               ,­.       @£2                „                                    ,­.       @£2                ¦                     &                ,­.      š?£2                                      Į               ,­.      š?£2                                     \               ,­.      š?£2                                     ÷               ,­.      š?£2                                                     ,­.      š?£2                                ”       -               ,­.      š?£2         ”       ”               ¢       Č               ,­.      š?£2         ¢       ¢       ”       £       c               ,­.      š?£2         £       £       ¢       ¤       ž               ,­.      š?£2         ¤       ¤       £       „            	          ,­.      š?£2      	   „       „       ¤       ¦       4     
          ,­.      š?£2      
   ¦       ¦       „       §       Ļ                ,­.      š?£2         §       §       ¦       Ø       j                ,­.      š?£2         Ø       Ø       §       Ø          #         š ¤  rE  iE  `E  WE  E  E  ūD  ņD  ØD  D  D  D  CD  :D  1D  (D  ŽC  ÕC  ĢC  ĆC  yC  pC  gC  ^C  C  C  C  łB  ÆB  ¦B  B  B  JB  AB  8B  /B  åA  ÜA  ÓA  ŹA  A  wA  nA  eA  A  A  	A   A  ¶@  ­@  ¤@  @  Q@  H@  ?@  6@  ģ?  ć?  Ś?  Ń?  ?  ~?  u?  l?  "?  ?  ?  ?  ½>  “>  «>  ¢>  X>  O>  F>  =>  ó=  ź=  į=  Ų=  =  =  |=  s=  )=   =  =  =  Ä<  »<  ²<  ©<  _<  V<  M<  D<  ś;  ń;  č;  ß;  ;  ;  ;  z;  0;  ';  ;  ;  Ė:  Ā:  ¹:  °:  f:  ]:  T:  K:  :  ų9  ļ9  ę9  9  9  9  9  79  .9  %9  9  Ņ8  É8  Ą8  ·8  m8  d8  [8  R8  8  ’7  ö7  ķ7  £7  7  7  7  >7  57  ,7  #7  Ł6  Š6  Ē6  ¾6  t6  k6  b6  Y6  6  6  ż5  ō5  Ŗ5  ”5  5  5  E5  <5  35  *5  ą4  ×4  Ī4  Å4  {4  r4  i4  `4  4  4  4  ū3  ±3  Ø3  3  3  L3  C3  :3  13  ē2  Ž2  Õ2  Ģ2  2  y2  p2  g2  2  2  2  2  ø1  Æ1  ¦1  1  S1  J1  A1  81  ī0  å0  Ü0  Ó0  0  0  w0  n0  $0  0  0  	0  æ/  ¶/  ­/  ¤/  Z/  Q/  H/  ?/  õ.  ģ.  ć.  Ś.  .  .  ~.  u.  +.  ".  .  .  Ę-  ½-  “-  «-  a-  X-  O-  F-  ü,  ó,  ź,  į,  ,  ,  ,  |,  2,  ),   ,  ,  Ķ+  Ä+  »+  ²+  h+  _+  V+  M+  +  ś*  ń*  č*  *  *  *  *  9*  0*  '*  *  Ō)  Ė)  Ā)  ¹)  o)  f)  ])  T)  
)  )  ų(  ļ(  „(  (  (  (  @(  7(  .(  %(  Ū'  Ņ'  É'  Ą'  v'  m'  d'  ['  '  '  ’&  ö&  ¬&  £&  &  &  G&  >&  5&  ,&  ā%  Ł%  Š%  Ē%  }%  t%  k%  b%  %  %  %  ż$  ³$  Ŗ$  ”$  $  N$  E$  <$  3$  é#  ą#  ×#  Ī#  #  {#  r#  i#  #  #  #  #  ŗ"  ±"  Ø"  "  U"  L"  C"  :"  š!  ē!  Ž!  Õ!  !  !  y!  p!  &!  !  !  !  Į   ø   Æ   ¦   \   S   J   A   ÷  ī  å  Ü        w  -  $      Č  æ  ¶  ­  c  Z  Q  H  ž  õ  ģ  ć        ~  4  +  "    Ļ  Ę  ½  “  j  a  X  O    ü  ó  ź           ;  2  )     Ö  Ķ  Ä  »  q  h  _  V      ś  ń  §        B  9  0  '  Ż  Ō  Ė  Ā  x  o  f  ]    
    ų  ®  „      I  @  7  .  ä  Ū  Ņ  É    v  m  d        ’  µ  ¬  £    P  G  >  5  ė  ā  Ł  Š    }  t  k  !        ¼  ³  Ŗ  ”  W  N  E  <  ņ  é  ą  ×      {  r  (        Ć  ŗ  ±  Ø  ^  U  L  C  ł  š  ē  Ž        y  /  &      Ź  Į  ø  Æ  e  \  S  J     ÷  ī  å          6  -  $    Ń  Č  æ  ¶  l  c  Z  Q    ž  õ  ģ  ¢        =  4  +  "  Ų  Ļ  Ę  ½  s  j  a  X      ü
  ó
  ©
   
  
  
  D
  ;
  2
  )
  ß	  Ö	  Ķ	  Ä	  z	  q	  h	  _	  	  	  	  ś  °  §      K  B  9  0  ę  Ż  Ō  Ė    x  o  f      
    ·  ®  „    R  I  @  7  ķ  ä  Ū  Ņ      v  m  #        ¾  µ  ¬  £  Y  P  G  >  ō  ė  ā  Ł      }  t  *  !          e                  _    @%   w<              6    " 78`   @%   " š š        e                  _    @%   w<              6    " 78`   @%   " š š        I                  C               -    @! %  %  w š        j                  d              L    @"    :& "   :&% % w š        L                  F   T "  ;`	    š"  <`   Z ' { š                              "      >`   "     >`R              L    @"    :& "   =&% % w š        p                  j   T " ;`	    š" <`5   Z "     :&  "    :& ' { š        n                  h   "      >`   "    ?`+              %    @g  w š        p   	               j   T " ;`	    š" <`5   Z "     :&  "    =& ' { š        E   
               ?               )       @%   w š                              <              6    " 78`   @%   " š<              6    " 78`   @%   " š š        