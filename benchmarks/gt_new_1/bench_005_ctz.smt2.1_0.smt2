; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () (_ BitVec 32))
(declare-fun $1 () (_ BitVec 32))
(declare-fun $0_ref () Int)
(declare-fun $1_ref () Int)
(declare-fun $1024_ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun my__builtin_ctz () Int)
(declare-fun main_ () Int)
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
(declare-fun llvm_dbg_value () Int)
(declare-fun __SMACK_static_init () Int)
(declare-fun SIV_3 () Bool)
(declare-fun SIV_2 () Bool)
(declare-fun SIV_4 () (_ BitVec 32))
(declare-fun SIV_1 () (_ BitVec 32))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV_5 () Bool)
(declare-fun SIV_0 () Bool)
(declare-fun SIV_25 () Bool)
(declare-fun SIV_28 () (_ BitVec 32))
(declare-fun SIV_27 () Bool)
(declare-fun SIV_24 () (_ BitVec 1))
(declare-fun SIV_23 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun my__builtin_ctz_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV_22 () (_ BitVec 1))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_30 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 (_ bv0 32)))
(assert
 (= $1 (_ bv1 32)))
(assert
 (= $0_ref 0))
(assert
 (= $1_ref 1))
(assert
 (= $1024_ref 1024))
(assert
 (let ((?x25 (- 0 21672)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_ctz (- 0 1032)))
(assert
 (= main_ (- 0 2064)))
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
 (= llvm_dbg_value (- 0 20640)))
(assert
 (let ((?x25 (- 0 21672)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x130 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 387997) (- 0 424091))))))
 (let (($x142 (=> (and (= (ControlFlow 0 424028) 387997) $x130) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 424031) (not (=> (and (and SIV_0 (= (ControlFlow 0 424031) 424028)) (= (ControlFlow 0 424028) 387997) $x130) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x166 (=> (and (not SIV_25) (= (ControlFlow 1 387978) (- 0 424403))) (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_25))))))
 (let (($x167 (and true true)))
 (let (($x174 (=> (and (and $x167 (and SIV_27 (= (ControlFlow 1 387977) 387978))) (and (not SIV_25) (= (ControlFlow 1 387978) (- 0 424403)))) (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_25))))))
 (let (($x183 (=> (and (and (not (= SIV_24 (_ bv1 1))) (= (ControlFlow 1 387976) 387977)) (and $x167 (and SIV_27 (= (ControlFlow 1 387977) 387978))) (and (not SIV_25) (= (ControlFlow 1 387978) (- 0 424403)))) (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_25))))))
 (let (($x192 (and (= SIV_24 (ite (bvsge SIV_23 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387975) 387976))))
 (let (($x205 (and (boogie_si_record_bv32 SIV_23) (= (ControlFlow 1 387974) 387975))))
 (let (($x206 (and (and (not (= SIV_22 (_ bv1 1))) (= SIV_23 (my__builtin_ctz_cb $u0))) $x205)))
 (let (($x217 (and (= SIV_22 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387973) 387974))))
 (let (($x219 (=> (and (and (and SIV_26 (boogie_si_record_ref main_)) $x217) $x206 $x192 (and (not (= SIV_24 (_ bv1 1))) (= (ControlFlow 1 387976) 387977)) (and $x167 (and SIV_27 (= (ControlFlow 1 387977) 387978))) (and (not SIV_25) (= (ControlFlow 1 387978) (- 0 424403)))) (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_25))))))
 (let (($x228 (=> (and (and true (= (ControlFlow 1 424150) 424147)) (= (ControlFlow 1 424147) 387973) $x167 (and (and SIV_26 (boogie_si_record_ref main_)) $x217) $x206 $x192 (and (not (= SIV_24 (_ bv1 1))) (= (ControlFlow 1 387976) 387977)) (and $x167 (and SIV_27 (= (ControlFlow 1 387977) 387978))) (and (not SIV_25) (= (ControlFlow 1 387978) (- 0 424403)))) (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_25))))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 424150) (not $x228))))))))))))))
(assert
 (let (($x167 (and true true)))
 (let (($x245 (and $x167 (and SIV_31 (= (ControlFlow 2 387684) (- 0 424515))))))
 (let (($x252 (=> (and (= (ControlFlow 2 424476) 387684) true (and true SIV_30) $x245) false)))
 (let (($x258 (and (= (ControlFlow 2 0) 424478) (not (=> (and (and true (= (ControlFlow 2 424478) 424476)) (= (ControlFlow 2 424476) 387684) true (and true SIV_30) $x245) false)))))
 (=> SIV_26 $x258))))))
(assert
 (let (($x272 (=> (and (not false) (= (ControlFlow 3 387756) (- 0 424616))) (= SIV_25 (not false)))))
 (let (($x284 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 387754) 387755)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 387755) 387756)) (and (not false) (= (ControlFlow 3 387756) (- 0 424616)))) (= SIV_25 (not false)))))
 (let (($x292 (=> (and (and true (= (ControlFlow 3 424546) 424543)) (= (ControlFlow 3 424543) 387754) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 387754) 387755)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 387755) 387756)) (and (not false) (= (ControlFlow 3 387756) (- 0 424616)))) (= SIV_25 (not false)))))
 (=> SIV_27 (and (= (ControlFlow 3 0) 424546) (not $x292)))))))
(assert
 (let (($x309 (=> (and (= (ControlFlow 4 424632) 387632) (= (ControlFlow 4 387632) (- 0 424639))) false)))
 (let (($x315 (and (= (ControlFlow 4 0) 424634) (not (=> (and (and true (= (ControlFlow 4 424634) 424632)) (= (ControlFlow 4 424632) 387632) (= (ControlFlow 4 387632) (- 0 424639))) false)))))
 (=> SIV_30 $x315))))
(assert
 (let (($x330 (=> (and (= (ControlFlow 5 424647) 387672) (= (ControlFlow 5 387672) (- 0 424678))) false)))
 (let (($x336 (and (= (ControlFlow 5 0) 424649) (not (=> (and (and true (= (ControlFlow 5 424649) 424647)) (= (ControlFlow 5 424647) 387672) (= (ControlFlow 5 387672) (- 0 424678))) false)))))
 (=> SIV_31 $x336))))
(check-sat)
