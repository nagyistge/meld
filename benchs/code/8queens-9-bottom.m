meld fil       Q                                                                                         	       	                                   
       
                                                                                                                                                                                                                                                                                                                                           !       !       "       "       #       #       &       &       '       '       (       (       $       $       )       )       %       %       *       *       +       +       ,       ,       /       /       0       0       1       1       -       -       2       2       .       .       3       3       4       4       5       5       8       8       9       9       :       :       6       6       ;       ;       7       7       <       <       =       =       >       >       A       A       B       B       C       C       ?       ?       D       D       @       @       E       E       F       F       G       G       J       J       K       K       L       L       H       H       M       M       I       I       N       N       O       O       P       P        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.F   test-and-send-down(Coords), !coord(X, Y) -o test-y(Y, Coords, Coords).h   test-y(Y, MV3, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Coords).�   test-y(MV18, MV19, MV20), MV21 := head(MV19), not(test-nil(MV19)) -o (MV18 = MV21 -o 1), 
			OR (RestCoords := tail(MV19), MV18 != MV21 -o test-y(MV18, RestCoords, MV20)).y   test-diag-left(X, Y, MV1, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Coords).�   test-diag-left(MV22, MV23, MV24, MV25), MV26 := head(MV24), not(test-nil(MV24)) -o (MV23 = MV26 -o 1), 
			OR (RestCoords := tail(MV24), MV23 != MV26 -o test-diag-left(MV22 - 1, MV23 - 1, RestCoords, MV25)).{   test-diag-right(X, Y, MV12, Coords), !coord(OX, OY), (X < 0) || (Y >= 9), test-nil(MV12) -o 
			send-down(cons(OY,Coords)).�   test-diag-right(MV27, MV28, MV29, MV30), MV31 := head(MV29), not(test-nil(MV29)) -o (MV28 = MV31 -o 1), 
			OR (RestCoords := tail(MV29), MV28 != MV31 -o test-diag-right(MV27 - 1, MV28 + 1, RestCoords, MV30)).F   send-down(Coords), !coord(MV17, MV2), MV17 = 8 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   test-y                                                               test-diag-left                                                       test-diag-right                                                      send-down                                                            final-state                                                      ��������   �                   �   � 
�  Q      L   �   �     X  �  �  !  d  �  �  -  p  �  �  9  |  �    E  �  �    Q  �  �    ]  �  �  &  i  �  �  2	  u	  �	  �	  >
  �
  �
    J  �  �    V  �  �    b  �  �  +  n  �  �  7  z  �     C  �  �    O  �  �    [  �  �  $  g  �  �  0  s  �  �  .      �?�@p w2                                         �  .      �?�2                                       �  .      �?�2                 	                     o  .      �?�2                 
                     ,  .      �?�2                                      �  .      �?�2                                      �  .      �?�2                                      c  .      �?�2                                         .      �?�2                                      �  .       @�2                 	       	       
       �  .       @�2                
       	              W  .       @�2                       
                .       @�2                                     �  .       @�2                                     �  .       @�2                                     K  .       @�2                                       .       @�2                                     �  .       @�2                                     �  .      @�2                                      ?  .      @�2                                     �  .      @�2                                     �  .      @�2                                      v  .      @�2         !                            3  .      @�2         "                            �  .      @�2         #                            �  .      @�2                                      j  .      @�2                !                     '  .      @�2          &                            �  .      @�2         '                            �  .      @�2         (       $                     ^  .      @�2         )       %                       .      @�2         *       &                      �  .      @�2         +       '              !       �  .      @�2         ,       (               "       R  .      @�2         "       )       !       #         .      @�2         #       *       "       #       �  .      @�2          /       $       $       %       �  .      @�2         0       %       $       &       F  .      @�2         1       -       %       '         .      @�2         2       .       &       (       �
  .      @�2         3       /       '       )       }
  .      @�2         4       0       (       *       :
  .      @�2         5       1       )       +       �	  .      @�2         +       2       *       ,       �	  .      @�2         ,       3       +       ,       q	  .      @�2          8       -       -       .       .	  .      @�2         9       .       -       /       �  .      @�2         :       6       .       0       �  .      @�2         ;       7       /       1       e  .      @�2         <       8       0       2       "  .      @�2         =       9       1       3       �  .      @�2         >       :       2       4       �  .      @�2         4       ;       3       5       Y  .      @�2         5       <       4       5         .      @�2          A       6       6       7       �  .      @�2         B       7       6       8       �  .      @�2         C       ?       7       9       M  .      @�2         D       @       8       :       
  .      @�2         E       A       9       ;       �  .      @�2         F       B       :       <       �  .      @�2         G       C       ;       =       A  .      @�2         =       D       <       >       �  .      @�2         >       E       =       >       �  .       @�2          J       ?       ?       @       x  .       @�2         K       @       ?       A       5  .       @�2         L       H       @       B       �  .       @�2         M       I       A       C       �  .       @�2         N       J       B       D       l  .       @�2         O       K       C       E       )  .       @�2         P       L       D       F       �  .       @�2         F       M       E       G       �  .       @�2         G       N       F       G       `  .      "@�2          H       H       H       I         .      "@�2         I       I       H       J       �  .      "@�2         J       J       I       K       �  .      "@�2         K       K       J       L       T  .      "@�2         L       L       K       M         .      "@�2         M       M       L       N       �   .      "@�2         N       N       M       O       �   .      "@�2         O       O       N       P       H   .      "@�2         P       P       O       P          #         � D  �  �  �  }  U  L  C  :    	     �  �  �  �  �  �  �  z  q  I  @  7  .    �  �  �  �  �  �  �  �  w  n  e  =  4  +  "  �  �  �  �  �  �  �  �  t  k  b  Y  1  (      �  �  �  �  �  �  �  �  h  _  V  M  %      
  �  �  �  �  �  �  �  �  \  S  J  A        �  �  �  �  �  �  �  �  x  P  G  >  5      �  �  �  �  �  �  �  ~  u  l  D  ;  2  )    �  �  �  �  �  �  �  {  r  i  `  8  /  &    �  �  �  �  �  �  �  �  o  f  ]  T  ,  #      �  �  �  �  �  �  �  �  c  Z  Q  H           �  �  �  �  �  �  �    W  N  E  <        �
  �
  �
  �
  �
  �
  �
  |
  s
  K
  B
  9
  0
  
  �	  �	  �	  �	  �	  �	  �	  �	  y	  p	  g	  ?	  6	  -	  $	  �  �  �  �  �  �  �  �  v  m  d  [  3  *  !    �  �  �  �  �  �  �  �  j  a  X  O  '        �  �  �  �  �  �  �  �  ^  U  L  C      	     �  �  �  �  �  �  �  z  R  I  @  7      �  �  �  �  �  �  �  �  w  n  F  =  4  +    �  �  �  �  �  �  �  }  t  k  b  :  1  (    �  �  �  �  �  �  �  �  q  h  _  V  .  %      �  �  �  �  �  �  �  �      e                  _    @%   w<              6    " 78`   @%   " �� �        e                  _    @%   w<              6    " 78`   @%   " �� �        I                  C               -    @! %  %  w� �        j                  d              L    @"    :& "   :&% % w� �        L                  F   T "  ;`	   � �"  <`   Z ' { �        �                  �    "      >`   "     >`R              L    @"    :& "   =&% % w� �        p                  j   T " ;`	   � �" <`5   Z "     :&  "    :& ' { �        n                  h   "      >`   " 	   ?`+              %    @g  w� �        p   	               j   T " ;`	   � �" <`5   Z "     :&  "    =& ' { �        E   
               ?               )       @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        