meld fil       "d   c       c       b       b       a       a       `       `       _       _       ^       ^       ]       ]       \       \       [       [       Z       Z       Y       Y       X       X       W       W       V       V       U       U       T       T       S       S       R       R       Q       Q       P       P       O       O       N       N       M       M       L       L       K       K       J       J       I       I       H       H       G       G       F       F       E       E       D       D       C       C       B       B       A       A       @       @       ?       ?       >       >       =       =       <       <       ;       ;       :       :       9       9       8       8       7       7       6       6       5       5       4       4       3       3       2       2       1       1       0       0       /       /       .       .       -       -       ,       ,       +       +       *       *       )       )       (       (       '       '       &       &       %       %       $       $       #       #       "       "       !       !                                                                                                                                                                                                             	       	                                                                                                                                                                                                                                       
       
                       	                init -o axioms  start() -o belief(:(-1.609438, -1.609438, -1.609438, -1.609438, -1.609438)), waiting(), {B | 
			!edge(B) | neighbor-belief(B, :(-1.60944, -1.60944, -1.60944, -1.60944, -1.60944)), sent-neighbor-belief(B, :(-1.60944, -1.60944, -1.60944, -1.60944, -1.60944))}."   waiting(), !token(All, Next) -o 1.V   waiting(), nodepriority(host-id) > 0.0 -o token(cons(host-id,nil), cons(host-id,nil)).c  token(MV30, MV31) -o (nodelistlength(MV30) > 20 -o first-phase(MV30, nodelistreverse(MV30))), OR (Next = tail(MV31), not(test-nil(MV31)), host-id = head(MV31) -o [ COLLECT => L,  |  | 
			!edge(L), 0 = nodelistcount(MV30, L), 0 = nodelistcount(Next, L), nodepriority(L) > 0.0, 
			cpu-id(L) = cpu-id(host-id) | send-token(MV30, nodelistappend(Next, L))]).�   send-token(MV32, MV33) -o (test-nil(MV33) -o first-phase(MV32, nodelistreverse(MV32))), OR (B = head(MV33), Next = tail(MV33), not(test-nil(MV33)) -o schedule-next()@B, 
			token(nodelistappend(MV32, cons(B,nil)), cons(B,Next))@B).-  first-phase(MV34, MV35), not(test-nil(MV35)), host-id = head(MV35) -o (not(test-nil(MV34)), host-id = head(MV34), nil = tail(MV34), nil = tail(MV35) -o 
			second-phase(nil, host-id)), 
			OR (MV12 = tail(MV34), B = head(MV12), Next = tail(MV12), not(test-nil(MV34)), 
			host-id = head(MV34), not(test-nil(MV12)), nil = tail(MV35) -o update(), schedule-next()@B, 
			second-phase(cons(B,Next), host-id)@B), OR (MV17 = tail(MV35), B = head(MV17), Next = tail(MV17), not(test-nil(MV17)) -o 
			update(), schedule-next()@B, first-phase(MV34, cons(B,Next))@B).�  second-phase(MV36, MV37) -o (test-nil(MV36) -o remove-priority(), waiting(), update()), OR (not(test-nil(MV36)), host-id = head(MV36), nil = tail(MV36) -o update(), 
			waiting()@MV37, waiting(), remove-priority()), OR (MV23 = tail(MV36), B = head(MV23), Next = tail(MV23), not(test-nil(MV36)), 
			host-id = head(MV36), not(test-nil(MV23)) -o update(), waiting()@MV37, schedule-next()@B, 
			second-phase(cons(B,Next), host-id)@B).T   sum-messages(L1), neighbor-belief-copy(L2) -o sum-messages(addfloatstructs(L1, L2)).t   sum-messages(NewBelief), Normalized = normalizestruct(NewBelief) -o update-messages(Normalized), belief(Normalized).
   -o (check-residual(B, Delta, OutMessage), !edge(MV25), Delta > 1.e-4, MV25 = B -o 
			set-priority(Delta)@B, new-neighbor-belief(host-id, OutMessage)@B), OR (check-residual(B, Delta, OutMessage), !edge(MV26), MV26 = B -o new-neighbor-belief(host-id, OutMessage)@B).l   neighbor-belief(B, Belief), new-neighbor-belief(MV27, NewBelief), MV27 = B -o neighbor-belief(B, NewBelief).+  !update-messages(NewBelief), !edge(B), neighbor-belief-old(MV28, OldIn), sent-neighbor-belief(MV29, OldOut), 
			Cavity = normalizestruct(dividestruct(NewBelief, OldIn)), Convolved = normalizestruct(convolvestruct(:(-0.0, -2.0, -4.0, -6.0, -8.0, -2.0, -0.0, -2.0, -4.0, -6.0, -4.0, -2.0, -0.0, -2.0, -4.0, -6.0, -4.0, -2.0, -0.0, -2.0, -8.0, -6.0, -4.0, -2.0, -0.0), Cavity)), OutMessage = dampstruct(Convolved, OldOut, 0.1), MV28 = B, MV29 = B -o 
			check-residual(B, residualstruct(OutMessage, OldOut), OutMessage), sent-neighbor-belief(B, OutMessage).    update-messages(NewBelief) -o 1.�   update(), !potential(Potential), belief(MyBelief) -o sum-messages(Potential), 
			{B, Belief | neighbor-belief(B, Belief) | neighbor-belief-old(B, Belief), neighbor-belief-copy(Belief), 
			neighbor-belief(B, Belief)}.        �  mv       � v       �v      �v      �v       �v       �v       �v       �v      �v      �	v      �
v       �v       �v       �v      �v      �v      �v       �v       �v       �v       �v      �v      �v       �v       �  )     mv    D��� v    D���v    D���v    D���v    D��� )    mv    B��� v    B���v    B���v    B���v    B��� )    �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      edge                                                                 potential                                                           belief                                                              new-neighbor-belief                                                 sent-neighbor-belief                                                neighbor-belief                                                     neighbor-belief-copy                                                neighbor-belief-old                                                  start                                                                update                                                               copy-messages                                                       sum-messages                                                        update-messages                                                     check-residual                                                      token                                                                waiting                                                             first-phase                                                         send-token                                                          second-phase                                                          Y@�                                                                                                                                                                            �)                   �)   � 
�)  d      Y   �     |  �  >  �     a  �    �  �  X  �  ,  �     j  �  ,  �   	  j	  �	  >
  �
    |  �  >  �    |  �  P  �  $  �  �  P  �  $  �  �  b  �  6  �    b  �  6  �  
  t  �  H  �    t  �  H  �    �  �  Z  �  %  �  �  Z  �  .  �    l  �  7   �   !  l!  �!  @"  �"  #  ~#  �#  I$  �$  %  c%  �%  %&  �&  �&  H'  �'  @mv   �E�� v   `e_��v   �z���v   �����v   �ט�n x   
              �'  @mv    1� v    
�
�v    �]�v   `���v   ���n x                          L'  @mv   `\x� v   @�*�v   �Td�v   �@<��v    j�޿n x                         �&  @mv   �f�� v   ��� �v   �9i��v    p��v   ����n x                         �&  @mv    �I� v   @}�v    �f�v   �����v    ���n x                         )&  @mv   �\�� v   �"��v   ��s��v    ����v   @@0��n x                         �%  @mv   `;�� v    ���v   @�H��v   ���v   ����n x                         g%  @mv   �!� � v   �E��v   �GD��v   @To��v   `V���n x                         %  @mv    ǝ�� v   �} ��v   �4c��v   @����v   �P��n x                  	       �$  @mv   `�N� v    #��v    �j�v   �$���v   ���n x                 M$  @mv   ��m� v   �*u�v   �����v   ���v    \,�n x                          �#  @mv   �o�� v   �����v     c��v    ��v   �+���n x)                 
              �#  @mv    ��	� v   �]n�v   `s ��v   � $�v    �G�n x)                               #  @mv    �� v   �9� �v   `ws��v   �p��v   �t��n x)                               �"  @mv   ���� v   ��s��v    LC��v   ���v   �`� �n x)                               D"  @mv   �+�	� v    eY�v   �=���v   ��'�v   `.b�n x)                               �!  @mv   ��
� v   औ�v   �G'��v    F%�v    �F�n x)                               p!  @mv   �%	� v   `b��v   �>���v   @�;�v    2��n x)                               !  @mv   ��� � v   �����v    f=��v    A���v   ����n x)                               �   @mv   `��� v    v�v   ����v   �L!�v   ��w�n x    	                     ;   @mv    ^� v    Wx�v   �P%��v   @�Y�v   `���n x    
                     �  @mv    ��	� v    Ti�v   �����v   ��$�v   �&N�n x)                               p  @mv    ��� v   `w��v    �_ �v    /��v    ���n x)                                  @mv   ��1� v   `��v   ��A��v   `�d �v    ���n x)          !                     �  @mv    ;�� v    ���v   `����v   �a���v   `��n x)          "                     2  @mv    ���� v   �@<��v   `����v   �����v   ��n x)          #                     �  @mv   `*�� v   ����v   �u��v   `^ �v    p�n x)          $                     ^  @mv   `|� v   ����v   �+��v   `\8 �v    #a�n x)          %                     �  @mv   �"2�� v    L���v   �u��v   `����v   ����n x)          &                     �  @mv   `ω � v    n���v   �=3��v   ����v   @�R��n x           '              )  @mv   �}� v   @����v   �R���v   @����v    v���n x           (              �  @mv   @=�� v   ��u �v   `LO��v   `���v   @�n x)          )                      ^  @mv   `�� � v    ����v    �;��v   �"���v   �C���n x)          *              !       �  @mv   �
�� v    <���v   �m���v   ��Y��v   ��
��n x)          +               "       �  @mv   ���� v   �t��v   �!���v   `����v   �3��n x)          ,       !       #          @mv   �C� v   ���v   �����v   �� �v   `��n x)          -       "       $       �  @mv   �)�� v   ��\�v    ���v   �n�v    �M�n x)          .       #       %       L  @mv   ���� v   �A���v   �h���v    ����v    �P�n x)          /       $       &       �  @mv   ��)� v   �#��v   ��T��v   �!+�v   @%�n x)          0       %       '       x  @mv   �%��� v    ����v    �=��v   `H���v   `VZ�n x           1       &         @mv   �S�� v   ��Z�v   �x���v    ��v   @���n x           2       )       �  @mv    �3	� v   @J�v   �����v   ��8�v   `���n x)          3       (       *       L  @mv   ྎ�� v   � j��v   `�E��v    � ��v   �"� �n x)           4       )       +       �  @mv   ��� v   @33�v   �f���v   @���v    �Q�n x)   !       5       *       ,       x  @mv   ��v�� v    /���v    �	��v   �ZS��v   �u��n x)   "       6       +       -         @mv   ���� v   `�<�v    ����v   ����v   ��	�n x)   #       7       ,       .       �  @mv   `S��� v   @����v   @o*��v   @�Y��v   ��D �n x)   $       8       -       /       :  @mv    z�� v   @��v   �dp��v   �o� �v    ��n x)   %       9       .       0       �  @mv   ����� v   �����v    ���v    +��v   @���n x)   &       :       /       1       f  @mv    b<� v    ��v    ����v    2l�v    �`�n x    '       ;       0         @mv   @�� � v   �w���v   ��3��v   �H���v    �J��n x    (       <       3       �  @mv   ���� v   ���v   @�Y��v   `���v   @�p
�n x)   )       =       2       4       :  @mv    j�� v   ��P��v   @���v   �m��v   `y��n x)   *       >       3       5       �  @mv   ��� v   �`��v    A���v   ��r�v   @���n x)   +       ?       4       6       f  @mv   `��� v   @�1��v   @����v   �[=��v   �A���n x)   ,       @       5       7       �  @mv   ����� v    ���v    fZ��v    5���v    k�n x)   -       A       6       8       �  @mv   �6�� v   ��	�v   ����v   `I@�v    �n x)   .       B       7       9       (  @mv    !�� v   ����v   @�� �v   @��	�v   �R�n x)   /       C       8       :       �  @mv    /�� v   ��]��v    ���v   �+���v    pk��n x)   0       D       9       ;       T  @mv   `�� v   ��v    t���v   ��x�v   �t�n x    1       E       :       �  @mv   ����� v   �c���v   @�.��v   �>���v   ��h �n x    2       F       =       �  @mv   ��� v   ����v    (8�v    �r
�v   `j��n x)   3       G       <       >       (  @mv   `�� v    ����v   �^��v   �i��v   ����n x)   4       H       =       ?       �  @mv   ��
� v   @�.��v    �G��v   ��`��v   ��y��n x)   5       I       >       @       T  @mv   �3�� v   ���v   �e���v   ��+�v   @��
�n x)   6       J       ?       A       �  @mv   ��H� v    0��v   �b���v   ��� �v    ��n x)   7       K       @       B       �  @mv   `w�� v    ����v   @�_�v    Aq�v   �\A�n x)   8       L       A       C         @mv   �v�� v   �d��v   �H���v    7���v   `��n x)   9       M       B       D       �  @mv    �X� v   �[�v   �����v   ���v   ���n x)   :       N       C       E       B  @mv   `�� v   @����v   ��E�v   �E�v    "�n x    ;       O       D       �  @mv   ��y� v    ��v    jj��v    ���v   ���
�n x    <       P       G       �  @mv   ��� v   �N]�v    ��v    ql�v   `SK�n x)   =       Q       F       H         @mv   `�]� v   `���v   �����v   �� �v    �n x)   >       R       G       I       �
  @mv   �N�� v   �	?�v   �ă��v   �?��v   ��	�n x)   ?       S       H       J       B
  @mv    �i�� v   `s �v   �L��v   ����v    ���n x)   @       T       I       K       �	  @mv   @�� v   �[���v    ���v   @���v    �a��n x)   A       U       J       L       n	  @mv   ��_� v   `*��v   ���v   �7�v   �'F�n x)   B       V       K       M       	  @mv   ��G�� v   `�q��v   �M���v   �����v   �{x�n x)   C       W       L       N       �  @mv   ���߿ v   �N���v   �~��v   ��y�v    ��n x)   D       X       M       O       0  @mv   ��}� v    ��v   ��`��v   ����v   �y�n x    E       Y       N       �  @mv    �� v    ��v   `('��v    $��v   ��<�n x    F       Z       Q       n  @mv    B� v   @Y#�v   ���v    s�v   `��	�n x)   G       [       P       R         @mv    ��� v   �Ր�v   @���v   `�� �v    �N�n x)   H       \       Q       S       �  @mv    ��� v   ����v   �г��v    5�v   �-��n x)   I       ]       R       T       0  @mv   ��@� v    ��v    3���v    �i�v   `
]�n x)   J       ^       S       U       �  @mv   ���� v   ���v    u<��v    2���v   ��� �n x)   K       _       T       V       \  @mv    ���� v   `�w��v   `I��v   ����v    �h��n x)   L       `       U       W       �  @mv   ���� v    �e�v   ����v    �N�v   `��n x)   M       a       V       X       �  @mv   ���ۿ v   `��v   �J��v   ���v   ����n x)   N       b       W       Y         @mv    *�� v   @C��v   `�i��v   ����v   ���n x    O       c       X       �  @mv    <��� v   ���v   `�"��v   @�8��v   �zN��n x   P       [       e  @mv   @#�� v    ��v   ��� �v   ���	�v   �Nc�n x    Q       Z       \         @mv   � M�� v   �c���v    �3��v    ����v   � � �n x    R       [       ]       �  @mv   ��� v    �4�v   @���v   @�
�v    P��n x    S       \       ^       B  @mv    8� v   ��@�v   �A}��v   ����v   @ ��n x    T       ]       _       �  @mv   ��5� v   ��v   �[��v    ����v    w�ؿn x    U       ^       `       �  @mv    �� v    ����v   �W���v    -���v    �L�n x    V       _       a         @mv   `e�� v   �kC��v   @�!��v   � ��v    t���n x    W       `       b       �   @mv    )?	� v   ���v   `5���v   `,7�v   @#��n x    X       a       c       ]   @mv    V��� v   �����v   ���v   `�]��v   ����n x   Y       b          @ w #         � h  �)  �)  Q)  H)  ?)  �(  �(  �(  �(  �(  }(  .(  %(  (  �'  �'  �'  l'  c'  Z'  '  '  �&  �&  �&  �&  I&  @&  �%  �%  �%  �%  �%  ~%  u%  &%  %  %  %  �$  �$  �$  �$  R$  I$  @$  7$  �#  �#  �#  �#  ~#  u#  l#  c#  #  #  #  �"  �"  �"  �"  �"  @"  7"  ."  �!  �!  �!  ~!  u!  l!  c!  !  !  !  �   �   �   �   �   @   7   .   %   �  �  �  �  l  c  Z  Q    �  �  �  �  �  �  }  .  %    �  �  �  l  c  Z  Q    �  �  �  �  �  �  }  .  %      �  �  �  �  Z  Q  H  ?  �  �  �  �  �  }  t  k      
  �  �  �  Z  Q  H  ?  �  �  �  �  �  }  t  k      
    �  �  �  �  H  ?  6  -  �  �  �  �  t  k  b  Y  
    �  �  �  �  H  ?  6  -  �  �  �  �  t  k  b  Y  
    �  �  �  �  �  �  6  -  $    �  �  �  �  b  Y  P  G  �  �  �  �  �  �  6  -  $    �  �  �  �  b  Y  P  G  �  �  �  �  �  �  |  s  $      	  �  �  �  �  P  G  >  5  �  �  �  �  |  s  $      	  �  �  �  �  P  G  >  5  �  �  �  �  |  s  j  a    	     �
  �
  �
  �
  �
  >
  5
  ,
  #
  �	  �	  �	  s	  j	  a	  	  		   	  �  �  �  �  �  >  5  ,  #  �  �  �  �  j  a  X  O     �  �  �  �  �  �  {  ,  #      �  �  �  a  X  	     �  �  �  �  G  >  5  �  �  �  �  |  s  $      �  �  �  b  Y  P    �       o                  i    @+    w@w?              9    @%  +   w@%  +   w�� �         5                  /                   � �         W      7   .        N  ` >               8    @$7_' $7_'w� �                             "  i   C`   @%   "  i'w� �" `�   7T 9`�   Z $�              �        "  " j;`W       " j;`>   " .        N`#   " ~7~;`   f �@ %   j'w� �         �                   �    " `   @%   "  i'w� �" `@   T Z @@"  $P_j' P_'� �                             7T 9`�   "  `>   7T  9`.   Z  `!   Z `   @!p (w� �"  ``   7T  9`P   Z `C   Z  `3   Z  SY@w@@!P_' (� �Z `5   Z SY@w@@%   P_'� �         �              !    �    "  `   �@w@w� �"  `;   7T  9`+   Z  `   @w@" @w�� �"  `]   7T  9`M   Z  `=   Z  SY@w@" @@!P_' (� �         !H                  B               ,    "  " j&'  { ��         9   	               3    "  i'@' w@' w� �         �   
               h    " .   ��6?N`@               :      " "  @( % "  � �            E                /      @( % "  � �         @                  :                $      % { ��         �                  �               �                �                 w     "  "j*i'^    j+i'".   ����?k(@%  "j)&'w%  '{��                               � �         �                  �               �               l    @%  wG              A    @%  %w@% w@%  %z���� �         