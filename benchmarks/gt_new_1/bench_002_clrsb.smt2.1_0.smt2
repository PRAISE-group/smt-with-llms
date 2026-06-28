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
(declare-fun SIV_43 () Bool)
(declare-fun SIV_46 () (_ BitVec 32))
(declare-fun SIV_45 () Bool)
(declare-fun SIV_42 () (_ BitVec 1))
(declare-fun SIV_41 () (_ BitVec 32))
(declare-fun SIV_38 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun SIV_40 () (_ BitVec 32))
(declare-fun SIV_39 () (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV_27 () (_ BitVec 32))
(declare-fun SIV_37 () (_ BitVec 32))
(declare-fun SIV_36 () (_ BitVec 1))
(declare-fun SIV_35 () (_ BitVec 1))
(declare-fun SIV_34 () (_ BitVec 32))
(declare-fun SIV_31 () (_ BitVec 32))
(declare-fun SIV_33 () (_ BitVec 1))
(declare-fun SIV_32 () (_ BitVec 1))
(declare-fun SIV_30 () (_ BitVec 1))
(declare-fun SIV_29 () (_ BitVec 1))
(declare-fun SIV_28 () (_ BitVec 1))
(declare-fun my__builtin_clrsb_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_44 () Bool)
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
 (let ((?x25 (- 0 21672)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_clrsb (- 0 1032)))
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
 (let (($x130 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 390316) (- 0 426999))))))
 (let (($x142 (=> (and (= (ControlFlow 0 426936) 390316) $x130) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 426939) (not (=> (and (and SIV_0 (= (ControlFlow 0 426939) 426936)) (= (ControlFlow 0 426936) 390316) $x130) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x166 (=> (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x171 (and true true)))
 (let (($x178 (=> (and (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x190 (and (= SIV_42 (ite (not (= SIV_38 SIV_41)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390295) 390296))))
 (let (($x220 (and (boogie_si_record_bv32 SIV_41) (= (ControlFlow 1 390294) 390295))))
 (let (($x215 (and (= SIV_40 (bvashr $u0 SIV_39)) (= SIV_41 (bvand SIV_40 (_ bv1 32))))))
 (let (($x208 (and (boogie_si_record_bv32 SIV_38) (= SIV_39 (bvsub (_ bv30 32) SIV_27)))))
 (let (($x201 (and (= SIV_37 (bvashr $u0 (_ bv31 32))) (= SIV_38 (bvand SIV_37 (_ bv1 32))))))
 (let (($x223 (=> (and (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x231 (and (= SIV_36 (ite (bvslt SIV_27 (_ bv31 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390293) 390294))))
 (let (($x236 (=> (and (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x255 (and (= SIV_35 (ite (= SIV_31 SIV_34) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390290) 390291))))
 (let (($x256 (=> (and $x255 (and (= SIV_35 (_ bv1 1)) (= (ControlFlow 1 390291) 390292)) (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x268 (and (= SIV_33 (ite (= $u0 (bvsub (_ bv0 32) (_ bv1 32))) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390289) 390290))))
 (let (($x270 (=> (and (not (= SIV_32 (_ bv1 1))) $x268 (= SIV_34 ((_ zero_extend 31) SIV_33)) $x255 (and (= SIV_35 (_ bv1 1)) (= (ControlFlow 1 390291) 390292)) (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x284 (and (= SIV_32 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390288) 390289))))
 (let (($x277 (and (= SIV_30 (ite (= SIV_27 (_ bv31 32)) (_ bv1 1) (_ bv0 1))) (= SIV_31 ((_ zero_extend 31) SIV_30)))))
 (let (($x294 (=> (and (= (ControlFlow 1 390286) 390287) (= (ControlFlow 1 390287) 390288) (and $x277 $x284) (not (= SIV_32 (_ bv1 1))) $x268 (= SIV_34 ((_ zero_extend 31) SIV_33)) $x255 (and (= SIV_35 (_ bv1 1)) (= (ControlFlow 1 390291) 390292)) (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x310 (and (= SIV_29 (ite (bvsle SIV_27 (_ bv31 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390284) 390285))))
 (let (($x311 (=> (and $x310 (and (= SIV_29 (_ bv1 1)) (= (ControlFlow 1 390285) 390286)) (= (ControlFlow 1 390286) 390287) (= (ControlFlow 1 390287) 390288) (and $x277 $x284) (not (= SIV_32 (_ bv1 1))) $x268 (= SIV_34 ((_ zero_extend 31) SIV_33)) $x255 (and (= SIV_35 (_ bv1 1)) (= (ControlFlow 1 390291) 390292)) (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x319 (and (= SIV_28 (ite (bvsge SIV_27 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 390283) 390284))))
 (let (($x331 (and (boogie_si_record_bv32 SIV_27) (= (ControlFlow 1 390282) 390283))))
 (let (($x326 (and (boogie_si_record_ref main_) (= SIV_27 (my__builtin_clrsb_cb $u0)))))
 (let (($x334 (=> (and (and true SIV_44) (and $x326 $x331) $x319 (= SIV_28 (_ bv1 1)) $x310 (and (= SIV_29 (_ bv1 1)) (= (ControlFlow 1 390285) 390286)) (= (ControlFlow 1 390286) 390287) (= (ControlFlow 1 390287) 390288) (and $x277 $x284) (not (= SIV_32 (_ bv1 1))) $x268 (= SIV_34 ((_ zero_extend 31) SIV_33)) $x255 (and (= SIV_35 (_ bv1 1)) (= (ControlFlow 1 390291) 390292)) (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (let (($x343 (=> (and (and true (= (ControlFlow 1 427058) 427055)) (= (ControlFlow 1 427055) 390282) true (and true SIV_44) (and $x326 $x331) $x319 (= SIV_28 (_ bv1 1)) $x310 (and (= SIV_29 (_ bv1 1)) (= (ControlFlow 1 390285) 390286)) (= (ControlFlow 1 390286) 390287) (= (ControlFlow 1 390287) 390288) (and $x277 $x284) (not (= SIV_32 (_ bv1 1))) $x268 (= SIV_34 ((_ zero_extend 31) SIV_33)) $x255 (and (= SIV_35 (_ bv1 1)) (= (ControlFlow 1 390291) 390292)) (= (ControlFlow 1 390292) 390293) $x231 (= SIV_36 (_ bv1 1)) (and (and $x201 $x208) (and $x215 $x220)) $x190 (not (= SIV_42 (_ bv1 1))) (and $x171 (and SIV_45 (= (ControlFlow 1 390296) 390297))) (and (not SIV_43) (= (ControlFlow 1 390297) (- 0 427791)))) (not (and (= SIV_4 SIV_46) (= SIV_3 SIV_43))))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 427058) (not $x343)))))))))))))))))))))))))))))
(assert
 (let (($x171 (and true true)))
 (let (($x360 (and $x171 (and SIV_49 (= (ControlFlow 2 389543) (- 0 427939))))))
 (let (($x367 (=> (and (= (ControlFlow 2 427900) 389543) true (and true SIV_48) $x360) false)))
 (let (($x373 (and (= (ControlFlow 2 0) 427902) (not (=> (and (and true (= (ControlFlow 2 427902) 427900)) (= (ControlFlow 2 427900) 389543) true (and true SIV_48) $x360) false)))))
 (=> SIV_44 $x373))))))
(assert
 (let (($x387 (=> (and (not false) (= (ControlFlow 3 389615) (- 0 428040))) (= SIV_43 (not false)))))
 (let (($x399 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 389613) 389614)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 389614) 389615)) (and (not false) (= (ControlFlow 3 389615) (- 0 428040)))) (= SIV_43 (not false)))))
 (let (($x407 (=> (and (and true (= (ControlFlow 3 427970) 427967)) (= (ControlFlow 3 427967) 389613) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 389613) 389614)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 389614) 389615)) (and (not false) (= (ControlFlow 3 389615) (- 0 428040)))) (= SIV_43 (not false)))))
 (=> SIV_45 (and (= (ControlFlow 3 0) 427970) (not $x407)))))))
(assert
 (let (($x424 (=> (and (= (ControlFlow 4 428056) 389491) (= (ControlFlow 4 389491) (- 0 428063))) false)))
 (let (($x430 (and (= (ControlFlow 4 0) 428058) (not (=> (and (and true (= (ControlFlow 4 428058) 428056)) (= (ControlFlow 4 428056) 389491) (= (ControlFlow 4 389491) (- 0 428063))) false)))))
 (=> SIV_48 $x430))))
(assert
 (let (($x445 (=> (and (= (ControlFlow 5 428071) 389531) (= (ControlFlow 5 389531) (- 0 428102))) false)))
 (let (($x451 (and (= (ControlFlow 5 0) 428073) (not (=> (and (and true (= (ControlFlow 5 428073) 428071)) (= (ControlFlow 5 428071) 389531) (= (ControlFlow 5 389531) (- 0 428102))) false)))))
 (=> SIV_49 $x451))))
(check-sat)
