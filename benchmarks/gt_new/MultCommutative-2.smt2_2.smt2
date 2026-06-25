; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () Int)
(declare-fun $1 () Int)
(declare-fun $0.ref () Int)
(declare-fun $1.ref () Int)
(declare-fun $1024.ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun $and.i1 (Int Int) Int)
(declare-fun $or.i1 (Int Int) Int)
(declare-fun $xor.i1 (Int Int) Int)
(declare-fun $and.i32 (Int Int) Int)
(declare-fun mult () Int)
(declare-fun main () Int)
(declare-fun __SMACK_code () Int)
(declare-fun __VERIFIER_assume () Int)
(declare-fun __SMACK_dummy () Int)
(declare-fun __VERIFIER_assert () Int)
(declare-fun __SMACK_and32 () Int)
(declare-fun __SMACK_and64 () Int)
(declare-fun __SMACK_and16 () Int)
(declare-fun __SMACK_and8 () Int)
(declare-fun __SMACK_or32 () Int)
(declare-fun __SMACK_or64 () Int)
(declare-fun __SMACK_or16 () Int)
(declare-fun __SMACK_or8 () Int)
(declare-fun __SMACK_check_overflow () Int)
(declare-fun __SMACK_loop_exit () Int)
(declare-fun __SMACK_decls () Int)
(declare-fun __SMACK_top_decl () Int)
(declare-fun __SMACK_init_func_memory_model () Int)
(declare-fun llvm.dbg.value () Int)
(declare-fun __SMACK_static_init () Int)
(declare-fun SIV@3 () Bool)
(declare-fun SIV@2 () Bool)
(declare-fun SIV@4 () Int)
(declare-fun SIV@1 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@30 () Int)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun SIV@26 () Int)
(declare-fun SIV@27 () Int)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@34 () Int)
(declare-fun SIV@33 () Bool)
(declare-fun $u0 () Int)
(declare-fun SIV@24 () Int)
(declare-fun SIV@23 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun mult@@0 (Int Int) Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@32 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 0))
(assert
 (= $1 1))
(assert
 (= $0.ref 0))
(assert
 (= $1.ref 1))
(assert
 (= $1024.ref 1024))
(assert
 (let ((?x23 (- 0 21672)))
 (= $GLOBALS_BOTTOM ?x23)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= ($and.i1 0 0) 0))
(assert
 (= ($or.i1 0 0) 0))
(assert
 (= ($xor.i1 0 0) 0))
(assert
 (= ($and.i1 0 1) 0))
(assert
 (= ($or.i1 0 1) 1))
(assert
 (= ($xor.i1 0 1) 1))
(assert
 (= ($and.i1 1 0) 0))
(assert
 (= ($or.i1 1 0) 1))
(assert
 (= ($xor.i1 1 0) 1))
(assert
 (= ($and.i1 1 1) 1))
(assert
 (= ($or.i1 1 1) 1))
(assert
 (= ($xor.i1 1 1) 0))
(assert
 (= ($and.i32 32 16) 0))
(assert
 (= mult (- 0 1032)))
(assert
 (= main (- 0 2064)))
(assert
 (= __SMACK_code (- 0 3096)))
(assert
 (= __VERIFIER_assume (- 0 4128)))
(assert
 (= __SMACK_dummy (- 0 5160)))
(assert
 (= __VERIFIER_assert (- 0 6192)))
(assert
 (= __SMACK_and32 (- 0 7224)))
(assert
 (= __SMACK_and64 (- 0 8256)))
(assert
 (= __SMACK_and16 (- 0 9288)))
(assert
 (= __SMACK_and8 (- 0 10320)))
(assert
 (= __SMACK_or32 (- 0 11352)))
(assert
 (= __SMACK_or64 (- 0 12384)))
(assert
 (= __SMACK_or16 (- 0 13416)))
(assert
 (= __SMACK_or8 (- 0 14448)))
(assert
 (= __SMACK_check_overflow (- 0 15480)))
(assert
 (= __SMACK_loop_exit (- 0 16512)))
(assert
 (= __SMACK_decls (- 0 17544)))
(assert
 (= __SMACK_top_decl (- 0 18576)))
(assert
 (= __SMACK_init_func_memory_model (- 0 19608)))
(assert
 (= llvm.dbg.value (- 0 20640)))
(assert
 (let ((?x23 (- 0 21672)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 231106) (- 0 235776))))))
 (let (($x168 (=> (and (= (ControlFlow 0 235719) 231106) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 235722) (not (=> (and (and SIV@0 (= (ControlFlow 0 235722) 235719)) (= (ControlFlow 0 235719) 231106) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@30) (= SIV@3 SIV@31)))))
 (let (($x304 (=> (= (ControlFlow 1 235834) (- 0 236350)) $x303)))
 (let (($x324 (=> (and (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x325 (=> (and (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x402 (=> (and (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x447 (=> (and (and (not (= SIV@25 1)) (= (ControlFlow 1 230572) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x429 (=> (and (and (not (= SIV@26 1)) (= (ControlFlow 1 230575) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x408 (=> (and (and (not (= SIV@27 1)) (= (ControlFlow 1 230577) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x370 (=> (and (and (= SIV@29 SIV@28) (= (ControlFlow 1 230582) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x379 (=> (and (and SIV@28 (= (ControlFlow 1 230580) 230581)) (= (ControlFlow 1 230581) 230582) (and (= SIV@29 SIV@28) (= (ControlFlow 1 230582) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x315 (and (and (not SIV@28) (= SIV@30 SIV@34)) (and (= SIV@31 SIV@28) (= (ControlFlow 1 230579) 235834)))))
 (let (($x388 (and (=> (and (= (ControlFlow 1 230578) 230579) $x315 (= (ControlFlow 1 235834) (- 0 236350))) $x303) (=> (and (= (ControlFlow 1 230578) 230580) (and SIV@28 (= (ControlFlow 1 230580) 230581)) (= (ControlFlow 1 230581) 230582) (and (= SIV@29 SIV@28) (= (ControlFlow 1 230582) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303))))
 (let (($x397 (=> (and (and (= SIV@27 1) (= (ControlFlow 1 230576) 230578)) true (and true SIV@33)) $x388)))
 (let (($x422 (and (=> (and (= (ControlFlow 1 230574) 230576) (and (= SIV@27 1) (= (ControlFlow 1 230576) 230578)) true (and true SIV@33)) $x388) (=> (and (= (ControlFlow 1 230574) 230577) (and (not (= SIV@27 1)) (= (ControlFlow 1 230577) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303))))
 (let (($x410 (= SIV@26 1)))
 (let (($x437 (=> (and (= (ControlFlow 1 230571) 230574) (and $x410 (= SIV@27 (ite (> $u0 0) 1 0)))) $x422)))
 (let (($x431 (= SIV@25 1)))
 (let (($x441 (=> (and $x431 (= SIV@26 (ite (> $u0 0) 1 0))) (and $x437 (=> (and (= (ControlFlow 1 230571) 230575) (and (not $x410) (= (ControlFlow 1 230575) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))))
 (let (($x470 (and (=> (and (= (ControlFlow 1 230570) 230571) (and $x431 (= SIV@26 (ite (> $u0 0) 1 0)))) (and $x437 (=> (and (= (ControlFlow 1 230571) 230575) (and (not $x410) (= (ControlFlow 1 230575) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303))) (=> (and (= (ControlFlow 1 230570) 230572) (and (not $x431) (= (ControlFlow 1 230572) 230573)) (and (= SIV@29 true) (= (ControlFlow 1 230573) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303))))
 (let (($x462 (and (boogie_si_record_i32 SIV@24) (= SIV@25 (ite (not (= SIV@23 SIV@24)) 1 0)))))
 (let (($x463 (and (and (boogie_si_record_i32 SIV@23) (= SIV@24 (mult@@0 $u0 $u0))) $x462)))
 (let (($x472 (=> (and (and (not (= SIV@22 1)) (= SIV@23 (mult@@0 $u0 $u0))) $x463) $x470)))
 (let (($x350 (=> (and (and (= SIV@29 true) (= (ControlFlow 1 230567) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x357 (=> (and (and (= SIV@22 1) (= (ControlFlow 1 230569) 230567)) (and (= SIV@29 true) (= (ControlFlow 1 230567) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x485 (and (=> (and (= (ControlFlow 1 230568) 230569) (and (= SIV@22 1) (= (ControlFlow 1 230569) 230567)) (and (= SIV@29 true) (= (ControlFlow 1 230567) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303) (=> (and (= (ControlFlow 1 230568) 230570) (and (not (= SIV@22 1)) (= SIV@23 (mult@@0 $u0 $u0))) $x463) $x470))))
 (let (($x478 (and (not (= SIV@21 1)) (= SIV@22 (ite (> $u0 46340) 1 0)))))
 (let (($x364 (=> (and (and (= SIV@21 1) (= (ControlFlow 1 230566) 230567)) (and (= SIV@29 true) (= (ControlFlow 1 230567) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x498 (and (=> (and (= (ControlFlow 1 230564) 230566) (and (= SIV@21 1) (= (ControlFlow 1 230566) 230567)) (and (= SIV@29 true) (= (ControlFlow 1 230567) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303) (=> (and (= (ControlFlow 1 230564) 230568) $x478) $x485))))
 (let (($x491 (and (not (= SIV@20 1)) (= SIV@21 (ite (< $u0 0) 1 0)))))
 (let (($x331 (=> (and (and (= SIV@29 true) (= (ControlFlow 1 230561) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x338 (=> (and (and (= SIV@20 1) (= (ControlFlow 1 230563) 230561)) (and (= SIV@29 true) (= (ControlFlow 1 230561) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x509 (and (=> (and (= (ControlFlow 1 230562) 230563) (and (= SIV@20 1) (= (ControlFlow 1 230563) 230561)) (and (= SIV@29 true) (= (ControlFlow 1 230561) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303) (=> (and (= (ControlFlow 1 230562) 230564) $x491) $x498))))
 (let (($x502 (and (not (= SIV@19 1)) (= SIV@20 (ite (> $u0 46340) 1 0)))))
 (let (($x345 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 230560) 230561)) (and (= SIV@29 true) (= (ControlFlow 1 230561) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303)))
 (let (($x523 (and (=> (and (= (ControlFlow 1 230559) 230560) (and (= SIV@19 1) (= (ControlFlow 1 230560) 230561)) (and (= SIV@29 true) (= (ControlFlow 1 230561) 230565)) (= SIV@30 0) (and (= SIV@31 SIV@29) (= (ControlFlow 1 230565) 235834)) (= (ControlFlow 1 235834) (- 0 236350))) $x303) (=> (and (= (ControlFlow 1 230559) 230562) $x502) $x509))))
 (let (($x515 (and (boogie_si_record_ref main) (= SIV@19 (ite (< $u0 0) 1 0)))))
 (let (($x529 (=> (and (= (ControlFlow 1 235832) 230559) true (and (and true SIV@32) $x515)) $x523)))
 (let (($x535 (and (= (ControlFlow 1 0) 235839) (not (=> (and (and true (= (ControlFlow 1 235839) 235832)) (= (ControlFlow 1 235832) 230559) true (and (and true SIV@32) $x515)) $x523)))))
 (=> SIV@5 $x535))))))))))))))))))))))))))))))))))))))))
(assert
 (not SIV@32))
(assert
 (not SIV@33))
(check-sat)
