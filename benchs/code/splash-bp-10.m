meld fil       d   c       c       b       b       a       a       `       `       _       _       ^       ^       ]       ]       \       \       [       [       Z       Z       Y       Y       X       X       W       W       V       V       U       U       T       T       S       S       R       R       Q       Q       P       P       O       O       N       N       M       M       L       L       K       K       J       J       I       I       H       H       G       G       F       F       E       E       D       D       C       C       B       B       A       A       @       @       ?       ?       >       >       =       =       <       <       ;       ;       :       :       9       9       8       8       7       7       6       6       5       5       4       4       3       3       2       2       1       1       0       0       /       /       .       .       -       -       ,       ,       +       +       *       *       )       )       (       (       '       '       &       &       %       %       $       $       #       #       "       "       !       !                                                                                                                                                                                                             	       	                                                                                                                                                                                                                                       
       
                       	               init -o axioms  start() -o belief(:(-1.609438, -1.609438, -1.609438, -1.609438, -1.609438)), waiting(), {B | 
			!edge(B) | neighbor-belief(B, :(-1.60944, -1.60944, -1.60944, -1.60944, -1.60944)), sent-neighbor-belief(B, :(-1.60944, -1.60944, -1.60944, -1.60944, -1.60944))}."   waiting(), !token(All, Next) -o 1.V   waiting(), nodepriority(host-id) > 0.0 -o token(cons(host-id,nil), cons(host-id,nil)).o  token(MV30, MV31) -o (nodelistlength(MV30) > str2int(@arg1) -o first-phase(MV30, nodelistreverse(MV30))), OR (Next = tail(MV31), not(test-nil(MV31)), host-id = head(MV31) -o [ COLLECT => L,  |  | 
			!edge(L), 0 = nodelistcount(MV30, L), 0 = nodelistcount(Next, L), nodepriority(L) > 0.0, 
			cpu-id(L) = cpu-id(host-id) | send-token(MV30, nodelistappend(Next, L))]).�   send-token(MV32, MV33) -o (test-nil(MV33) -o first-phase(MV32, nodelistreverse(MV32))), OR (B = head(MV33), Next = tail(MV33), not(test-nil(MV33)) -o schedule-next()@B, 
			token(nodelistappend(MV32, cons(B,nil)), cons(B,Next))@B).-  first-phase(MV34, MV35), not(test-nil(MV35)), host-id = head(MV35) -o (not(test-nil(MV34)), host-id = head(MV34), nil = tail(MV34), nil = tail(MV35) -o 
			second-phase(nil, host-id)), 
			OR (MV12 = tail(MV34), B = head(MV12), Next = tail(MV12), not(test-nil(MV34)), 
			host-id = head(MV34), not(test-nil(MV12)), nil = tail(MV35) -o update(), schedule-next()@B, 
			second-phase(cons(B,Next), host-id)@B), OR (MV17 = tail(MV35), B = head(MV17), Next = tail(MV17), not(test-nil(MV17)) -o 
			update(), schedule-next()@B, first-phase(MV34, cons(B,Next))@B).�  second-phase(MV36, MV37) -o (test-nil(MV36) -o set-priority(0.0), waiting(), update()), OR (not(test-nil(MV36)), host-id = head(MV36), nil = tail(MV36) -o update(), 
			waiting()@MV37, waiting(), set-priority(0.0)), OR (MV23 = tail(MV36), B = head(MV23), Next = tail(MV23), not(test-nil(MV36)), 
			host-id = head(MV36), not(test-nil(MV23)) -o update(), waiting()@MV37, schedule-next()@B, 
			second-phase(cons(B,Next), host-id)@B).T   sum-messages(L1), neighbor-belief-copy(L2) -o sum-messages(addfloatstructs(L1, L2)).t   sum-messages(NewBelief), Normalized = normalizestruct(NewBelief) -o update-messages(Normalized), belief(Normalized).
   -o (check-residual(B, Delta, OutMessage), !edge(MV25), Delta > 1.e-4, MV25 = B -o 
			set-priority(Delta)@B, new-neighbor-belief(host-id, OutMessage)@B), OR (check-residual(B, Delta, OutMessage), !edge(MV26), MV26 = B -o new-neighbor-belief(host-id, OutMessage)@B).l   neighbor-belief(B, Belief), new-neighbor-belief(MV27, NewBelief), MV27 = B -o neighbor-belief(B, NewBelief).+  !update-messages(NewBelief), !edge(B), neighbor-belief-old(MV28, OldIn), sent-neighbor-belief(MV29, OldOut), 
			Cavity = normalizestruct(dividestruct(NewBelief, OldIn)), Convolved = normalizestruct(convolvestruct(:(-0.0, -2.0, -4.0, -6.0, -8.0, -2.0, -0.0, -2.0, -4.0, -6.0, -4.0, -2.0, -0.0, -2.0, -4.0, -6.0, -4.0, -2.0, -0.0, -2.0, -8.0, -6.0, -4.0, -2.0, -0.0), Cavity)), OutMessage = dampstruct(Convolved, OldOut, 0.1), MV28 = B, MV29 = B -o 
			check-residual(B, residualstruct(OutMessage, OldOut), OutMessage), sent-neighbor-belief(B, OutMessage).    update-messages(NewBelief) -o 1.�   update(), !potential(Potential), belief(MyBelief) -o sum-messages(Potential), 
			{B, Belief | neighbor-belief(B, Belief) | neighbor-belief-old(B, Belief), neighbor-belief-copy(Belief), 
			neighbor-belief(B, Belief)}.        �  mv         v       �v      �v      �v       �v       �v        v       �v      �v      �	v      �
v       �v        v       �v      �v      �v      �v       �v        v       �v       �v      �v      �v       �v          )     mv    D��� v    D���v    D���v    D���v    D��� )    mv    B��� v    B���v    B���v    B���v    B��� )    | i  )    �                  _init                                                               set-priority                                                        setcolor                                                            setedgelabel                                                        write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                         edge                                                                 potential                                                           belief                                                              new-neighbor-belief                                                 sent-neighbor-belief                                                neighbor-belief                                                     neighbor-belief-copy                                                neighbor-belief-old                                                  start                                                                update                                                               copy-messages                                                       sum-messages                                                        update-messages                                                     check-residual                                                      token                                                                waiting                                                             first-phase                                                         send-token                                                          second-phase                                                          Y@�                                                                                                                                              �)                   �)   � 
�)  d      Y   �     |  �  >  �     a  �    �  �  X  �  ,  �     j  �  ,  �   	  j	  �	  >
  �
    |  �  >  �    |  �  P  �  $  �  �  P  �  $  �  �  b  �  6  �    b  �  6  �  
  t  �  H  �    t  �  H  �    �  �  Z  �  %  �  �  Z  �  .  �    l  �  7   �   !  l!  �!  @"  �"  #  ~#  �#  I$  �$  %  c%  �%  %&  �&  �&  H'  �'  @
 mv   �E�� v   `e_��v   �z���v   �����v   �ט�n  x    	       	
       �'  @
 mv    1� v    
�
�v    �]�v   `���v   ���n  x     	       	        	       L'  @
 mv   `\x� v   @�*�v   �Td�v   �@<��v    j�޿n  x     	       	       	       �&  @
 mv   �f�� v   ��� �v   �9i��v    p��v   ����n  x     	       	       	       �&  @
 mv    �I� v   @}�v    �f�v   �����v    ���n  x     	       	       	       )&  @
 mv   �\�� v   �"��v   ��s��v    ����v   @@0��n  x     	       	       	       �%  @
 mv   `;�� v    ���v   @�H��v   ���v   ����n  x     	       	       	       g%  @
 mv   �!� � v   �E��v   �GD��v   @To��v   `V���n  x     	       	       	       %  @
 mv    ǝ�� v   �} ��v   �4c��v   @����v   �P��n  x     		       	       	       �$  @
 mv   `�N� v    #��v    �j�v   �$���v   ���n  x    	       	       M$  @
 mv   ��m� v   �*u�v   �����v   ���v    \,�n  x     	       	       	        �#  @
 mv   �o�� v   �����v     c��v    ��v   �+���n  x )   	       	
       	       	       �#  @
 mv    ��	� v   �]n�v   `s ��v   � $�v    �G�n  x )   	       	       	       	       #  @
 mv    �� v   �9� �v   `ws��v   �p��v   �t��n  x )   	       	       	       	       �"  @
 mv   ���� v   ��s��v    LC��v   ���v   �`� �n  x )   	       	       	       	       D"  @
 mv   �+�	� v    eY�v   �=���v   ��'�v   `.b�n  x )   	       	       	       	       �!  @
 mv   ��
� v   औ�v   �G'��v    F%�v    �F�n  x )   	       	       	       	       p!  @
 mv   �%	� v   `b��v   �>���v   @�;�v    2��n  x )   	       	       	       	       !  @
 mv   ��� � v   �����v    f=��v    A���v   ����n  x )   	       	       	       	       �   @
 mv   `��� v    v�v   ����v   �L!�v   ��w�n  x     	       	       		       ;   @
 mv    ^� v    Wx�v   �P%��v   @�Y�v   `���n  x     	       	       	
       �  @
 mv    ��	� v    Ti�v   �����v   ��$�v   �&N�n  x )   	       	       	       	       p  @
 mv    ��� v   `w��v    �_ �v    /��v    ���n  x )   	       	       	        	         @
 mv   ��1� v   `��v   ��A��v   `�d �v    ���n  x )   	       	       	!       	       �  @
 mv    ;�� v    ���v   `����v   �a���v   `��n  x )   	       	       	"       	       2  @
 mv    ���� v   �@<��v   `����v   �����v   ��n  x )   	       	       	#       	       �  @
 mv   `*�� v   ����v   �u��v   `^ �v    p�n  x )   	       	       	$       	       ^  @
 mv   `|� v   ����v   �+��v   `\8 �v    #a�n  x )   	       	       	%       	       �  @
 mv   �"2�� v    L���v   �u��v   `����v   ����n  x )   	       	       	&       	       �  @
 mv   `ω � v    n���v   �=3��v   ����v   @�R��n  x     	       	'       	       )  @
 mv   �}� v   @����v   �R���v   @����v    v���n  x     	       	(       	       �  @
 mv   @=�� v   ��u �v   `LO��v   `���v   @�n  x )   	        	       	)       	       ^  @
 mv   `�� � v    ����v    �;��v   �"���v   �C���n  x )   	!       	       	*       	       �  @
 mv   �
�� v    <���v   �m���v   ��Y��v   ��
��n  x )   	"       	        	+       	       �  @
 mv   ���� v   �t��v   �!���v   `����v   �3��n  x )   	#       	!       	,       	          @
 mv   �C� v   ���v   �����v   �� �v   `��n  x )   	$       	"       	-       	       �  @
 mv   �)�� v   ��\�v    ���v   �n�v    �M�n  x )   	%       	#       	.       	       L  @
 mv   ���� v   �A���v   �h���v    ����v    �P�n  x )   	&       	$       	/       	       �  @
 mv   ��)� v   �#��v   ��T��v   �!+�v   @%�n  x )   	'       	%       	0       	       x  @
 mv   �%��� v    ����v    �=��v   `H���v   `VZ�n  x     	&       	1       	         @
 mv   �S�� v   ��Z�v   �x���v    ��v   @���n  x     	)       	2       	       �  @
 mv    �3	� v   @J�v   �����v   ��8�v   `���n  x )   	*       	(       	3       	       L  @
 mv   ྎ�� v   � j��v   `�E��v    � ��v   �"� �n  x )   	+       	)       	4       	        �  @
 mv   ��� v   @33�v   �f���v   @���v    �Q�n  x )   	,       	*       	5       	!       x  @
 mv   ��v�� v    /���v    �	��v   �ZS��v   �u��n  x )   	-       	+       	6       	"         @
 mv   ���� v   `�<�v    ����v   ����v   ��	�n  x )   	.       	,       	7       	#       �  @
 mv   `S��� v   @����v   @o*��v   @�Y��v   ��D �n  x )   	/       	-       	8       	$       :  @
 mv    z�� v   @��v   �dp��v   �o� �v    ��n  x )   	0       	.       	9       	%       �  @
 mv   ����� v   �����v    ���v    +��v   @���n  x )   	1       	/       	:       	&       f  @
 mv    b<� v    ��v    ����v    2l�v    �`�n  x     	0       	;       	'         @
 mv   @�� � v   �w���v   ��3��v   �H���v    �J��n  x     	3       	<       	(       �  @
 mv   ���� v   ���v   @�Y��v   `���v   @�p
�n  x )   	4       	2       	=       	)       :  @
 mv    j�� v   ��P��v   @���v   �m��v   `y��n  x )   	5       	3       	>       	*       �  @
 mv   ��� v   �`��v    A���v   ��r�v   @���n  x )   	6       	4       	?       	+       f  @
 mv   `��� v   @�1��v   @����v   �[=��v   �A���n  x )   	7       	5       	@       	,       �  @
 mv   ����� v    ���v    fZ��v    5���v    k�n  x )   	8       	6       	A       	-       �  @
 mv   �6�� v   ��	�v   ����v   `I@�v    �n  x )   	9       	7       	B       	.       (  @
 mv    !�� v   ����v   @�� �v   @��	�v   �R�n  x )   	:       	8       	C       	/       �  @
 mv    /�� v   ��]��v    ���v   �+���v    pk��n  x )   	;       	9       	D       	0       T  @
 mv   `�� v   ��v    t���v   ��x�v   �t�n  x     	:       	E       	1       �  @
 mv   ����� v   �c���v   @�.��v   �>���v   ��h �n  x     	=       	F       	2       �  @
 mv   ��� v   ����v    (8�v    �r
�v   `j��n  x )   	>       	<       	G       	3       (  @
 mv   `�� v    ����v   �^��v   �i��v   ����n  x )   	?       	=       	H       	4       �  @
 mv   ��
� v   @�.��v    �G��v   ��`��v   ��y��n  x )   	@       	>       	I       	5       T  @
 mv   �3�� v   ���v   �e���v   ��+�v   @��
�n  x )   	A       	?       	J       	6       �  @
 mv   ��H� v    0��v   �b���v   ��� �v    ��n  x )   	B       	@       	K       	7       �  @
 mv   `w�� v    ����v   @�_�v    Aq�v   �\A�n  x )   	C       	A       	L       	8         @
 mv   �v�� v   �d��v   �H���v    7���v   `��n  x )   	D       	B       	M       	9       �  @
 mv    �X� v   �[�v   �����v   ���v   ���n  x )   	E       	C       	N       	:       B  @
 mv   `�� v   @����v   ��E�v   �E�v    "�n  x     	D       	O       	;       �  @
 mv   ��y� v    ��v    jj��v    ���v   ���
�n  x     	G       	P       	<       �  @
 mv   ��� v   �N]�v    ��v    ql�v   `SK�n  x )   	H       	F       	Q       	=         @
 mv   `�]� v   `���v   �����v   �� �v    �n  x )   	I       	G       	R       	>       �
  @
 mv   �N�� v   �	?�v   �ă��v   �?��v   ��	�n  x )   	J       	H       	S       	?       B
  @
 mv    �i�� v   `s �v   �L��v   ����v    ���n  x )   	K       	I       	T       	@       �	  @
 mv   @�� v   �[���v    ���v   @���v    �a��n  x )   	L       	J       	U       	A       n	  @
 mv   ��_� v   `*��v   ���v   �7�v   �'F�n  x )   	M       	K       	V       	B       	  @
 mv   ��G�� v   `�q��v   �M���v   �����v   �{x�n  x )   	N       	L       	W       	C       �  @
 mv   ���߿ v   �N���v   �~��v   ��y�v    ��n  x )   	O       	M       	X       	D       0  @
 mv   ��}� v    ��v   ��`��v   ����v   �y�n  x     	N       	Y       	E       �  @
 mv    �� v    ��v   `('��v    $��v   ��<�n  x     	Q       	Z       	F       n  @
 mv    B� v   @Y#�v   ���v    s�v   `��	�n  x )   	R       	P       	[       	G         @
 mv    ��� v   �Ր�v   @���v   `�� �v    �N�n  x )   	S       	Q       	\       	H       �  @
 mv    ��� v   ����v   �г��v    5�v   �-��n  x )   	T       	R       	]       	I       0  @
 mv   ��@� v    ��v    3���v    �i�v   `
]�n  x )   	U       	S       	^       	J       �  @
 mv   ���� v   ���v    u<��v    2���v   ��� �n  x )   	V       	T       	_       	K       \  @
 mv    ���� v   `�w��v   `I��v   ����v    �h��n  x )   	W       	U       	`       	L       �  @
 mv   ���� v    �e�v   ����v    �N�v   `��n  x )   	X       	V       	a       	M       �  @
 mv   ���ۿ v   `��v   �J��v   ���v   ����n  x )   	Y       	W       	b       	N         @
 mv    *�� v   @C��v   `�i��v   ����v   ���n  x     	X       	c       	O       �  @
 mv    <��� v   ���v   `�"��v   @�8��v   �zN��n  x    	[       	P       e  @
 mv   @#�� v    ��v   ��� �v   ���	�v   �Nc�n  x     	\       	Z       	Q         @
 mv   � M�� v   �c���v    �3��v    ����v   � � �n  x     	]       	[       	R       �  @
 mv   ��� v    �4�v   @���v   @�
�v    P��n  x     	^       	\       	S       B  @
 mv    8� v   ��@�v   �A}��v   ����v   @ ��n  x     	_       	]       	T       �  @
 mv   ��5� v   ��v   �[��v    ����v    w�ؿn  x     	`       	^       	U       �  @
 mv    �� v    ����v   �W���v    -���v    �L�n  x     	a       	_       	V         @
 mv   `e�� v   �kC��v   @�!��v   � ��v    t���n  x     	b       	`       	W       �   @
 mv    )?	� v   ���v   `5���v   `,7�v   @#��n  x     	c       	a       	X       ]   @
 mv    V��� v   �����v   ���v   `�]��v   ����n  x    	b       	Y          @ w #         � h  �)  �)  P)  G)  >)  �(  �(  �(  �(  �(  |(  -(  $(  (  �'  �'  �'  k'  b'  Y'  
'  '  �&  �&  �&  �&  H&  ?&  �%  �%  �%  �%  �%  }%  t%  %%  %  %  
%  �$  �$  �$  �$  Q$  H$  ?$  6$  �#  �#  �#  �#  }#  t#  k#  b#  #  
#  #  �"  �"  �"  �"  �"  ?"  6"  -"  �!  �!  �!  }!  t!  k!  b!  !  
!  !  �   �   �   �   �   ?   6   -   $   �  �  �  �  k  b  Y  P    �  �  �  �  �  �  |  -  $    �  �  �  k  b  Y  P    �  �  �  �  �  �  |  -  $      �  �  �  �  Y  P  G  >  �  �  �  �  �  |  s  j      	  �  �  �  Y  P  G  >  �  �  �  �  �  |  s  j      	     �  �  �  �  G  >  5  ,  �  �  �  �  s  j  a  X  	     �  �  �  �  G  >  5  ,  �  �  �  �  s  j  a  X  	     �  �  �  �  �  �  5  ,  #    �  �  �  �  a  X  O  F  �  �  �  �  �  �  5  ,  #    �  �  �  �  a  X  O  F  �  �  �  �  �  �  {  r  #        �  �  �  �  O  F  =  4  �  �  �  �  {  r  #        �  �  �  �  O  F  =  4  �  �  �  �  {  r  i  `      �
  �
  �
  �
  �
  �
  =
  4
  +
  "
  �	  �	  �	  r	  i	  `	  	  	  �  �  �  �  �  �  =  4  +  "  �  �  �  �  i  `  W  N  �  �  �  �  �  �  �  z  +  "      �  �  �  `  W    �  �  �  �  �  F  =  4  �  �  �  �  {  r  #      �  �  �  a  X  O     �       o                  i    @+    w@w?           	   9    @!  +   w@!  +   w�� �         5                  /                   � �         P      7 i  .        N `6               0    @$7d $7dw� �                             "  i^   C`   @%   "  i'w� �" `�   7T 9`�   Z $�           	   �        "  " j;`Z       " j;`A   " i.        N`%   " i7i;`   f �@%   j'w� �         �                  |    " `   @%   "  i'w� �" `6   T Z @@"  $_j' d� �                            7T 9`�   "  `>   7T  9`.   Z  `!   Z `   @p (w� �"  `Y   7T  9`I   Z `<   Z  `,   Z  SY@w@@d (� �Z `.   Z SY@w@@%   d� �         �                  �    "  `   .        0@w@w� �"  `F   7T  9`6   Z  `)   @w@" @w.        0� �"  `V   7T  9`F   Z  `6   Z  SY@w@" @@d (� �         H                  B               ,    "  " j&'  { ��         <   	               6    "  i'P@' w@' w� �         �   
               h    " .   ��6?N`@           	    :      " "  @( % "  � �            E            	    /      @( % "  � �         	@                  :                $      % { ��         �                  �            	   �                �                 �     "  "j*i'P^    j+i'P"
.   ����?k(
P	@
!  
"j)	&
'	
w
!  '	{��         	                      � �         �                  �            
   �               l    @%  wG              A    @!  %w@% w@!  %z���� �         
