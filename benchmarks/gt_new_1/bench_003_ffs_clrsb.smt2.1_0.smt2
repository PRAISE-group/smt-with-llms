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
(declare-fun my__builtin_clrsb () Int)
(declare-fun my__builtin_ffs () Int)
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
(declare-fun SIV_28 () Bool)
(declare-fun SIV_32 () (_ BitVec 32))
(declare-fun SIV_31 () Bool)
(declare-fun SIV_27 () (_ BitVec 1))
(declare-fun SIV_26 () (_ BitVec 32))
(declare-fun SIV_25 () (_ BitVec 32))
(declare-fun SIV_24 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun my__builtin_clrsb_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV_30 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_49 () (_ BitVec 1))
(declare-fun SIV_48 () (_ BitVec 32))
(declare-fun SIV_47 () (_ BitVec 1))
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
 (= my__builtin_clrsb (- 0 1032)))
(assert
 (= my__builtin_ffs (- 0 2064)))
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
 (let (($x134 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 392880) (- 0 429292))))))
 (let (($x146 (=> (and (= (ControlFlow 0 429229) 392880) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 429232) (not (=> (and (and SIV_0 (= (ControlFlow 0 429232) 429229)) (= (ControlFlow 0 429229) 392880) $x134) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x170 (=> (and (not SIV_28) (= (ControlFlow 1 392861) (- 0 429645))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x175 (and true true)))
 (let (($x182 (=> (and (and $x175 (and SIV_31 (= (ControlFlow 1 392860) 392861))) (and (not SIV_28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x197 (and (= SIV_27 (ite (bvsle SIV_26 (_ bv32 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 392859) 392860))))
 (let (($x199 (=> (and (= SIV_26 (bvadd SIV_24 SIV_25)) $x197 (not (= SIV_27 (_ bv1 1))) (and $x175 (and SIV_31 (= (ControlFlow 1 392860) 392861))) (and (not SIV_28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x216 (and (boogie_si_record_bv32 SIV_25) (= (ControlFlow 1 392858) 392859))))
 (let (($x211 (and (boogie_si_record_bv32 SIV_24) (= SIV_25 (my__builtin_clrsb_cb $u0)))))
 (let (($x218 (and (and (and (boogie_si_record_ref main_) true) (and true SIV_30)) (and $x211 $x216))))
 (let (($x225 (=> (and (= (ControlFlow 1 429348) 392858) true (and true SIV_29) $x218 (= SIV_26 (bvadd SIV_24 SIV_25)) $x197 (not (= SIV_27 (_ bv1 1))) (and $x175 (and SIV_31 (= (ControlFlow 1 392860) 392861))) (and (not SIV_28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x231 (and (= (ControlFlow 1 0) 429351) (not (=> (and (and true (= (ControlFlow 1 429351) 429348)) (= (ControlFlow 1 429348) 392858) true (and true SIV_29) $x218 (= SIV_26 (bvadd SIV_24 SIV_25)) $x197 (not (= SIV_27 (_ bv1 1))) (and $x175 (and SIV_31 (= (ControlFlow 1 392860) 392861))) (and (not SIV_28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))))
 (=> SIV_5 $x231))))))))))))
(assert
 (let (($x175 (and true true)))
 (let (($x246 (and $x175 (and SIV_35 (= (ControlFlow 2 392328) (- 0 429770))))))
 (let (($x253 (=> (and (= (ControlFlow 2 429731) 392328) true (and true SIV_34) $x246) false)))
 (let (($x259 (and (= (ControlFlow 2 0) 429733) (not (=> (and (and true (= (ControlFlow 2 429733) 429731)) (= (ControlFlow 2 429731) 392328) true (and true SIV_34) $x246) false)))))
 (=> SIV_29 $x259))))))
(assert
 (let (($x272 (=> (= (ControlFlow 3 392575) (- 0 430014)) (not (= SIV_24 (_ bv1 32))))))
 (let (($x280 (=> (and (and (not (= SIV_49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV_24 (_ bv1 32))))))
 (let (($x290 (and (= SIV_49 (ite (= SIV_48 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 392573) 392574))))
 (let (($x300 (=> (and (and (not (= SIV_47 (_ bv1 1))) (= (ControlFlow 3 392572) 392573)) (= SIV_48 (bvand $u0 (_ bv1 32))) $x290 (and (not (= SIV_49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV_24 (_ bv1 32))))))
 (let (($x308 (and (= SIV_47 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 392571) 392572))))
 (let (($x314 (=> (and (= (ControlFlow 3 429798) 392571) (boogie_si_record_bv32 $u0) $x308 (and (not (= SIV_47 (_ bv1 1))) (= (ControlFlow 3 392572) 392573)) (= SIV_48 (bvand $u0 (_ bv1 32))) $x290 (and (not (= SIV_49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV_24 (_ bv1 32))))))
 (let (($x320 (and (= (ControlFlow 3 0) 429802) (not (=> (and (and true (= (ControlFlow 3 429802) 429798)) (= (ControlFlow 3 429798) 392571) (boogie_si_record_bv32 $u0) $x308 (and (not (= SIV_47 (_ bv1 1))) (= (ControlFlow 3 392572) 392573)) (= SIV_48 (bvand $u0 (_ bv1 32))) $x290 (and (not (= SIV_49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV_24 (_ bv1 32))))))))
 (=> SIV_30 $x320)))))))))
(assert
 (let (($x334 (=> (and (not false) (= (ControlFlow 4 392647) (- 0 430132))) (= SIV_28 (not false)))))
 (let (($x346 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 392645) 392646)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 392646) 392647)) (and (not false) (= (ControlFlow 4 392647) (- 0 430132)))) (= SIV_28 (not false)))))
 (let (($x354 (=> (and (and true (= (ControlFlow 4 430062) 430059)) (= (ControlFlow 4 430059) 392645) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 392645) 392646)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 392646) 392647)) (and (not false) (= (ControlFlow 4 392647) (- 0 430132)))) (= SIV_28 (not false)))))
 (=> SIV_31 (and (= (ControlFlow 4 0) 430062) (not $x354)))))))
(assert
 (let (($x371 (=> (and (= (ControlFlow 5 430148) 392276) (= (ControlFlow 5 392276) (- 0 430155))) false)))
 (let (($x377 (and (= (ControlFlow 5 0) 430150) (not (=> (and (and true (= (ControlFlow 5 430150) 430148)) (= (ControlFlow 5 430148) 392276) (= (ControlFlow 5 392276) (- 0 430155))) false)))))
 (=> SIV_34 $x377))))
(assert
 (let (($x392 (=> (and (= (ControlFlow 6 430163) 392316) (= (ControlFlow 6 392316) (- 0 430194))) false)))
 (let (($x398 (and (= (ControlFlow 6 0) 430165) (not (=> (and (and true (= (ControlFlow 6 430165) 430163)) (= (ControlFlow 6 430163) 392316) (= (ControlFlow 6 392316) (- 0 430194))) false)))))
 (=> SIV_35 $x398))))
(check-sat)
