meld fil       5                                                                                         	          '      _init -o axioms+  initialize(), A = host-id -o may-do-init-height(), {B, W, T | 
			!edge(B, W, T), T = 1 | rv(B, float(W))}, {B, W, T | 
			!edge(B, W, T), T = 0 | rv(B, 0)}, {B, W, T | 
			!edge(B, W, T) | edge-height(B, 0)}, [ COUNT => Outbound,  | B, W, Out | 
			!edge(B, W, Out), Out = 1 | !outbound(Outbound)].a   new-height(W, H), !token(), edge-height(MV7, MV1), MV7 = W, 
			A = host-id -o edge-height(W, H).O   may-do-init-height(), !typ(MV8), MV8 = 1, A = host-id -o 
			do-init-height(0).2   proc-return(MV9), MV9 = 0, A = host-id -o token().N   may-do-init-height(), !typ(NotSink), NotSink != 1, A = host-id -o 
			token().  do-init-height(Ret), !height(Height), A = host-id -o proc-return(Ret), 
			{B, W, R, T | !edge(B, W, T), rv(B, R), R = 0 | 
			init-height(host-id, Height)@B, rv(B, 0)}, {B, W, R, T | !edge(B, W, T), rv(B, R), 
			R != 0 | new-height(host-id, Height)@B, rv(B, R)}.w   init-height(W, H), token(), edge-height(MV10, MV2), MV10 = W, 
			A = host-id -o edge-height(W, H), init-height2(W, H).]   init-height2(W, H), !typ(NotSource), NotSource != 0, A = host-id -o 
			init-height-check(H).~   init-height-check(H), height(Height), (Height = 0) || (Height > (H + 1)), A = host-id -o 
			height(H + 1), do-init-height(1).4   proc-return(MV11), MV11 = 1, A = host-id -o token().-   init-height-check(H), A = host-id -o token().�   init-height2(W, H), !typ(MV12), nbInitHeightMsgs(IH), MV12 = 0, 
			A = host-id -o nbInitHeightMsgs(IH + 1), init-height2-check-arcs().)   -o (init-height2-check-arcs(), nbInitHeightMsgs(Total), !outbound(Out), Out = Total, 
			A = host-id -o nbInitHeightMsgs(Total), init-height3-check-arcs()), OR (init-height2-check-arcs(), nbInitHeightMsgs(Total), !outbound(Out), Out != Total, 
			A = host-id -o nbInitHeightMsgs(Total), token()).m   init-height3-check-arcs(), height(Height), excess(Excess), A = host-id -o 
			height(world), change-excess().Z   proc-return(MV13), state(State), MV13 = 3, A = host-id -o 
			state(0), do-init-height(2).7   proc-return(MV14), MV14 = 2, A = host-id -o do-push(0).k   change-excess(), A = host-id -o accumulate-excess(), {B, W | 
			rv(B, W) | rv-copy(B, W), rv-copy2(B, W)}.�   accumulate-excess(), A = host-id -o proc-return(3), {B, W | 
			rv-copy(B, W) | rv(B, W)}, [ SUM => W,  | B | 
			rv-copy2(B, W) | excess(W)].g   do-push(MV15), !typ(MV16), !excess(Excess), MV15 = 1, 
			MV16 = 1, A = host-id -o may-do-lift(Excess).�    -o (do-push(MV17), !typ(MV18), MV17 = 0, MV18 = 1, 
			A = host-id -o token()), OR (do-push(Type), !typ(NotSink), NotSink != 1, A = host-id -o 
			push-check-excesses(Type)).9  !push-check-excesses(Type), excess(Excess), !edge-height(U, EH), rv(MV19, RV), 
			!height(H), !edge(MV20, MV3, MV4), Delta = if (Excess < RV) then Excess else RV end, Excess > 0, RV > 0, 
			EH < H, MV19 = U, MV20 = U, A = host-id -o excess(Excess - Delta), 
			rv(U, RV - Delta), push-request(host-id, Delta)@U.<   push-check-excesses(MV21), MV21 = 0, A = host-id -o token().]   push-check-excesses(MV22), !excess(Excess), MV22 = 1, A = host-id -o 
			may-do-lift(Excess).�   push-request(W, Delta), token(), !edge-height(MV23, EH), !height(H), 
			rv(MV24, RV), EH > H, MV23 = W, MV24 = W, A = host-id -o 
			rv(W, RV + Delta), find-all-push-requests(Delta).�   find-all-push-requests(Acc), push-request(W, Delta), !edge-height(MV25, EH), !height(H), 
			rv(MV26, RV), EH > H, MV25 = W, MV26 = W, A = host-id -o 
			rv(W, RV + Delta), find-all-push-requests(Acc + Delta).?   find-all-push-requests(Acc), A = host-id -o push-request2(Acc).�   push-request(W, Delta), !edge-height(MV27, EH), !height(H), !edge(MV28, MV5, MV6), 
			EH <= H, MV27 = W, MV28 = W, A = host-id -o push-request-ans(host-id, Delta)@W, 
			token().|   push-request2(Delta), state(MV29), !typ(NotSink), NotSink != 1, 
			MV29 = 1, A = host-id -o state(0), push-request3(Delta).:   push-request2(Delta), A = host-id -o push-request3(Delta).f   push-request3(Delta), excess(Excess), A = host-id -o excess(Excess + Delta), 
			push-request4(Delta).�    -o (push-request4(Delta), !typ(MV30), MV30 = 1, A = host-id -o 
			token()), OR (push-request4(Delta), !typ(NotSink), NotSink != 1, A = host-id -o 
			do-push(1)).�   push-request-ans(W, Delta), excess(Excess), state(State), rv(MV31, RV), 
			MV31 = W, A = host-id -o excess(Excess + Delta), state(0), rv(W, RV + Delta), 
			do-push(1).U   may-do-lift(MV33), A = host-id -o (MV33 > 0 -o do-lift()), OR (MV33 <= 0 -o token()).I   do-lift(), !typ(MV32), MV32 = 2, A = host-id -o 
			select-best-height()."   do-lift(), A = host-id -o token().�   select-best-height(), !excess(Excess), A = host-id -o minimize-height(), 
			{B, W, H | rv(B, W), edge-height(B, H), W >= Excess | 
			rv(B, W), edge-height(B, H), to-select(H)}.[   minimize-height(), A = host-id -o [ MIN => H,  |  | 
			to-select(H) | lift-min-height(H)].�   lift-min-height(H), height(OldHeight), A = host-id -o height(H + 1), 
			do-push(0), {B, W, Out | !edge(B, W, Out) | new-height(host-id, H + 1)@B}.           �                  _init                                                               setcolor                                                            setedgelabel                                                        write-string                                                        setcolor2                                                            stop-program                                                         set-priority                                                         add-priority                                                         schedule-next                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      typ                                                                 state                                                               height                                                               excess                                                               edge                                                                nbInitHeightMsgs                                                     rv                                                                   rv-copy                                                              rv-copy2                                                             initialize                                                          init-height                                                         new-height                                                          edge-height                                                         init-height-check                                                   init-height2                                                         init-height2-check-arcs                                              init-height3-check-arcs                                              change-excess                                                        outbound                                                            do-push                                                              accumulate-excess                                                    push-request                                                         find-all-push-requests                                               push-request2                                                        push-request3                                                        push-request4                                                        push-request-ans                                                    push-check-excesses                                                  may-do-lift                                                          do-lift                                                             to-select                                                            select-best-height                                                   minimize-height                                                     lift-min-height                                                      may-do-init-height                                                   token                                                               proc-return                                                         do-init-height                                                   ���������                                                                                                                                                                                                                                                                        '                      
   � 
�     \    �   t   2      ,                                 `  =                                                N                                      
                      �   N                        
                                     x   =                                                6   ,                                     @       w @ -          w @      w @       w @ w #         �    �  �    n  ]  =  ,    
  �   �   �   �   �   �   u   U   D                         �    @1w8              2      @%  "	&w�8              2       @%  -        w�.              (    @%      w�.        6              '         =�@!& x� �         [              2    U               ?                )     %  !{��         2G              1    A               +       @4     w� �         1*              3    $        @2w� �         3N              1    H               2    "    <`   @2w� �         1             4                  �    @3!   wj              d             #   N              @( ! " @%  -        z��r              l                V     ".        K`*   @( ! " @%  !z��� �         4l              2    f               P                :     %  !{@%  !w�� �         2S                  M               7    "     <`   @!  w� �         �   	               �               l    "     ;`   " "     =C`)   "     =& {@4    w� �         *   
           3    $       @2w� �         3$                      @2w� �         j                  d               N                   2    "    =& {@w� �         �                  P               :            !    $     {@w� �            ^               H            !   2    " " <`   {@2w� �         !W                  Q               ;               %    1 {@ w�� �         P              3    J                  .         {@4    w� �         31              3    +       @"     w� �         3a                   [    @#w=              7    @%  !w@%  !w��� �          �              #    �    @3    w.              (    @%  !w��.        0              !    "F��@& w� �         #a              "    [                  ?                  #    @+!  w� �         "�              "    @                   $       @2w� �        "    M               7    "    <`   @*!   w� �         "*             *    $                 " .        N`�              �                �     ".        N`�              �    "" >`v               p     " "L�      " �   "" G& {%  "G&{@$( &" 		�         **              *    $        @2w� �         *E              *    ?                  #    @+!  w� �         *�              2    �            $   �                �                h    "" C`F               @     %  ""F&{@%! w�� �         $2�              %    �            $   �                �                n    "" C`L               F     %  ""F&{"  "F&  { ��         %$)              %    #    @&!   w� �         %�              $    �                v                 \    "" B`:               4      @)( ! "  @2w� �         $x              &    r               \                  @    "    <`        {@'!   w� �         &)              &    #    @'!   w� �         &Q              '    K               5    " "  F& {@(!   w� �         '�              (    :               $       @2w� �        (    O               9    "    <`   @"    w� �         (�               )    �               �               q                [      " " F& {     {%   "" F&{@"    w� �         )\   !           +    V    "  .        N`   @,w� �"  .        M`   @2w� �         +@   "           ,    :               $       @.w� �         ,$   #           ,        @2w� �         ,�   $           .    �               �    @/wu              o    "" O`M               G     @%  !z@%  !z@-! w���� �         .^   %           /    X    ���9           -   *    " >`	   P��@0& w� �         /�   &           0    �               u    "     =& {@"     w<              6    @( "     =&" �� �         0