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
(declare-fun hanoi () Int)
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
(declare-fun SIV@18 () Bool)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@17 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@16 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun hanoi@@0 (Int) Int)
(declare-fun SIV@15 () Int)
(declare-fun SIV@14 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@19 () Bool)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@23 () Bool)
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
 (= hanoi (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 283165) (- 0 307763))))))
 (let (($x168 (=> (and (= (ControlFlow 0 307700) 283165) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 307703) (not (=> (and (and SIV@0 (= (ControlFlow 0 307703) 307700)) (= (ControlFlow 0 307700) 283165) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@18) (= (ControlFlow 1 283146) (- 0 308112))) (not (and (= SIV@4 SIV@21) (= SIV@3 SIV@18))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@20 (= (ControlFlow 1 283145) 283146))) (and (not SIV@18) (= (ControlFlow 1 283146) (- 0 308112)))) (not (and (= SIV@4 SIV@21) (= SIV@3 SIV@18))))))
 (let (($x208 (=> (and (and (not (= SIV@17 1)) (= (ControlFlow 1 283144) 283145)) (and $x193 (and SIV@20 (= (ControlFlow 1 283145) 283146))) (and (not SIV@18) (= (ControlFlow 1 283146) (- 0 308112)))) (not (and (= SIV@4 SIV@21) (= SIV@3 SIV@18))))))
 (let (($x224 (and (= SIV@17 (ite (>= SIV@16 $u0) 1 0)) (= (ControlFlow 1 283143) 283144))))
 (let (($x225 (and (and (= SIV@16 (hanoi@@0 $u0)) (boogie_si_record_i32 SIV@16)) $x224)))
 (let (($x238 (and (= SIV@15 (ite (> $u0 31) 1 0)) (= (ControlFlow 1 283142) 283143))))
 (let (($x240 (=> (and (not (= SIV@14 1)) $x238 (not (= SIV@15 1)) $x225 (and (not (= SIV@17 1)) (= (ControlFlow 1 283144) 283145)) (and $x193 (and SIV@20 (= (ControlFlow 1 283145) 283146))) (and (not SIV@18) (= (ControlFlow 1 283146) (- 0 308112)))) (not (and (= SIV@4 SIV@21) (= SIV@3 SIV@18))))))
 (let (($x250 (and (= SIV@14 (ite (< $u0 1) 1 0)) (= (ControlFlow 1 283141) 283142))))
 (let (($x253 (=> (and $x193 (and (and SIV@19 (boogie_si_record_ref main)) $x250) (not (= SIV@14 1)) $x238 (not (= SIV@15 1)) $x225 (and (not (= SIV@17 1)) (= (ControlFlow 1 283144) 283145)) (and $x193 (and SIV@20 (= (ControlFlow 1 283145) 283146))) (and (not SIV@18) (= (ControlFlow 1 283146) (- 0 308112)))) (not (and (= SIV@4 SIV@21) (= SIV@3 SIV@18))))))
 (let (($x261 (=> (and (and true (= (ControlFlow 1 307822) 307819)) (= (ControlFlow 1 307819) 283141) $x193 (and (and SIV@19 (boogie_si_record_ref main)) $x250) (not (= SIV@14 1)) $x238 (not (= SIV@15 1)) $x225 (and (not (= SIV@17 1)) (= (ControlFlow 1 283144) 283145)) (and $x193 (and SIV@20 (= (ControlFlow 1 283145) 283146))) (and (not SIV@18) (= (ControlFlow 1 283146) (- 0 308112)))) (not (and (= SIV@4 SIV@21) (= SIV@3 SIV@18))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 307822) (not $x261)))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x278 (and $x193 (and SIV@24 (= (ControlFlow 2 282846) (- 0 308210))))))
 (let (($x285 (=> (and (= (ControlFlow 2 308171) 282846) true (and true SIV@23) $x278) false)))
 (let (($x291 (and (= (ControlFlow 2 0) 308173) (not (=> (and (and true (= (ControlFlow 2 308173) 308171)) (= (ControlFlow 2 308171) 282846) true (and true SIV@23) $x278) false)))))
 (=> SIV@19 $x291))))))
(assert
 (let (($x305 (=> (and (not false) (= (ControlFlow 3 282918) (- 0 308311))) (= SIV@18 (not false)))))
 (let (($x317 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 282916) 282917)) (and (= 0 $0) (= (ControlFlow 3 282917) 282918)) (and (not false) (= (ControlFlow 3 282918) (- 0 308311)))) (= SIV@18 (not false)))))
 (let (($x325 (=> (and (and true (= (ControlFlow 3 308241) 308238)) (= (ControlFlow 3 308238) 282916) (and (boogie_si_record_i32 0) (= (ControlFlow 3 282916) 282917)) (and (= 0 $0) (= (ControlFlow 3 282917) 282918)) (and (not false) (= (ControlFlow 3 282918) (- 0 308311)))) (= SIV@18 (not false)))))
 (=> SIV@20 (and (= (ControlFlow 3 0) 308241) (not $x325)))))))
(assert
 (let (($x342 (=> (and (= (ControlFlow 4 308327) 282794) (= (ControlFlow 4 282794) (- 0 308334))) false)))
 (let (($x348 (and (= (ControlFlow 4 0) 308329) (not (=> (and (and true (= (ControlFlow 4 308329) 308327)) (= (ControlFlow 4 308327) 282794) (= (ControlFlow 4 282794) (- 0 308334))) false)))))
 (=> SIV@23 $x348))))
(assert
 (let (($x363 (=> (and (= (ControlFlow 5 308342) 282834) (= (ControlFlow 5 282834) (- 0 308373))) false)))
 (let (($x369 (and (= (ControlFlow 5 0) 308344) (not (=> (and (and true (= (ControlFlow 5 308344) 308342)) (= (ControlFlow 5 308342) 282834) (= (ControlFlow 5 282834) (- 0 308373))) false)))))
 (=> SIV@24 $x369))))
(check-sat)
