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
(declare-fun my__builtin_popcount () Int)
(declare-fun my__builtin_parity () Int)
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
(declare-fun SIV_29 () (_ BitVec 32))
(declare-fun SIV_28 () Bool)
(declare-fun SIV_24 () (_ BitVec 1))
(declare-fun SIV_23 () (_ BitVec 32))
(declare-fun SIV_22 () (_ BitVec 32))
(declare-fun SIV_21 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun SIV_27 () Bool)
(declare-fun my__builtin_popcount_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_32 () Bool)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_42 () (_ BitVec 1))
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
 (= my__builtin_popcount (- 0 1032)))
(assert
 (= my__builtin_parity (- 0 2064)))
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
 (let (($x134 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 390183) (- 0 426465))))))
 (let (($x146 (=> (and (= (ControlFlow 0 426402) 390183) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 426405) (not (=> (and (and SIV_0 (= (ControlFlow 0 426405) 426402)) (= (ControlFlow 0 426402) 390183) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x170 (=> (and (not SIV_25) (= (ControlFlow 1 390164) (- 0 426818))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_25))))))
 (let (($x175 (and true true)))
 (let (($x182 (=> (and (and $x175 (and SIV_28 (= (ControlFlow 1 390163) 390164))) (and (not SIV_25) (= (ControlFlow 1 390164) (- 0 426818)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_25))))))
 (let (($x196 (and (= SIV_24 (ite (= SIV_22 SIV_23) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390162) 390163))))
 (let (($x198 (=> (and (= SIV_23 (bvand SIV_21 (_ bv1 32))) $x196 (not (= SIV_24 (_ bv1 1))) (and $x175 (and SIV_28 (= (ControlFlow 1 390163) 390164))) (and (not SIV_25) (= (ControlFlow 1 390164) (- 0 426818)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_25))))))
 (let (($x215 (and (boogie_si_record_bv32 SIV_22) (= (ControlFlow 1 390161) 390162))))
 (let (($x205 (and (boogie_si_record_ref main_) (= SIV_21 (my__builtin_popcount_cb $u0)))))
 (let (($x217 (and (and $x205 (and (boogie_si_record_bv32 SIV_21) true)) (and (and true SIV_27) $x215))))
 (let (($x224 (=> (and (= (ControlFlow 1 426521) 390161) true (and true SIV_26) $x217 (= SIV_23 (bvand SIV_21 (_ bv1 32))) $x196 (not (= SIV_24 (_ bv1 1))) (and $x175 (and SIV_28 (= (ControlFlow 1 390163) 390164))) (and (not SIV_25) (= (ControlFlow 1 390164) (- 0 426818)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_25))))))
 (let (($x230 (and (= (ControlFlow 1 0) 426524) (not (=> (and (and true (= (ControlFlow 1 426524) 426521)) (= (ControlFlow 1 426521) 390161) true (and true SIV_26) $x217 (= SIV_23 (bvand SIV_21 (_ bv1 32))) $x196 (not (= SIV_24 (_ bv1 1))) (and $x175 (and SIV_28 (= (ControlFlow 1 390163) 390164))) (and (not SIV_25) (= (ControlFlow 1 390164) (- 0 426818)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_25))))))))
 (=> SIV_5 $x230))))))))))))
(assert
 (let (($x175 (and true true)))
 (let (($x245 (and $x175 (and SIV_32 (= (ControlFlow 2 389737) (- 0 426937))))))
 (let (($x252 (=> (and (= (ControlFlow 2 426898) 389737) true (and true SIV_31) $x245) false)))
 (let (($x258 (and (= (ControlFlow 2 0) 426900) (not (=> (and (and true (= (ControlFlow 2 426900) 426898)) (= (ControlFlow 2 426898) 389737) true (and true SIV_31) $x245) false)))))
 (=> SIV_26 $x258))))))
(assert
 (let (($x272 (and (not (= SIV_42 (_ bv1 1))) (= (ControlFlow 3 389887) (- 0 427091)))))
 (let (($x283 (and (= SIV_42 (ite (not (= $u0 (_ bv0 32))) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 389886) 389887))))
 (let (($x290 (=> (and (and (boogie_si_record_bv32 $u0) (= (ControlFlow 3 389885) 389886)) $x283 $x272) (not (= SIV_22 (_ bv0 32))))))
 (let (($x298 (=> (and (and true (= (ControlFlow 3 426969) 426965)) (= (ControlFlow 3 426965) 389885) (and (boogie_si_record_bv32 $u0) (= (ControlFlow 3 389885) 389886)) $x283 $x272) (not (= SIV_22 (_ bv0 32))))))
 (=> SIV_27 (and (= (ControlFlow 3 0) 426969) (not $x298))))))))
(assert
 (let (($x314 (=> (and (not false) (= (ControlFlow 4 389959) (- 0 427201))) (= SIV_25 (not false)))))
 (let (($x326 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 389957) 389958)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 389958) 389959)) (and (not false) (= (ControlFlow 4 389959) (- 0 427201)))) (= SIV_25 (not false)))))
 (let (($x334 (=> (and (and true (= (ControlFlow 4 427131) 427128)) (= (ControlFlow 4 427128) 389957) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 389957) 389958)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 389958) 389959)) (and (not false) (= (ControlFlow 4 389959) (- 0 427201)))) (= SIV_25 (not false)))))
 (=> SIV_28 (and (= (ControlFlow 4 0) 427131) (not $x334)))))))
(assert
 (let (($x351 (=> (and (= (ControlFlow 5 427217) 389685) (= (ControlFlow 5 389685) (- 0 427224))) false)))
 (let (($x357 (and (= (ControlFlow 5 0) 427219) (not (=> (and (and true (= (ControlFlow 5 427219) 427217)) (= (ControlFlow 5 427217) 389685) (= (ControlFlow 5 389685) (- 0 427224))) false)))))
 (=> SIV_31 $x357))))
(assert
 (let (($x372 (=> (and (= (ControlFlow 6 427232) 389725) (= (ControlFlow 6 389725) (- 0 427263))) false)))
 (let (($x378 (and (= (ControlFlow 6 0) 427234) (not (=> (and (and true (= (ControlFlow 6 427234) 427232)) (= (ControlFlow 6 427232) 389725) (= (ControlFlow 6 389725) (- 0 427263))) false)))))
 (=> SIV_32 $x378))))
(check-sat)
