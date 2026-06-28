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
(declare-fun SIV_33 () Bool)
(declare-fun SIV_36 () (_ BitVec 32))
(declare-fun SIV_35 () Bool)
(declare-fun SIV_32 () (_ BitVec 1))
(declare-fun SIV_31 () (_ BitVec 32))
(declare-fun SIV_29 () (_ BitVec 32))
(declare-fun SIV_30 () (_ BitVec 1))
(declare-fun SIV_27 () (_ BitVec 32))
(declare-fun SIV_28 () (_ BitVec 1))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun my__builtin_ffs_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_39 () Bool)
(declare-fun SIV_38 () Bool)
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
 (= my__builtin_ffs (- 0 1032)))
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
 (let (($x130 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 388662) (- 0 424805))))))
 (let (($x142 (=> (and (= (ControlFlow 0 424742) 388662) $x130) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 424745) (not (=> (and (and SIV_0 (= (ControlFlow 0 424745) 424742)) (= (ControlFlow 0 424742) 388662) $x130) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x166 (=> (and (not SIV_33) (= (ControlFlow 1 388643) (- 0 425152))) (not (and (= SIV_4 SIV_36) (= SIV_3 SIV_33))))))
 (let (($x171 (and true true)))
 (let (($x178 (=> (and (and $x171 (and SIV_35 (= (ControlFlow 1 388642) 388643))) (and (not SIV_33) (= (ControlFlow 1 388643) (- 0 425152)))) (not (and (= SIV_4 SIV_36) (= SIV_3 SIV_33))))))
 (let (($x205 (and (= SIV_32 (ite (= SIV_29 SIV_31) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 388641) 388642))))
 (let (($x198 (and (= SIV_30 (ite (= SIV_27 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= SIV_31 ((_ zero_extend 31) SIV_30)))))
 (let (($x189 (and (= SIV_28 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= SIV_29 ((_ zero_extend 31) SIV_28)))))
 (let (($x219 (and (boogie_si_record_bv32 SIV_27) (= (ControlFlow 1 388640) 388641))))
 (let (($x214 (and (boogie_si_record_ref main_) (= SIV_27 (my__builtin_ffs_cb $u0)))))
 (let (($x221 (=> (and (and $x214 $x219) $x189 (and $x198 $x205) (not (= SIV_32 (_ bv1 1))) (and $x171 (and SIV_35 (= (ControlFlow 1 388642) 388643))) (and (not SIV_33) (= (ControlFlow 1 388643) (- 0 425152)))) (not (and (= SIV_4 SIV_36) (= SIV_3 SIV_33))))))
 (let (($x227 (=> (and (= (ControlFlow 1 424861) 388640) true (and true SIV_34) (and $x214 $x219) $x189 (and $x198 $x205) (not (= SIV_32 (_ bv1 1))) (and $x171 (and SIV_35 (= (ControlFlow 1 388642) 388643))) (and (not SIV_33) (= (ControlFlow 1 388643) (- 0 425152)))) (not (and (= SIV_4 SIV_36) (= SIV_3 SIV_33))))))
 (let (($x233 (and (= (ControlFlow 1 0) 424864) (not (=> (and (and true (= (ControlFlow 1 424864) 424861)) (= (ControlFlow 1 424861) 388640) true (and true SIV_34) (and $x214 $x219) $x189 (and $x198 $x205) (not (= SIV_32 (_ bv1 1))) (and $x171 (and SIV_35 (= (ControlFlow 1 388642) 388643))) (and (not SIV_33) (= (ControlFlow 1 388643) (- 0 425152)))) (not (and (= SIV_4 SIV_36) (= SIV_3 SIV_33))))))))
 (=> SIV_5 $x233)))))))))))))
(assert
 (let (($x171 (and true true)))
 (let (($x248 (and $x171 (and SIV_39 (= (ControlFlow 2 388316) (- 0 425280))))))
 (let (($x255 (=> (and (= (ControlFlow 2 425241) 388316) true (and true SIV_38) $x248) false)))
 (let (($x261 (and (= (ControlFlow 2 0) 425243) (not (=> (and (and true (= (ControlFlow 2 425243) 425241)) (= (ControlFlow 2 425241) 388316) true (and true SIV_38) $x248) false)))))
 (=> SIV_34 $x261))))))
(assert
 (let (($x275 (=> (and (not false) (= (ControlFlow 3 388388) (- 0 425381))) (= SIV_33 (not false)))))
 (let (($x287 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 388386) 388387)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 388387) 388388)) (and (not false) (= (ControlFlow 3 388388) (- 0 425381)))) (= SIV_33 (not false)))))
 (let (($x295 (=> (and (and true (= (ControlFlow 3 425311) 425308)) (= (ControlFlow 3 425308) 388386) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 388386) 388387)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 388387) 388388)) (and (not false) (= (ControlFlow 3 388388) (- 0 425381)))) (= SIV_33 (not false)))))
 (=> SIV_35 (and (= (ControlFlow 3 0) 425311) (not $x295)))))))
(assert
 (let (($x312 (=> (and (= (ControlFlow 4 425397) 388264) (= (ControlFlow 4 388264) (- 0 425404))) false)))
 (let (($x318 (and (= (ControlFlow 4 0) 425399) (not (=> (and (and true (= (ControlFlow 4 425399) 425397)) (= (ControlFlow 4 425397) 388264) (= (ControlFlow 4 388264) (- 0 425404))) false)))))
 (=> SIV_38 $x318))))
(assert
 (let (($x333 (=> (and (= (ControlFlow 5 425412) 388304) (= (ControlFlow 5 388304) (- 0 425443))) false)))
 (let (($x339 (and (= (ControlFlow 5 0) 425414) (not (=> (and (and true (= (ControlFlow 5 425414) 425412)) (= (ControlFlow 5 425412) 388304) (= (ControlFlow 5 388304) (- 0 425443))) false)))))
 (=> SIV_39 $x339))))
(check-sat)
