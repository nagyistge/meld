meld fil                            	                _init -o node-axioms.m   play(Game, NextPlayer, LastPlay, RootPlayer), !depth(Depth), Depth > 999 -o leaf(Game, RootPlayer, LastPlay).z  play(Game, NextPlayer, LastPlay, RootPlayer) -o check-if-end(Game, NextPlayer, LastPlay, RootPlayer, cons(cons(0,cons(3,cons(6,nil))),cons(cons(1,cons(4,cons(7,nil))),cons(cons(2,cons(5,cons(8,nil))),cons(cons(0,cons(1,cons(2,nil))),cons(cons(3,cons(4,cons(5,nil))),cons(cons(6,cons(7,cons(8,nil))),cons(cons(0,cons(4,cons(8,nil))),cons(cons(2,cons(4,cons(6,nil))),nil))))))))).  check-if-end(MV34, MV35, MV36, MV37, MV38) -o (test-nil(MV38) -o build-next-plays(nil, MV34, MV35, 0, MV37, 0, MV36)), OR (MV4 := head(MV38), P1 := head(MV4), MV5 := tail(MV4), P2 := head(MV5), 
			MV6 := tail(MV5), P3 := head(MV6), lnth(MV34, P2) = lnth(MV34, P1), lnth(MV34, P1) = lnth(MV34, P3), lnth(MV34, P1) != 0, 
			not(test-nil(MV38)), not(test-nil(MV4)), not(test-nil(MV5)), not(test-nil(MV6)), nil = tail(MV6) -o 
			leaf(MV34, MV37, MV36)), OR (Xs := tail(MV38), not(test-nil(MV38)) -o check-if-end(MV34, MV35, MV36, MV37, Xs)).�   build-next-plays(MV39, MV40, MV41, MV42, MV43, MV44, MV45), test-nil(MV40) -o (MV44 = 0 -o leaf(MV39, MV43, MV45)), OR (MV44 > 0, MV43 = MV41 -o maximize(MV44, -9999, 0)), 
			OR (MV44 > 0, MV41 != MV43 -o minimize(MV44, 9999, 0)).�  depth(Depth), build-next-plays(Previous, MV15, NextPlayer, X, RootPlayer, Descendants, Play), MV17 := head(MV15), Xs := tail(MV15), 
			not(test-nil(MV15)), MV17 = 0 -o exists B. (play(append(Previous, cons(NextPlayer,Xs)), if (NextPlayer = 1) then 2 else 1 end, X, RootPlayer)@B, build-next-plays(append(Previous, cons(0,nil)), Xs, NextPlayer, X + 1, RootPlayer, Descendants + 1, Play), 
			depth(Depth), depth(Depth + 1)@B, back(host-id)@B).�   build-next-plays(Previous, MV18, NextPlayer, X, RootPlayer, Descendants, Play), C := head(MV18), Xs := tail(MV18), C != 0, 
			not(test-nil(MV18)) -o build-next-plays(append(Previous, cons(C,nil)), Xs, NextPlayer, X + 1, RootPlayer, Descendants, Play).[  leaf(Game, RootPlayer, Play) -o evaluate-wins(Game, RootPlayer, cons(cons(0,cons(3,cons(6,nil))),cons(cons(1,cons(4,cons(7,nil))),cons(cons(2,cons(5,cons(8,nil))),cons(cons(0,cons(1,cons(2,nil))),cons(cons(3,cons(4,cons(5,nil))),cons(cons(6,cons(7,cons(8,nil))),cons(cons(0,cons(4,cons(8,nil))),cons(cons(2,cons(4,cons(6,nil))),nil)))))))), Play).�   evaluate-wins(MV46, MV47, MV48, MV49) -o (test-nil(MV48) -o count-points(MV46, MV47, 0, MV49)), OR (X := head(MV48), Xs := tail(MV48), not(test-nil(MV48)) -o evaluate-win(MV46, MV47, X, Xs, MV49)).�  evaluate-win(MV50, MV51, MV52, MV53, MV54) -o (P1 := head(MV52), MV24 := tail(MV52), P2 := head(MV24), MV25 := tail(MV24), 
			P3 := head(MV25), lnth(MV50, P2) = lnth(MV50, P1), lnth(MV50, P1) = lnth(MV50, P3), not(test-nil(MV52)), not(test-nil(MV24)), 
			not(test-nil(MV25)), nil = tail(MV25) -o score(if (lnth(MV50, P1) = MV51) then 200 else -100 end, MV54)), OR ( -o evaluate-wins(MV50, MV51, MV53, MV54))./  count-points(MV55, MV56, MV57, MV58) -o (test-nil(MV55) -o score(MV57, MV58)), OR (Games := tail(MV55), not(test-nil(MV55)), MV56 = head(MV55) -o count-points(Games, MV56, MV57 + 1, MV58)), OR (X := head(MV55), Xs := tail(MV55), X != MV56, not(test-nil(MV55)) -o 
			count-points(Xs, MV56, MV57, MV58)).N   score(Score, BestPlay), back(B), depth(Depth) -o new-score(Score, BestPlay)@B.�    -o (new-score(Score, Play), minimize(N, Current, BestPlay), Current > Score -o minimize(N - 1, Score, Play)), OR (new-score(Score, Play), minimize(N, Current, BestPlay), Current <= Score -o minimize(N - 1, Current, BestPlay)).�    -o (new-score(Score, Play), maximize(N, Current, BestPlay), Current < Score -o maximize(N - 1, Score, Play)), OR (new-score(Score, Play), maximize(N, Current, BestPlay), Current >= Score -o maximize(N - 1, Current, BestPlay)).D   minimize(MV32, Score, BestPlay), MV32 = 0 -o score(Score, BestPlay).D   maximize(MV33, Score, BestPlay), MV33 = 0 -o score(Score, BestPlay).           �                   _init                                                                setcolor                                                             setedgelabel                                                         write-string                                                         setcolor2                                                             stop-program                                                         set-priority                                                         add-priority                                                          schedule-next                                                        set-default-priority                                                  set-moving                                                            set-static                                                           set-affinity                                                         set-cpu                                                               remove-priority                                                      play                                                                 check-if-end                                                          root                                                                 build-next-plays                                                     leaf                                                                 back                                                                 evaluate-wins                                                        evaluate-win                                                         count-points                                                         score                                                                new-score                                                            maximize                                                             minimize                                                             depth                                                            ��������   �                    �    � 
�         @$    _    _    _    _    _    _    _    _    _    _    d           w         #         �         ]                  W               A    " �  C`   @%   ! ! w� �        z                 t   @%   ! ! ! $$   _   _   __$   _   _    __$   _   _   __$   _   _   __$   _   _    __$   _   _   __$   _   _   __$   _   _    _dw� �        ,                 &   " `3   @p %  !     !     ! w� �" `�   T `�   Y`�   Y`�   Y`w   SSS"  j"  j;`R   "  j"  j;`6   "  j    <`   @%   ! ! w� �" `   Z ' { �        �                  �   "     ;`   @%   ! ! w� �"     C`3   " " ;`!   @!  ����    w� �"     C`3   " " <`!   @!  '      w� �                                       �       Z@" fj' "   ;�         �      !!@" $    _j' '!"   =&!"   =&!z@!   z@"     =& @( �� �        g                  a   T     <`;   T Z "  $_j'  ' "    =& { �        u                 o   @%   ! $$   _   _   __$   _   _    __$   _   _   __$   _   _   __$   _   _    __$   _   _   __$   _   _   __$   _   _    _d! w� �        ~                  x    " `$   @%   !     ! w� �" `-   T Z @%   ! ''! w� �        �   	               �    " `�   Z `�   Y`�   Y`�   SST "  j"  j;`a   "  j"  j;`E   T @"  j" ;�      �    �   ���� ! w� �@%   ! % ! w� �        �   
               �    "  `   @!  ! w� �"  `5   " T  ;`#   Z  '  "    =& { �"  `#   T  " <`   Z  '  { �        c                  ]               G               1    @!   ! " ��� �        �                  _               I    ""  C`'   "    :& !  ! {� �            U               ?    ""  B`   "    :& {� �        �                  _               I    ""  >`'   "    :& !  ! {� �            U               ?    ""  ?`   "    :& {� �        4                  .        @!  ! w� �        4                  .        @!  ! w� �        