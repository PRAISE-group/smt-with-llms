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
(declare-fun f91 () Int)
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
(declare-fun SIV@20 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@15 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun f91@@0 (Int) Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@25 () Bool)
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
 (= f91 (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 283592) (- 0 308229))))))
 (let (($x168 (=> (and (= (ControlFlow 0 308166) 283592) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 308169) (not (=> (and (and SIV@0 (= (ControlFlow 0 308169) 308166)) (= (ControlFlow 0 308166) 283592) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@20) (= (ControlFlow 1 283573) (- 0 308606))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@22 (= (ControlFlow 1 283572) 283573))) (and (not SIV@20) (= (ControlFlow 1 283573) (- 0 308606)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x212 (=> (and (and (not (= SIV@19 1)) (= (ControlFlow 1 283570) 283571)) (= (ControlFlow 1 283571) 283572) (and $x193 (and SIV@22 (= (ControlFlow 1 283572) 283573))) (and (not SIV@20) (= (ControlFlow 1 283573) (- 0 308606)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x228 (and (= SIV@19 (ite (= SIV@15 SIV@18) 1 0)) (= (ControlFlow 1 283569) 283570))))
 (let (($x230 (=> (and (and (and (= SIV@17 1) (= SIV@18 (- $u0 10))) $x228) (and (not (= SIV@19 1)) (= (ControlFlow 1 283570) 283571)) (= (ControlFlow 1 283571) 283572) (and $x193 (and SIV@22 (= (ControlFlow 1 283572) 283573))) (and (not SIV@20) (= (ControlFlow 1 283573) (- 0 308606)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x241 (and (= SIV@17 (ite (> $u0 101) 1 0)) (= (ControlFlow 1 283568) 283569))))
 (let (($x259 (and (= SIV@16 (ite (= SIV@15 91) 1 0)) (= (ControlFlow 1 283567) 283568))))
 (let (($x260 (and (and (= SIV@15 (f91@@0 $u0)) (boogie_si_record_i32 SIV@15)) $x259)))
 (let (($x262 (=> (and (and (and $x193 (and SIV@21 (boogie_si_record_ref main))) $x260) (not (= SIV@16 1)) $x241 (and (and (= SIV@17 1) (= SIV@18 (- $u0 10))) $x228) (and (not (= SIV@19 1)) (= (ControlFlow 1 283570) 283571)) (= (ControlFlow 1 283571) 283572) (and $x193 (and SIV@22 (= (ControlFlow 1 283572) 283573))) (and (not SIV@20) (= (ControlFlow 1 283573) (- 0 308606)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x270 (=> (and (and true (= (ControlFlow 1 308288) 308285)) (= (ControlFlow 1 308285) 283567) (and (and $x193 (and SIV@21 (boogie_si_record_ref main))) $x260) (not (= SIV@16 1)) $x241 (and (and (= SIV@17 1) (= SIV@18 (- $u0 10))) $x228) (and (not (= SIV@19 1)) (= (ControlFlow 1 283570) 283571)) (= (ControlFlow 1 283571) 283572) (and $x193 (and SIV@22 (= (ControlFlow 1 283572) 283573))) (and (not SIV@20) (= (ControlFlow 1 283573) (- 0 308606)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 308288) (not $x270)))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x287 (and $x193 (and SIV@26 (= (ControlFlow 2 283239) (- 0 308708))))))
 (let (($x294 (=> (and (= (ControlFlow 2 308669) 283239) true (and true SIV@25) $x287) false)))
 (let (($x300 (and (= (ControlFlow 2 0) 308671) (not (=> (and (and true (= (ControlFlow 2 308671) 308669)) (= (ControlFlow 2 308669) 283239) true (and true SIV@25) $x287) false)))))
 (=> SIV@21 $x300))))))
(assert
 (let (($x314 (=> (and (not false) (= (ControlFlow 3 283311) (- 0 308809))) (= SIV@20 (not false)))))
 (let (($x326 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 283309) 283310)) (and (= 0 $0) (= (ControlFlow 3 283310) 283311)) (and (not false) (= (ControlFlow 3 283311) (- 0 308809)))) (= SIV@20 (not false)))))
 (let (($x334 (=> (and (and true (= (ControlFlow 3 308739) 308736)) (= (ControlFlow 3 308736) 283309) (and (boogie_si_record_i32 0) (= (ControlFlow 3 283309) 283310)) (and (= 0 $0) (= (ControlFlow 3 283310) 283311)) (and (not false) (= (ControlFlow 3 283311) (- 0 308809)))) (= SIV@20 (not false)))))
 (=> SIV@22 (and (= (ControlFlow 3 0) 308739) (not $x334)))))))
(assert
 (let (($x351 (=> (and (= (ControlFlow 4 308825) 283187) (= (ControlFlow 4 283187) (- 0 308832))) false)))
 (let (($x357 (and (= (ControlFlow 4 0) 308827) (not (=> (and (and true (= (ControlFlow 4 308827) 308825)) (= (ControlFlow 4 308825) 283187) (= (ControlFlow 4 283187) (- 0 308832))) false)))))
 (=> SIV@25 $x357))))
(assert
 (let (($x372 (=> (and (= (ControlFlow 5 308840) 283227) (= (ControlFlow 5 283227) (- 0 308871))) false)))
 (let (($x378 (and (= (ControlFlow 5 0) 308842) (not (=> (and (and true (= (ControlFlow 5 308842) 308840)) (= (ControlFlow 5 308840) 283227) (= (ControlFlow 5 283227) (- 0 308871))) false)))))
 (=> SIV@26 $x378))))
(check-sat)
