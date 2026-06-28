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
(declare-fun my__builtin_ffs () Int)
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
(declare-fun SIV_36 () Bool)
(declare-fun SIV_35 () (_ BitVec 32))
(declare-fun SIV_34 () Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_28 () (_ BitVec 1))
(declare-fun SIV_33 () Bool)
(declare-fun SIV_32 () Bool)
(declare-fun SIV_41 () (_ BitVec 32))
(declare-fun SIV_40 () Bool)
(declare-fun SIV_31 () (_ BitVec 1))
(declare-fun SIV_30 () (_ BitVec 32))
(declare-fun SIV_20 () (_ BitVec 32))
(declare-fun SIV_29 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun SIV_39 () Bool)
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV_26 () Bool)
(declare-fun SIV_38 () Bool)
(declare-fun SIV_25 () (_ BitVec 1))
(declare-fun SIV_24 () (_ BitVec 32))
(declare-fun SIV_22 () (_ BitVec 32))
(declare-fun SIV_23 () (_ BitVec 1))
(declare-fun SIV_21 () (_ BitVec 1))
(declare-fun my__builtin_ffs_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_37 () Bool)
(declare-fun SIV_44 () Bool)
(declare-fun SIV_43 () Bool)
(declare-fun SIV_49 () Bool)
(declare-fun SIV_48 () Bool)
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
 (let ((?x25 (- 0 22704)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_ffs (- 0 1032)))
(assert
 (= my__builtin_ctz (- 0 2064)))
(assert
 (= main_ (- 0 3096)))
(assert
 (= __SMACK_code (- 0 4128)))
(assert
 (= __VERIFIER_assume (- 0 5160)))
(assert
 (= __SMACK_dummy (- 0 6192)))
(assert
 (= __VERIFIER_assert (- 0 7224)))
(assert
 (= __SMACK_and32 (- 0 8256)))
(assert
 (= __SMACK_and64 (- 0 9288)))
(assert
 (= __SMACK_and16 (- 0 10320)))
(assert
 (= __SMACK_and8 (- 0 11352)))
(assert
 (= __SMACK_or32 (- 0 12384)))
(assert
 (= __SMACK_or64 (- 0 13416)))
(assert
 (= __SMACK_or16 (- 0 14448)))
(assert
 (= __SMACK_or8 (- 0 15480)))
(assert
 (= __SMACK_check_overflow (- 0 16512)))
(assert
 (= __SMACK_loop_exit (- 0 17544)))
(assert
 (= __SMACK_decls (- 0 18576)))
(assert
 (= __SMACK_top_decl (- 0 19608)))
(assert
 (= __SMACK_init_func_memory_model (- 0 20640)))
(assert
 (= llvm_dbg_value (- 0 21672)))
(assert
 (let ((?x25 (- 0 22704)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x134 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 307647) (- 0 315092))))))
 (let (($x146 (=> (and (= (ControlFlow 0 315035) 307647) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 315038) (not (=> (and (and SIV_0 (= (ControlFlow 0 315038) 315035)) (= (ControlFlow 0 315035) 307647) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x285 (not (and (= SIV_4 SIV_35) (= SIV_3 SIV_36)))))
 (let (($x286 (=> (= (ControlFlow 1 315150) (- 0 315679)) $x285)))
 (let (($x306 (=> (and (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x307 (=> (and (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x389 (=> (and (and (= SIV_34 SIV_27) (= (ControlFlow 1 307114) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x401 (=> (and (= (ControlFlow 1 307112) 307114) (not (= SIV_28 (_ bv1 1))) (and (= SIV_34 SIV_27) (= (ControlFlow 1 307114) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x314 (=> (and (and (= SIV_34 SIV_33) (= (ControlFlow 1 307123) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x318 (=> (and (= (ControlFlow 1 307118) 307123) (and (= SIV_34 SIV_33) (= (ControlFlow 1 307123) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x324 (=> (and (and (= SIV_33 SIV_32) (= (ControlFlow 1 307122) 307118)) (= (ControlFlow 1 307118) 307123) (and (= SIV_34 SIV_33) (= (ControlFlow 1 307123) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x343 (=> (and (= (ControlFlow 1 307119) 307121) (and SIV_32 (= (ControlFlow 1 307121) 307122)) (and (= SIV_33 SIV_32) (= (ControlFlow 1 307122) 307118)) (= (ControlFlow 1 307118) 307123) (and (= SIV_34 SIV_33) (= (ControlFlow 1 307123) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x297 (and (and (not SIV_32) (= SIV_35 SIV_41)) (and (= SIV_36 SIV_32) (= (ControlFlow 1 307120) 315150)))))
 (let (($x345 (=> (and (and (not (= SIV_31 (_ bv1 1))) SIV_27) (and true SIV_40)) (and (=> (and (= (ControlFlow 1 307119) 307120) $x297 (= (ControlFlow 1 315150) (- 0 315679))) $x285) $x343))))
 (let (($x351 (=> (and (and (= SIV_33 SIV_27) (= (ControlFlow 1 307117) 307118)) (= (ControlFlow 1 307118) 307123) (and (= SIV_34 SIV_33) (= (ControlFlow 1 307123) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285)))
 (let (($x331 (= SIV_31 (_ bv1 1))))
 (let (($x368 (and (=> (and (= (ControlFlow 1 307116) 307117) $x331 (and (= SIV_33 SIV_27) (= (ControlFlow 1 307117) 307118)) (= (ControlFlow 1 307118) 307123) (and (= SIV_34 SIV_33) (= (ControlFlow 1 307123) 307115)) (= SIV_35 (_ bv0 32)) (and (= SIV_36 SIV_34) (= (ControlFlow 1 307115) 315150)) (= (ControlFlow 1 315150) (- 0 315679))) $x285) (=> (and (= (ControlFlow 1 307116) 307119) (and (and (not $x331) SIV_27) (and true SIV_40))) (and (=> (and (= (ControlFlow 1 307119) 307120) $x297 (= (ControlFlow 1 315150) (- 0 315679))) $x285) $x343)))))
 (let (($x361 (and (= SIV_30 (bvadd SIV_29 (_ bv1 32))) (= SIV_31 (ite (= SIV_20 SIV_30) (_ bv1 1) (_ bv0 1))))))
 (let (($x379 (and (boogie_si_record_bv32 SIV_29) (= (ControlFlow 1 307113) 307116))))
 (let (($x382 (=> (and (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368)))
 (let (($x403 (=> (= SIV_28 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1))) (and (=> (and (= (ControlFlow 1 307112) 307113) (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368) $x401))))
 (let (($x407 (=> (and (= (ControlFlow 1 307107) 307112) (= SIV_28 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1)))) (and (=> (and (= (ControlFlow 1 307112) 307113) (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368) $x401))))
 (let (($x414 (=> (and (and (= SIV_27 SIV_26) (= (ControlFlow 1 307111) 307107)) (= (ControlFlow 1 307107) 307112) (= SIV_28 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1)))) (and (=> (and (= (ControlFlow 1 307112) 307113) (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368) $x401))))
 (let (($x448 (=> (and (= (ControlFlow 1 307108) 307110) (and SIV_26 (= (ControlFlow 1 307110) 307111)) (and (= SIV_27 SIV_26) (= (ControlFlow 1 307111) 307107)) (= (ControlFlow 1 307107) 307112) (= SIV_28 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1)))) (and (=> (and (= (ControlFlow 1 307112) 307113) (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368) $x401))))
 (let (($x436 (and (and (not SIV_26) (= SIV_35 SIV_41)) (and (= SIV_36 SIV_26) (= (ControlFlow 1 307109) 315150)))))
 (let (($x450 (=> (and (and (not (= SIV_25 (_ bv1 1))) true) (and true SIV_38)) (and (=> (and (= (ControlFlow 1 307108) 307109) $x436 (= (ControlFlow 1 315150) (- 0 315679))) $x285) $x448))))
 (let (($x427 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 307106) 307107)) (= (ControlFlow 1 307107) 307112) (= SIV_28 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1)))) (and (=> (and (= (ControlFlow 1 307112) 307113) (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368) $x401))))
 (let (($x421 (= SIV_25 (_ bv1 1))))
 (let (($x476 (and (=> (and (= (ControlFlow 1 307105) 307106) $x421 (and (= SIV_27 true) (= (ControlFlow 1 307106) 307107)) (= (ControlFlow 1 307107) 307112) (= SIV_28 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1)))) (and (=> (and (= (ControlFlow 1 307112) 307113) (and (= SIV_28 (_ bv1 1)) SIV_27) (and (and true SIV_39) $x379) $x361) $x368) $x401)) (=> (and (= (ControlFlow 1 307105) 307108) (and (and (not $x421) true) (and true SIV_38))) (and (=> (and (= (ControlFlow 1 307108) 307109) $x436 (= (ControlFlow 1 315150) (- 0 315679))) $x285) $x448)))))
 (let (($x468 (and (= SIV_24 ((_ zero_extend 31) SIV_23)) (= SIV_25 (ite (= SIV_22 SIV_24) (_ bv1 1) (_ bv0 1))))))
 (let (($x461 (and (= SIV_22 ((_ zero_extend 31) SIV_21)) (= SIV_23 (ite (= SIV_20 (_ bv0 32)) (_ bv1 1) (_ bv0 1))))))
 (let (($x478 (=> (and (= SIV_21 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (and $x461 $x468)) $x476)))
 (let (($x489 (and (boogie_si_record_bv32 SIV_20) (= (ControlFlow 1 307104) 307105))))
 (let (($x484 (and (boogie_si_record_ref main_) (= SIV_20 (my__builtin_ffs_cb $u0)))))
 (let (($x497 (=> (and (= (ControlFlow 1 315148) 307104) true (and true SIV_37) (and $x484 $x489) (= SIV_21 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (and $x461 $x468)) $x476)))
 (let (($x503 (and (= (ControlFlow 1 0) 315156) (not (=> (and (and true (= (ControlFlow 1 315156) 315148)) (= (ControlFlow 1 315148) 307104) true (and true SIV_37) (and $x484 $x489) (= SIV_21 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (and $x461 $x468)) $x476)))))
 (=> SIV_5 $x503))))))))))))))))))))))))))))))))))))
(assert
 (let (($x602 (and (and true true) (and SIV_44 (= (ControlFlow 2 307623) (- 0 315822))))))
 (let (($x609 (=> (and (= (ControlFlow 2 315787) 307623) true (and true SIV_43) $x602) false)))
 (let (($x615 (and (= (ControlFlow 2 0) 315789) (not (=> (and (and true (= (ControlFlow 2 315789) 315787)) (= (ControlFlow 2 315787) 307623) true (and true SIV_43) $x602) false)))))
 (=> SIV_37 $x615)))))
(assert
 (let (($x627 (not SIV_49)))
 (let (($x628 (= SIV_26 $x627)))
 (let (($x629 (=> (= (ControlFlow 3 315852) (- 0 315937)) $x628)))
 (let (($x654 (=> (and (and (= SIV_49 SIV_48) (= (ControlFlow 3 307266) 315852)) (= (ControlFlow 3 315852) (- 0 315937))) $x628)))
 (let (($x661 (=> (and (and (= SIV_48 true) (= (ControlFlow 3 307265) 307266)) (and (= SIV_49 SIV_48) (= (ControlFlow 3 307266) 315852)) (= (ControlFlow 3 315852) (- 0 315937))) $x628)))
 (let (($x669 (=> (and (= (ControlFlow 3 307260) 307265) (not (= (_ bv0 32) $0)) (and (= SIV_48 true) (= (ControlFlow 3 307265) 307266)) (and (= SIV_49 SIV_48) (= (ControlFlow 3 307266) 315852)) (= (ControlFlow 3 315852) (- 0 315937))) $x628)))
 (let (($x636 (=> (and (and (= SIV_49 false) (= (ControlFlow 3 307262) 315852)) (= (ControlFlow 3 315852) (- 0 315937))) $x628)))
 (let (($x646 (and (=> (and (= (ControlFlow 3 307261) 307262) (not false) (and (= SIV_49 false) (= (ControlFlow 3 307262) 315852)) (= (ControlFlow 3 315852) (- 0 315937))) $x628) (=> (= (ControlFlow 3 307261) 307263) true))))
 (let (($x638 (= (_ bv0 32) $0)))
 (let (($x671 (=> (boogie_si_record_bv32 (_ bv0 32)) (and (=> (and (= (ControlFlow 3 307260) 307261) $x638) $x646) $x669))))
 (let (($x679 (=> (and (and true (= (ControlFlow 3 315857) 315850)) (= (ControlFlow 3 315850) 307260) (boogie_si_record_bv32 (_ bv0 32))) (and (=> (and (= (ControlFlow 3 307260) 307261) $x638) $x646) $x669))))
 (=> SIV_38 (and (= (ControlFlow 3 0) 315857) (not $x679)))))))))))))))
(assert
 (let (($x735 (=> (and (= (ControlFlow 4 315957) 307588) (= (ControlFlow 4 307588) (- 0 315964))) false)))
 (let (($x741 (and (= (ControlFlow 4 0) 315959) (not (=> (and (and true (= (ControlFlow 4 315959) 315957)) (= (ControlFlow 4 315957) 307588) (= (ControlFlow 4 307588) (- 0 315964))) false)))))
 (=> SIV_43 $x741))))
(assert
 (let (($x756 (=> (and (= (ControlFlow 5 315972) 307552) (= (ControlFlow 5 307552) (- 0 315991))) false)))
 (let (($x762 (and (= (ControlFlow 5 0) 315974) (not (=> (and (and true (= (ControlFlow 5 315974) 315972)) (= (ControlFlow 5 315972) 307552) (= (ControlFlow 5 307552) (- 0 315991))) false)))))
 (=> SIV_44 $x762))))
(assert
 (not SIV_39))
(assert
 (not SIV_40))
(check-sat)
