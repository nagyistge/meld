meld fil       �                                                                                                                                                                                                                                                                                             	       	                     
       
                                                                                                                                                     !       !       "       "       #       #       $       $       %       %       &       &       )       )       *       *       +       +       '       '       ,       ,       (       (       -       -       .       .       /       /       0       0       1       1       2       2       3       3       6       6       7       7       8       8       4       4       9       9       5       5       :       :       ;       ;       <       <       =       =       >       >       ?       ?       @       @       C       C       D       D       E       E       A       A       F       F       B       B       G       G       H       H       I       I       J       J       K       K       L       L       M       M       P       P       Q       Q       R       R       N       N       S       S       O       O       T       T       U       U       V       V       W       W       X       X       Y       Y       Z       Z       ]       ]       ^       ^       _       _       [       [       `       `       \       \       a       a       b       b       c       c       d       d       e       e       f       f       g       g       j       j       k       k       l       l       h       h       m       m       i       i       n       n       o       o       p       p       q       q       r       r       s       s       t       t       w       w       x       x       y       y       u       u       z       z       v       v       {       {       |       |       }       }       ~       ~                     �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �       �        	                _init -o node-axioms.�   propagate-left(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {L | !left(L), 
			L != host-id | propagate-left(Nodes, Coords)@L}.�   propagate-right(Nodes, Coords) -o test-and-send-down(Nodes, Coords), {R | !right(R), 
			R != host-id | propagate-right(Nodes, Coords)@R}.T   test-and-send-down(Nodes, Coords), !coord(X, Y) -o test-y(Y, Coords, Nodes, Coords).v   test-y(Y, MV3, Nodes, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Nodes, Coords).�   test-y(MV24, MV25, MV26, MV27), MV29 := head(MV28), MV28 := tail(MV25), not(test-nil(MV25)), 
			not(test-nil(MV28)) -o (MV24 = MV29 -o 1), OR (RestCoords := tail(MV28), MV24 != MV29 -o test-y(MV24, RestCoords, MV26, MV27)).�   test-diag-left(X, Y, MV1, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Nodes, Coords).9  test-diag-left(MV30, MV31, MV32, MV33, MV34), MV37 := head(MV36), MV36 := tail(MV32), MV35 := head(MV32), 
			not(test-nil(MV32)), not(test-nil(MV36)) -o (MV30 = MV35, MV31 = MV37 -o 1), OR (RestCoords := tail(MV36), (MV30 != MV35) || (MV31 != MV37) -o test-diag-left(MV30 - 1, MV31 - 1, RestCoords, MV33, MV34)).�   test-diag-right(X, Y, MV16, Nodes, Coords), !coord(OX, OY), (X < 0) || (Y >= 13), test-nil(MV16) -o 
			send-down(cons(host-id,Nodes), cons(OX,cons(OY,Coords))).;  test-diag-right(MV38, MV39, MV40, MV41, MV42), MV45 := head(MV44), MV44 := tail(MV40), MV43 := head(MV40), 
			not(test-nil(MV40)), not(test-nil(MV44)) -o (MV38 = MV43, MV39 = MV45 -o 1), OR (RestCoords := tail(MV44), (MV38 != MV43) || (MV39 != MV45) -o test-diag-right(MV38 - 1, MV39 + 1, RestCoords, MV41, MV42)).U   send-down(Nodes, Coords), !coord(MV23, MV2), MV23 = 12 -o final-state(Nodes, Coords).�   send-down(Nodes, Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Nodes, Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Nodes, Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   test-y                                                               test-diag-left                                                       test-diag-right                                                      send-down                                                            final-state                                                      ��������   /                   /   � 
�.  �      O   �   �     [  �  �  $  g  �  �  0  s  �  �  <    �    H  �  �    T  �  �    `  �  �  )  l  �  �  5	  x	  �	  �	  A
  �
  �
  
  M  �  �    Y  �  �  "  e  �  �  .  q  �  �  :  }  �    F  �  �    R  �  �    ^  �  �  '  j  �  �  3  v  �  �  ?  �  �    K  �  �    W  �  �     c  �  �  ,  o  �  �  8  {  �    D  �  �    P  �  �    \  �  �  %  h  �  �  1  t  �  �  =   �   �   !  I!  �!  �!  "  U"  �"  �"  #  a#  �#  �#  *$  m$  �$  �$  6%  y%  �%  �%  B&  �&  �&  '  N'  �'  �'  (  Z(  �(  �(  #)  f)  �)  �)  /*  r*  �*  �*  ;+  ~+  �+  ,  .      *@�@p pw2                                         �+  .      *@�2                                       �+  .      *@�2                                      w+  .      *@�2                                      4+  .      *@�2                                      �*  .      *@�2                                      �*  .      *@�2                                      k*  .      *@�2                                      (*  .      *@�2                               	       �)  .      *@�2       	                        
       �)  .      *@�2       
                 	              _)  .      *@�2                        
              )  .      *@�2                                      �(  .      (@�2                                      �(  .      (@�2                                     S(  .      (@�2                                     (  .      (@�2                                     �'  .      (@�2                                      �'  .      (@�2         !                            G'  .      (@�2         "                            '  .      (@�2         #                            �&  .      (@�2         $                             ~&  .      (@�2      	   %       !                     ;&  .      (@�2      
   &       "                     �%  .      (@�2                #                     �%  .      (@�2                $                     r%  .      &@�2          )                            /%  .      &@�2         *                            �$  .      &@�2         +       '                     �$  .      &@�2         ,       (                     f$  .      &@�2         -       )                     #$  .      &@�2         .       *                      �#  .      &@�2         /       +              !       �#  .      &@�2         0       ,               "       Z#  .      &@�2         1       -       !       #       #  .      &@�2      	   2       .       "       $       �"  .      &@�2      
   3       /       #       %       �"  .      &@�2         %       0       $       &       N"  .      &@�2         &       1       %       &       "  .      $@�2          6       '       '       (       �!  .      $@�2         7       (       '       )       �!  .      $@�2         8       4       (       *       B!  .      $@�2         9       5       )       +       �   .      $@�2         :       6       *       ,       �   .      $@�2         ;       7       +       -       y   .      $@�2         <       8       ,       .       6   .      $@�2         =       9       -       /       �  .      $@�2         >       :       .       0       �  .      $@�2      	   ?       ;       /       1       m  .      $@�2      
   @       <       0       2       *  .      $@�2         2       =       1       3       �  .      $@�2         3       >       2       3       �  .      "@�2          C       4       4       5       a  .      "@�2         D       5       4       6         .      "@�2         E       A       5       7       �  .      "@�2         F       B       6       8       �  .      "@�2         G       C       7       9       U  .      "@�2         H       D       8       :         .      "@�2         I       E       9       ;       �  .      "@�2         J       F       :       <       �  .      "@�2         K       G       ;       =       I  .      "@�2      	   L       H       <       >         .      "@�2      
   M       I       =       ?       �  .      "@�2         ?       J       >       @       �  .      "@�2         @       K       ?       @       =  .       @�2          P       A       A       B       �  .       @�2         Q       B       A       C       �  .       @�2         R       N       B       D       t  .       @�2         S       O       C       E       1  .       @�2         T       P       D       F       �  .       @�2         U       Q       E       G       �  .       @�2         V       R       F       H       h  .       @�2         W       S       G       I       %  .       @�2         X       T       H       J       �  .       @�2      	   Y       U       I       K       �  .       @�2      
   Z       V       J       L       \  .       @�2         L       W       K       M         .       @�2         M       X       L       M       �  .      @�2          ]       N       N       O       �  .      @�2         ^       O       N       P       P  .      @�2         _       [       O       Q         .      @�2         `       \       P       R       �  .      @�2         a       ]       Q       S       �  .      @�2         b       ^       R       T       D  .      @�2         c       _       S       U         .      @�2         d       `       T       V       �  .      @�2         e       a       U       W       {  .      @�2      	   f       b       V       X       8  .      @�2      
   g       c       W       Y       �  .      @�2         Y       d       X       Z       �  .      @�2         Z       e       Y       Z       o  .      @�2          j       [       [       \       ,  .      @�2         k       \       [       ]       �  .      @�2         l       h       \       ^       �  .      @�2         m       i       ]       _       c  .      @�2         n       j       ^       `          .      @�2         o       k       _       a       �  .      @�2         p       l       `       b       �  .      @�2         q       m       a       c       W  .      @�2         r       n       b       d         .      @�2      	   s       o       c       e       �  .      @�2      
   t       p       d       f       �  .      @�2         f       q       e       g       K  .      @�2         g       r       f       g         .      @�2          w       h       h       i       �  .      @�2         x       i       h       j       �  .      @�2         y       u       i       k       ?  .      @�2         z       v       j       l       �  .      @�2         {       w       k       m       �  .      @�2         |       x       l       n       v  .      @�2         }       y       m       o       3  .      @�2         ~       z       n       p       �  .      @�2                {       o       q       �  .      @�2      	   �       |       p       r       j  .      @�2      
   �       }       q       s       '  .      @�2         s       ~       r       t       �  .      @�2         t              s       t       �  .      @�2   	       �       u       u       v       ^  .      @�2   	      �       v       u       w         .      @�2   	      �       �       v       x       �  .      @�2   	      �       �       w       y       �  .      @�2   	      �       �       x       z       R  .      @�2   	      �       �       y       {         .      @�2   	      �       �       z       |       �  .      @�2   	      �       �       {       }       �  .      @�2   	      �       �       |       ~       F  .      @�2   	   	   �       �       }                .      @�2   	   
   �       �       ~       �       �
  .      @�2   	      �       �              �       }
  .      @�2   	      �       �       �       �       :
  .      @�2   
       �       �       �       �       �	  .      @�2   
      �       �       �       �       �	  .      @�2   
      �       �       �       �       q	  .      @�2   
      �       �       �       �       .	  .      @�2   
      �       �       �       �       �  .      @�2   
      �       �       �       �       �  .      @�2   
      �       �       �       �       e  .      @�2   
      �       �       �       �       "  .      @�2   
      �       �       �       �       �  .      @�2   
   	   �       �       �       �       �  .      @�2   
   
   �       �       �       �       Y  .      @�2   
      �       �       �       �         .      @�2   
      �       �       �       �       �  .       @�2          �       �       �       �       �  .       @�2         �       �       �       �       M  .       @�2         �       �       �       �       
  .       @�2         �       �       �       �       �  .       @�2         �       �       �       �       �  .       @�2         �       �       �       �       A  .       @�2         �       �       �       �       �  .       @�2         �       �       �       �       �  .       @�2         �       �       �       �       x  .       @�2      	   �       �       �       �       5  .       @�2      
   �       �       �       �       �  .       @�2         �       �       �       �       �  .       @�2         �       �       �       �       l  .      �?�2          �       �       �       �       )  .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       `  .      �?�2         �       �       �       �         .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       �  .      �?�2         �       �       �       �       T  .      �?�2         �       �       �       �         .      �?�2      	   �       �       �       �       �   .      �?�2      
   �       �       �       �       �   .      �?�2         �       �       �       �       H   .      �?�2         �       �       �       �          #         � �  /  �.  �.  �.  �.  �.  �.  �.  }.  t.  k.  b.  :.  1.  (.  .  �-  �-  �-  �-  �-  �-  �-  �-  q-  h-  _-  V-  .-  %-  -  -  �,  �,  �,  �,  �,  �,  �,  �,  e,  \,  S,  J,  ",  ,  ,  ,  �+  �+  �+  �+  �+  �+  �+  �+  Y+  P+  G+  >+  +  +  +  �*  �*  �*  �*  �*  �*  �*  ~*  u*  M*  D*  ;*  2*  
*  *  �)  �)  �)  �)  �)  �)  �)  {)  r)  i)  A)  8)  /)  &)  �(  �(  �(  �(  �(  �(  �(  �(  x(  o(  f(  ](  5(  ,(  #(  (  �'  �'  �'  �'  �'  �'  �'  �'  l'  c'  Z'  Q'  )'   '  '  '  �&  �&  �&  �&  �&  �&  �&  �&  `&  W&  N&  E&  &  &  &  &  �%  �%  �%  �%  �%  �%  �%  |%  T%  K%  B%  9%  %  %  �$  �$  �$  �$  �$  �$  �$  �$  y$  p$  H$  ?$  6$  -$  $  �#  �#  �#  �#  �#  �#  �#  #  v#  m#  d#  <#  3#  *#  !#  �"  �"  �"  �"  �"  �"  �"  �"  s"  j"  a"  X"  0"  '"  "  "  �!  �!  �!  �!  �!  �!  �!  �!  g!  ^!  U!  L!  $!  !  !  	!  �   �   �   �   �   �   �   �   [   R   I   @            �  �  �  �  �  �  �  �  w  O  F  =  4      �  �  �  �  �  �  �  }  t  k  C  :  1  (     �  �  �  �  �  �  �  z  q  h  _  7  .  %    �  �  �  �  �  �  �  �  n  e  \  S  +  "      �  �  �  �  �  �  �  �  b  Y  P  G          �  �  �  �  �  �  �  ~  V  M  D  ;    
    �  �  �  �  �  �  �  {  r  J  A  8  /    �  �  �  �  �  �  �  �  x  o  f  >  5  ,  #  �  �  �  �  �  �  �  �  u  l  c  Z  2  )       �  �  �  �  �  �  �  �  i  `  W  N  &        �  �  �  �  �  �  �  �  ]  T  K  B        �  �  �  �  �  �  �  �  y  Q  H  ?  6      �  �  �  �  �  �  �    v  m  E  <  3  *    �  �  �  �  �  �  �  |  s  j  a  9  0  '    �  �  �  �  �  �  �  �  p  g  ^  U  -  $      �  �  �  �  �  �  �  �  d  [  R  I  !        �  �  �  �  �  �  �  �  X  O  F  =        �  �  �  �  �  �  �  }  t  L  C  :  1  	     �  �  �  �  �  �  �  z  q  h  @  7  .  %  �  �  �  �  �  �  �  �  w  n  e  \  4  +  "    �  �  �  �  �  �  �  �  k  b  Y  P  (        �
  �
  �
  �
  �
  �
  �
  �
  _
  V
  M
  D
  
  
  

  
  �	  �	  �	  �	  �	  �	  �	  {	  S	  J	  A	  8	  	  	  �  �  �  �  �  �  �  �  x  o  G  >  5  ,    �  �  �  �  �  �  �  ~  u  l  c  ;  2  )     �  �  �  �  �  �  �  �  r  i  `  W  /  &      �  �  �  �  �  �  �  �  f  ]  T  K  #        �  �  �  �  �  �  �  �  Z  Q  H  ?        �  �  �  �  �  �  �    v  N  E  <  3      �  �      o                  i    @%   % wA              ;    " 78`   @%   % " �� �        o                  i    @%   % wA              ;    " 78`   @%   % " �� �        N                  H               2    @! % %  % w� �        o                  i              Q    @"    :& "   :&% % % w� �        P                  J   Z S"  ;`	   � �"  <`   Y' { �        �                  �    "      >`   "     >`W              Q    @"    :& "   =&% % % w� �        �                  �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    :& ' { �        {                  u   "      >`   "    ?`8              2    @7a  c b w� �        �   	               �   Z ST "  ;`   " ;`	   � �"  <`   " <`4   Y"     :&  "    =& ' { �        J   
               D               .       @%   % w� �        �                  �    A              ;    " 78`   @%   % " �A              ;    " 78`   @%   % " �� �        