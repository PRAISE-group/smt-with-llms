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
(declare-fun my__builtin_clz () Int)
(declare-fun my__builtin_popcount () Int)
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
(declare-fun SIV_23 () Bool)
(declare-fun SIV_27 () (_ BitVec 32))
(declare-fun SIV_26 () Bool)
(declare-fun SIV_22 () (_ BitVec 1))
(declare-fun SIV_21 () (_ BitVec 32))
(declare-fun SIV_20 () (_ BitVec 32))
(declare-fun SIV_19 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun SIV_25 () Bool)
(declare-fun my__builtin_clz_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV_18 () (_ BitVec 1))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_24 () Bool)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_42 () (_ BitVec 32))
(declare-fun SIV_44 () (_ BitVec 1))
(declare-fun SIV_43 () (_ BitVec 32))
(declare-fun SIV_41 () (_ BitVec 32))
(declare-fun SIV_40 () (_ BitVec 1))
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
 (= my__builtin_clz (- 0 1032)))
(assert
 (= my__builtin_popcount (- 0 2064)))
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
 (let (($x134 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 390322) (- 0 426851))))))
 (let (($x146 (=> (and (= (ControlFlow 0 426788) 390322) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 426791) (not (=> (and (and SIV_0 (= (ControlFlow 0 426791) 426788)) (= (ControlFlow 0 426788) 390322) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x170 (=> (and (not SIV_23) (= (ControlFlow 1 390303) (- 0 427249))) (not (and (= SIV_4 SIV_27) (= SIV_3 SIV_23))))))
 (let (($x175 (and true true)))
 (let (($x182 (=> (and (and $x175 (and SIV_26 (= (ControlFlow 1 390302) 390303))) (and (not SIV_23) (= (ControlFlow 1 390303) (- 0 427249)))) (not (and (= SIV_4 SIV_27) (= SIV_3 SIV_23))))))
 (let (($x197 (and (= SIV_22 (ite (bvsle SIV_20 SIV_21) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390301) 390302))))
 (let (($x199 (=> (and (= SIV_21 (bvsub (_ bv32 32) SIV_19)) $x197 (not (= SIV_22 (_ bv1 1))) (and $x175 (and SIV_26 (= (ControlFlow 1 390302) 390303))) (and (not SIV_23) (= (ControlFlow 1 390303) (- 0 427249)))) (not (and (= SIV_4 SIV_27) (= SIV_3 SIV_23))))))
 (let (($x216 (and (boogie_si_record_bv32 SIV_20) (= (ControlFlow 1 390300) 390301))))
 (let (($x209 (and (and (not (= SIV_18 (_ bv1 1))) (= SIV_19 (my__builtin_clz_cb $u0))) (and (boogie_si_record_bv32 SIV_19) true))))
 (let (($x229 (and (= SIV_18 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390299) 390300))))
 (let (($x231 (=> (and (and (and SIV_24 (boogie_si_record_ref main_)) $x229) (and $x209 (and (and true SIV_25) $x216)) (= SIV_21 (bvsub (_ bv32 32) SIV_19)) $x197 (not (= SIV_22 (_ bv1 1))) (and $x175 (and SIV_26 (= (ControlFlow 1 390302) 390303))) (and (not SIV_23) (= (ControlFlow 1 390303) (- 0 427249)))) (not (and (= SIV_4 SIV_27) (= SIV_3 SIV_23))))))
 (let (($x240 (=> (and (and true (= (ControlFlow 1 426910) 426907)) (= (ControlFlow 1 426907) 390299) $x175 (and (and SIV_24 (boogie_si_record_ref main_)) $x229) (and $x209 (and (and true SIV_25) $x216)) (= SIV_21 (bvsub (_ bv32 32) SIV_19)) $x197 (not (= SIV_22 (_ bv1 1))) (and $x175 (and SIV_26 (= (ControlFlow 1 390302) 390303))) (and (not SIV_23) (= (ControlFlow 1 390303) (- 0 427249)))) (not (and (= SIV_4 SIV_27) (= SIV_3 SIV_23))))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 426910) (not $x240))))))))))))))
(assert
 (let (($x175 (and true true)))
 (let (($x257 (and $x175 (and SIV_30 (= (ControlFlow 2 389694) (- 0 427364))))))
 (let (($x264 (=> (and (= (ControlFlow 2 427325) 389694) true (and true SIV_29) $x257) false)))
 (let (($x270 (and (= (ControlFlow 2 0) 427327) (not (=> (and (and true (= (ControlFlow 2 427327) 427325)) (= (ControlFlow 2 427325) 389694) true (and true SIV_29) $x257) false)))))
 (=> SIV_24 $x270))))))
(assert
 (let (($x284 (and (not (= SIV_44 (_ bv1 1))) (= (ControlFlow 3 389992) (- 0 427696)))))
 (let (($x297 (and (= SIV_44 (ite (not (= SIV_43 (_ bv0 32))) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 389991) 389992))))
 (let (($x315 (and (boogie_si_record_bv32 SIV_43) (= (ControlFlow 3 389990) 389991))))
 (let (($x316 (and (and (boogie_si_record_bv32 SIV_42) (= SIV_43 (bvlshr $u0 (_ bv1 32)))) $x315)))
 (let (($x306 (and (= SIV_41 (bvand $u0 (_ bv1 32))) (= SIV_42 (bvadd (_ bv0 32) SIV_41)))))
 (let (($x319 (=> (and (= SIV_40 (_ bv1 1)) $x306 $x316 $x297 $x284) (not (= SIV_20 SIV_42)))))
 (let (($x326 (and (= SIV_40 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 389989) 389990))))
 (let (($x333 (=> (and (and (boogie_si_record_bv32 $u0) (= (ControlFlow 3 389988) 389989)) $x326 (= SIV_40 (_ bv1 1)) $x306 $x316 $x297 $x284) (not (= SIV_20 SIV_42)))))
 (let (($x341 (=> (and (and true (= (ControlFlow 3 427396) 427392)) (= (ControlFlow 3 427392) 389988) (and (boogie_si_record_bv32 $u0) (= (ControlFlow 3 389988) 389989)) $x326 (= SIV_40 (_ bv1 1)) $x306 $x316 $x297 $x284) (not (= SIV_20 SIV_42)))))
 (=> SIV_25 (and (= (ControlFlow 3 0) 427396) (not $x341)))))))))))))
(assert
 (let (($x357 (=> (and (not false) (= (ControlFlow 4 390064) (- 0 427814))) (= SIV_23 (not false)))))
 (let (($x369 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 390062) 390063)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 390063) 390064)) (and (not false) (= (ControlFlow 4 390064) (- 0 427814)))) (= SIV_23 (not false)))))
 (let (($x377 (=> (and (and true (= (ControlFlow 4 427744) 427741)) (= (ControlFlow 4 427741) 390062) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 390062) 390063)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 390063) 390064)) (and (not false) (= (ControlFlow 4 390064) (- 0 427814)))) (= SIV_23 (not false)))))
 (=> SIV_26 (and (= (ControlFlow 4 0) 427744) (not $x377)))))))
(assert
 (let (($x394 (=> (and (= (ControlFlow 5 427830) 389642) (= (ControlFlow 5 389642) (- 0 427837))) false)))
 (let (($x400 (and (= (ControlFlow 5 0) 427832) (not (=> (and (and true (= (ControlFlow 5 427832) 427830)) (= (ControlFlow 5 427830) 389642) (= (ControlFlow 5 389642) (- 0 427837))) false)))))
 (=> SIV_29 $x400))))
(assert
 (let (($x415 (=> (and (= (ControlFlow 6 427845) 389682) (= (ControlFlow 6 389682) (- 0 427876))) false)))
 (let (($x421 (and (= (ControlFlow 6 0) 427847) (not (=> (and (and true (= (ControlFlow 6 427847) 427845)) (= (ControlFlow 6 427845) 389682) (= (ControlFlow 6 389682) (- 0 427876))) false)))))
 (=> SIV_30 $x421))))
(check-sat)
