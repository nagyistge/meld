meld fil       d                                                                                         
       
                                                                                                                                                                               	       	                                                                                                                                                                   !       !       "       "                     #       #                     $       $       %       %       &       &       '       '       *       *       +       +       ,       ,       (       (       -       -       )       )       .       .       /       /       0       0       1       1       4       4       5       5       6       6       2       2       7       7       3       3       8       8       9       9       :       :       ;       ;       >       >       ?       ?       @       @       <       <       A       A       =       =       B       B       C       C       D       D       E       E       H       H       I       I       J       J       F       F       K       K       G       G       L       L       M       M       N       N       O       O       R       R       S       S       T       T       P       P       U       U       Q       Q       V       V       W       W       X       X       Y       Y       \       \       ]       ]       ^       ^       Z       Z       _       _       [       [       `       `       a       a       b       b       c       c        	                _init -o node-axioms.r   propagate-left(Coords) -o test-and-send-down(Coords), {L | !left(L), 
			L != host-id | propagate-left(Coords)@L}.u   propagate-right(Coords) -o test-and-send-down(Coords), {R | !right(R), 
			R != host-id | propagate-right(Coords)@R}.F   test-and-send-down(Coords), !coord(X, Y) -o test-y(Y, Coords, Coords).h   test-y(Y, MV3, Coords), !coord(OX, OY), test-nil(MV3) -o test-diag-left(OX - 1, OY - 1, Coords, Coords).�   test-y(MV18, MV19, MV20), MV21 := head(MV19), not(test-nil(MV19)) -o (MV18 = MV21 -o 1), 
			OR (RestCoords := tail(MV19), MV18 != MV21 -o test-y(MV18, RestCoords, MV20)).y   test-diag-left(X, Y, MV1, Coords), !coord(OX, OY), (X < 0) || (Y < 0) -o test-diag-right(OX - 1, OY + 1, Coords, Coords).�   test-diag-left(MV22, MV23, MV24, MV25), MV26 := head(MV24), not(test-nil(MV24)) -o (MV23 = MV26 -o 1), 
			OR (RestCoords := tail(MV24), MV23 != MV26 -o test-diag-left(MV22 - 1, MV23 - 1, RestCoords, MV25)).|   test-diag-right(X, Y, MV12, Coords), !coord(OX, OY), (X < 0) || (Y >= 10), test-nil(MV12) -o 
			send-down(cons(OY,Coords)).�   test-diag-right(MV27, MV28, MV29, MV30), MV31 := head(MV29), not(test-nil(MV29)) -o (MV28 = MV31 -o 1), 
			OR (RestCoords := tail(MV29), MV28 != MV31 -o test-diag-right(MV27 - 1, MV28 + 1, RestCoords, MV30)).F   send-down(Coords), !coord(MV17, MV2), MV17 = 9 -o final-state(Coords).�   send-down(Coords) -o {B | !down-right(B), B != host-id | 
			propagate-right(Coords)@B}, {B | !down-left(B), B != host-id | 
			propagate-left(Coords)@B}.           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                       left                                                                  right                                                                 down-right                                                            down-left                                                             coord                                                                propagate-left                                                       propagate-right                                                      test-and-send-down                                                   test-y                                                               test-diag-left                                                       test-diag-right                                                      send-down                                                            final-state                                                      ��������   ?)                   9)   � 
)  d      n   �   8  �    g  �  1  �  �  `  �  *  �  �  Y  �  #  �  �  R  �  	  �	  �	  K
  �
    z  �  D  �    s  �  =  �    l  �  6  �     e  �  /  �  �  ^  �  (  �  �  W  �  !  �  �  P  �      �  I  �    x  �  B  �    q  �  ;  �    j  �  4  �  �  c   �   -!  �!  �!  \"  �"  &#  �#  �#  U$  �$  %  �%  �%  N&  �&  '          
   
    ,�.      �?�@p w2                                         '         
   
    ,�.      �?�2                                       �&         
   
    ,�.      �?�2                 
                     J&         
   
    ,�.      �?�2                                      �%         
   
    ,�.      �?�2                                      �%         
   
    ,�.      �?�2                                      %         
   
    ,�.      �?�2                                      �$         
   
    ,�.      �?�2                                      Q$         
   
    ,�.      �?�2                               	       �#      	   
   
    ,�.      �?�2       	   	                     	       �#         
   
    ,�.       @�2                 
       
              "#        
   
    ,�.       @�2                       
              �"        
   
    ,�.       @�2                                     X"        
   
    ,�.       @�2                                     �!        
   
    ,�.       @�2                                     �!        
   
    ,�.       @�2                                     )!        
   
    ,�.       @�2                                     �         
   
    ,�.       @�2                                     _         
   
    ,�.       @�2                                     �     	   
   
    ,�.       @�2      	                               �         
   
    ,�.      @�2                                       0        
   
    ,�.      @�2         !                            �        
   
    ,�.      @�2         "                            f        
   
    ,�.      @�2         #                                    
   
    ,�.      @�2         $                             �        
   
    ,�.      @�2         %       !                     7        
   
    ,�.      @�2         &       "                     �        
   
    ,�.      @�2         '       #                     m        
   
    ,�.      @�2                $                          	   
   
    ,�.      @�2      	          %                     �         
   
    ,�.      @�2          *                            >        
   
    ,�.      @�2         +                             �        
   
    ,�.      @�2         ,       (              !       t        
   
    ,�.      @�2         -       )               "               
   
    ,�.      @�2         .       *       !       #       �        
   
    ,�.      @�2         /       +       "       $       E        
   
    ,�.      @�2         0       ,       #       %       �        
   
    ,�.      @�2         1       -       $       &       {        
   
    ,�.      @�2         &       .       %       '            	   
   
    ,�.      @�2      	   '       /       &       '       �         
   
    ,�.      @�2          4       (       (       )       L        
   
    ,�.      @�2         5       )       (       *       �        
   
    ,�.      @�2         6       2       )       +       �        
   
    ,�.      @�2         7       3       *       ,               
   
    ,�.      @�2         8       4       +       -       �        
   
    ,�.      @�2         9       5       ,       .       S        
   
    ,�.      @�2         :       6       -       /       �        
   
    ,�.      @�2         ;       7       .       0       �        
   
    ,�.      @�2         0       8       /       1       $     	   
   
    ,�.      @�2      	   1       9       0       1       �         
   
    ,�.      @�2          >       2       2       3       Z        
   
    ,�.      @�2         ?       3       2       4       �        
   
    ,�.      @�2         @       <       3       5       �        
   
    ,�.      @�2         A       =       4       6       +        
   
    ,�.      @�2         B       >       5       7       �        
   
    ,�.      @�2         C       ?       6       8       a        
   
    ,�.      @�2         D       @       7       9       �        
   
    ,�.      @�2         E       A       8       :       �        
   
    ,�.      @�2         :       B       9       ;       2     	   
   
    ,�.      @�2      	   ;       C       :       ;       �         
   
    ,�.      @�2          H       <       <       =       h        
   
    ,�.      @�2         I       =       <       >               
   
    ,�.      @�2         J       F       =       ?       �        
   
    ,�.      @�2         K       G       >       @       9        
   
    ,�.      @�2         L       H       ?       A       �        
   
    ,�.      @�2         M       I       @       B       o        
   
    ,�.      @�2         N       J       A       C       
        
   
    ,�.      @�2         O       K       B       D       �        
   
    ,�.      @�2         D       L       C       E       @     	   
   
    ,�.      @�2      	   E       M       D       E       �         
   
    ,�.       @�2          R       F       F       G       v        
   
    ,�.       @�2         S       G       F       H               
   
    ,�.       @�2         T       P       G       I       �
        
   
    ,�.       @�2         U       Q       H       J       G
        
   
    ,�.       @�2         V       R       I       K       �	        
   
    ,�.       @�2         W       S       J       L       }	        
   
    ,�.       @�2         X       T       K       M       	        
   
    ,�.       @�2         Y       U       L       N       �        
   
    ,�.       @�2         N       V       M       O       N     	   
   
    ,�.       @�2      	   O       W       N       O       �         
   
    ,�.      "@�2          \       P       P       Q       �        
   
    ,�.      "@�2         ]       Q       P       R               
   
    ,�.      "@�2         ^       Z       Q       S       �        
   
    ,�.      "@�2         _       [       R       T       U        
   
    ,�.      "@�2         `       \       S       U       �        
   
    ,�.      "@�2         a       ]       T       V       �        
   
    ,�.      "@�2         b       ^       U       W       &        
   
    ,�.      "@�2         c       _       V       X       �        
   
    ,�.      "@�2         X       `       W       Y       \     	   
   
    ,�.      "@�2      	   Y       a       X       Y       �  	       
   
    ,�.      $@�2   	       Z       Z       Z       [       �  	      
   
    ,�.      $@�2   	      [       [       Z       \       -  	      
   
    ,�.      $@�2   	      \       \       [       ]       �  	      
   
    ,�.      $@�2   	      ]       ]       \       ^       c  	      
   
    ,�.      $@�2   	      ^       ^       ]       _       �  	      
   
    ,�.      $@�2   	      _       _       ^       `       �  	      
   
    ,�.      $@�2   	      `       `       _       a       4  	      
   
    ,�.      $@�2   	      a       a       `       b       �   	      
   
    ,�.      $@�2   	      b       b       a       c       j   	   	   
   
    ,�.      $@�2   	   	   c       c       b       c          #         � �  %)  )  )  
)  �(  �(  �(  �(  [(  R(  I(  @(  �'  �'  �'  �'  �'  �'  '  v'  ,'  #'  '  '  �&  �&  �&  �&  b&  Y&  P&  G&  �%  �%  �%  �%  �%  �%  �%  }%  3%  *%  !%  %  �$  �$  �$  �$  i$  `$  W$  N$  $  �#  �#  �#  �#  �#  �#  �#  :#  1#  (#  #  �"  �"  �"  �"  p"  g"  ^"  U"  "  "  �!  �!  �!  �!  �!  �!  A!  8!  /!  &!  �   �   �   �   w   n   e   \      	       �  �  �  �  �  H  ?  6  -  �  �  �  �  ~  u  l  c        �  �  �  �  �  O  F  =  4  �  �  �  �  �  |  s  j           �  �  �  �  V  M  D  ;  �  �  �  �  �  �  z  q  '        �  �  �  �  ]  T  K  B  �  �  �  �  �  �  �  x  .  %      �  �  �  �  d  [  R  I  �  �  �  �  �  �  �    5  ,  #    �  �  �  �  k  b  Y  P    �  �  �  �  �  �  �  <  3  *  !  �  �  �  �  r  i  `  W      �  �  �  �  �  �  C  :  1  (  �  �  �  �  y  p  g  ^        �  �  �  �  �  J  A  8  /  �  �  �  �  �  w  n  e      	     �  �  �  �  Q  H  ?  6  �  �  �  �  �  ~  u  l  "        �  �  �  �  X  O  F  =  �  �  �  �  �  �  |  s  )         �
  �
  �
  �
  _
  V
  M
  D
  �	  �	  �	  �	  �	  �	  �	  z	  0	  '	  	  	  �  �  �  �  f  ]  T  K    �  �  �  �  �  �  �  7  .  %    �  �  �  �  m  d  [  R    �  �  �  �  �  �  �  >  5  ,  #  �  �  �  �  t  k  b  Y      �  �  �  �  �  �  E  <  3  *  �  �  �  �  {  r  i  `        �      e                  _    @%   w<              6    " 78`   @%   " �� �        e                  _    @%   w<              6    " 78`   @%   " �� �        I                  C               -    @! %  %  w� �        j                  d              L    @"    :& "   :&% % w� �        L                  F   T "  ;`	   � �"  <`   Z ' { �        �                  �    "      >`   "     >`R              L    @"    :& "   =&% % w� �        p                  j   T " ;`	   � �" <`5   Z "     :&  "    :& ' { �        n                  h   "      >`   " 
   ?`+              %    @g  w� �        p   	               j   T " ;`	   � �" <`5   Z "     :&  "    =& ' { �        E   
               ?               )    	   @%   w� �        �                  �    <              6    " 78`   @%   " �<              6    " 78`   @%   " �� �        