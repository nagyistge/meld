meld fil                                                                                  	                init -o axioms�   start() -o pagerank((1.0 / float(world))), update(), {B, W | 
			!input(B, W) | input-rank(B, (1.0 / float(world)))}, {B, W | !output(B, W) | 
			output-rank(B, 0.0)}.R   add-input-ranks() -o [ SUM => V,  | B | input-rank-copy(B, V) | 
			sum-ranks(V)].j  sum-ranks(Acc), pagerank(Old), V = (0.15 / float(world)) + (0.85 * Acc) -o pagerank(V), 
			{B, W, O | !output(B, W), output-rank(B, O), (fabs((O - V)) * W) > 1.e-5 | 
			update()@B, new-input-rank(host-id, V)@B, output-rank(B, O)}, {B, W, O | !output(B, W), 
			output-rank(B, O), (fabs((O - V)) * W) <= 1.e-5 | new-input-rank(host-id, V)@B, output-rank(B, O)}.I   new-input-rank(B, V), input-rank(MV1, OldV), MV1 = B -o input-rank(B, V).L   new-output-rank(B, V), output-rank(MV2, OldV), MV2 = B -o output-rank(B, V).   !update(), update() -o 1.�   update() -o add-input-ranks(), {B, V, W | input-rank(B, V), 
			!input(B, W) | input-rank(B, V), input-rank-copy(B, V * W), new-output-rank(host-id, V)@B}.       '   /       .      �? ^    	I  )    �       3   .        N �   #   5  �   .      �H 5 2!              _init                                                               set-priority                                                        setcolor                                                             setedgelabel                                                         write-string                                                        add-priority                                                         schedule-next                                                       setcolor2                                                            stop-program                                                        set-default-priority                                                 set-moving                                                           set-static                                                          set-affinity                                                        set-cpu                                                              remove-priority                                                      input                                                                output                                                              pagerank                                                            input-rank                                                           start                                                                update                                                              new-input-rank                                                       add-input-ranks                                                     sum-ranks                                                           input-rank-copy                                                     output-rank                                                         new-output-rank                                                     updates                                                                Y@�                                                                                                                                              Z                   T   � 
+        �   @  `   �  Z                �?             �?          `UU�?             �?             �?�  |                 �?          `UU�?              �?             �?             �?             �?             �?3  Z                 �?             �?          `UU�?             �?             �?�   k                �?           `UU�?          `UU�?          `UU�?             �?             �?d   Z                �?              �?             �?             �?             �?   @ w #         �    3  "       �  �  �  �  �  �    d  S  B  1       �   �   �   �   �   �   �   s   b   Q   @        �                  �    @*    w@w.              (    @%  *   w�2              ,    @%  -        w�� �         Y                  S    .        0              !    "F��@& w� �         �                 �              p   .   @33�?^    	I.   @33�?"  HF& {�              �                {     "4G 3! 4 "H.   ����>N`3   @" @( &" @%  !z���              �                q     "4G 3! 4 "H.   ����>M`)   @( &" @%  !z��� �         E                  ?                )      %   ! {� �         E                  ?                )      %   ! {� �         5                  /                   ��         �                  �    @wt              n                X     @%  !z@%  ""H&w@( !" ��� �         