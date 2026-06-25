; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () Int)
(declare-fun $1 () Int)
(declare-fun $0_ref () Int)
(declare-fun $1_ref () Int)
(declare-fun $1024_ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun $and_i1 (Int Int) Int)
(declare-fun $or_i1 (Int Int) Int)
(declare-fun $xor_i1 (Int Int) Int)
(declare-fun $and_i32 (Int Int) Int)
(declare-fun counter () Int)
(declare-fun hanoi () Int)
(declare-fun applyHanoi () Int)
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
(declare-fun SIV_5 () Int)
(declare-fun SIV_4 () Int)
(declare-fun SIV_6 () Bool)
(declare-fun SIV_3 () Bool)
(declare-fun SIV_7 () Int)
(declare-fun SIV_2 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV_8 () Bool)
(declare-fun SIV_1 () Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_23 () Int)
(declare-fun SIV_30 () Int)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_25 () Int)
(declare-fun SIV_24 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun hanoi_cb (Int) Int)
(declare-fun $u0 () Int)
(declare-fun SIV_28 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun SIV_21 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_34 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_36 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_50 () Int)
(declare-fun SIV_54 () Bool)
(declare-fun SIV_52 () Int)
(declare-fun SIV_53 () Bool)
(declare-fun SIV_51 () Int)
(declare-fun SIV_49 () Int)
(declare-fun SIV_75 () Int)
(declare-fun SIV_87 () Int)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 0))
(assert
 (= $1 1))
(assert
 (= $0_ref 0))
(assert
 (= $1_ref 1))
(assert
 (= $1024_ref 1024))
(assert
 (let ((?x23 (- 0 23732)))
 (= $GLOBALS_BOTTOM ?x23)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= ($and_i1 0 0) 0))
(assert
 (= ($or_i1 0 0) 0))
(assert
 (= ($xor_i1 0 0) 0))
(assert
 (= ($and_i1 0 1) 0))
(assert
 (= ($or_i1 0 1) 1))
(assert
 (= ($xor_i1 0 1) 1))
(assert
 (= ($and_i1 1 0) 0))
(assert
 (= ($or_i1 1 0) 1))
(assert
 (= ($xor_i1 1 0) 1))
(assert
 (= ($and_i1 1 1) 1))
(assert
 (= ($or_i1 1 1) 1))
(assert
 (= ($xor_i1 1 1) 0))
(assert
 (= ($and_i32 32 16) 0))
(assert
 (= counter (- 0 1028)))
(assert
 (= hanoi (- 0 2060)))
(assert
 (= applyHanoi (- 0 3092)))
(assert
 (= main_ (- 0 4124)))
(assert
 (= __SMACK_code (- 0 5156)))
(assert
 (= __VERIFIER_assume (- 0 6188)))
(assert
 (= __SMACK_dummy (- 0 7220)))
(assert
 (= __VERIFIER_assert (- 0 8252)))
(assert
 (= __SMACK_and32 (- 0 9284)))
(assert
 (= __SMACK_and64 (- 0 10316)))
(assert
 (= __SMACK_and16 (- 0 11348)))
(assert
 (= __SMACK_and8 (- 0 12380)))
(assert
 (= __SMACK_or32 (- 0 13412)))
(assert
 (= __SMACK_or64 (- 0 14444)))
(assert
 (= __SMACK_or16 (- 0 15476)))
(assert
 (= __SMACK_or8 (- 0 16508)))
(assert
 (= __SMACK_check_overflow (- 0 17540)))
(assert
 (= __SMACK_loop_exit (- 0 18572)))
(assert
 (= __SMACK_decls (- 0 19604)))
(assert
 (= __SMACK_top_decl (- 0 20636)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21668)))
(assert
 (= llvm_dbg_value (- 0 22700)))
(assert
 (let ((?x23 (- 0 23732)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x174 (and (and (= SIV_2 SIV_7) (= SIV_3 SIV_6)) (= SIV_4 SIV_5))))
 (let (($x164 (and (and true SIV_8) (and (not SIV_6) (= (ControlFlow 0 288752) (- 0 314284))))))
 (let (($x185 (=> (and (and SIV_1 (= (ControlFlow 0 314206) 314203)) (= (ControlFlow 0 314203) 288752) $x164) (not $x174))))
 (and (= (ControlFlow 0 0) 314206) (not $x185))))))
(assert
 (let (($x205 (and (and (= SIV_7 SIV_30) (= SIV_5 SIV_23)) (= SIV_6 SIV_26))))
 (let (($x207 (=> (and (not SIV_26) (= (ControlFlow 1 288733) (- 0 314815))) (not $x205))))
 (let (($x208 (and true true)))
 (let (($x215 (=> (and (and $x208 (and SIV_29 (= (ControlFlow 1 288732) 288733))) (and (not SIV_26) (= (ControlFlow 1 288733) (- 0 314815)))) (not $x205))))
 (let (($x223 (=> (and (and (not (= SIV_25 1)) (= (ControlFlow 1 288731) 288732)) (and $x208 (and SIV_29 (= (ControlFlow 1 288732) 288733))) (and (not SIV_26) (= (ControlFlow 1 288733) (- 0 314815)))) (not $x205))))
 (let (($x244 (and (= SIV_25 (ite (= SIV_24 SIV_23) 1 0)) (= (ControlFlow 1 288730) 288731))))
 (let (($x245 (and (and (= SIV_24 (hanoi_cb $u0)) (boogie_si_record_i32 SIV_24)) $x244)))
 (let (($x246 (and (and (and (boogie_si_record_i32 0) true) (and true SIV_28)) $x245)))
 (let (($x259 (and (= SIV_22 (ite (> $u0 31) 1 0)) (= (ControlFlow 1 288729) 288730))))
 (let (($x261 (=> (and (not (= SIV_21 1)) $x259 (not (= SIV_22 1)) $x246 (and (not (= SIV_25 1)) (= (ControlFlow 1 288731) 288732)) (and $x208 (and SIV_29 (= (ControlFlow 1 288732) 288733))) (and (not SIV_26) (= (ControlFlow 1 288733) (- 0 314815)))) (not $x205))))
 (let (($x271 (and (= SIV_21 (ite (< $u0 1) 1 0)) (= (ControlFlow 1 288728) 288729))))
 (let (($x274 (=> (and $x208 (and (and SIV_27 (boogie_si_record_ref main_)) $x271) (not (= SIV_21 1)) $x259 (not (= SIV_22 1)) $x246 (and (not (= SIV_25 1)) (= (ControlFlow 1 288731) 288732)) (and $x208 (and SIV_29 (= (ControlFlow 1 288732) 288733))) (and (not SIV_26) (= (ControlFlow 1 288733) (- 0 314815)))) (not $x205))))
 (let (($x282 (=> (and (and true (= (ControlFlow 1 314362) 314359)) (= (ControlFlow 1 314359) 288728) $x208 (and (and SIV_27 (boogie_si_record_ref main_)) $x271) (not (= SIV_21 1)) $x259 (not (= SIV_22 1)) $x246 (and (not (= SIV_25 1)) (= (ControlFlow 1 288731) 288732)) (and $x208 (and SIV_29 (= (ControlFlow 1 288732) 288733))) (and (not SIV_26) (= (ControlFlow 1 288733) (- 0 314815)))) (not $x205))))
 (=> SIV_8 (and (= (ControlFlow 1 0) 314362) (not $x282)))))))))))))))))
(assert
 (let (($x208 (and true true)))
 (let (($x299 (and $x208 (and SIV_36 (= (ControlFlow 2 287797) (- 0 314964))))))
 (let (($x306 (=> (and true (and true SIV_35) $x299) (not (= SIV_20 SIV_34)))))
 (let (($x314 (=> (and (and true (= (ControlFlow 2 314906) 314904)) (= (ControlFlow 2 314904) 287797) true (and true SIV_35) $x299) (not (= SIV_20 SIV_34)))))
 (=> SIV_27 (and (= (ControlFlow 2 0) 314906) (not $x314))))))))
(assert
 (let (($x330 (=> (= (ControlFlow 3 288373) (- 0 315441)) (not (= SIV_23 SIV_50)))))
 (let (($x208 (and true true)))
 (let (($x354 (and (and $x208 (and SIV_53 (= SIV_52 (- $u0 1)))) (and $x208 (and SIV_54 (= (ControlFlow 3 288372) 288373))))))
 (let (($x342 (and (and (not (= SIV_49 1)) (= SIV_50 (+ 0 1))) (and (boogie_si_record_i32 SIV_50) (= SIV_51 (- $u0 1))))))
 (let (($x369 (and (= SIV_49 (ite (= $u0 0) 1 0)) (= (ControlFlow 3 288371) 288372))))
 (let (($x370 (and (and (boogie_si_record_i32 3) (boogie_si_record_i32 2)) $x369)))
 (let (($x372 (=> (and (and (boogie_si_record_i32 $u0) (boogie_si_record_i32 1)) $x370 $x342 $x354 (= (ControlFlow 3 288373) (- 0 315441))) (not (= SIV_23 SIV_50)))))
 (let (($x380 (=> (and (and true (= (ControlFlow 3 315007) 315001)) (= (ControlFlow 3 315001) 288371) (and (boogie_si_record_i32 $u0) (boogie_si_record_i32 1)) $x370 $x342 $x354 (= (ControlFlow 3 288373) (- 0 315441))) (not (= SIV_23 SIV_50)))))
 (=> SIV_28 (and (= (ControlFlow 3 0) 315007) (not $x380))))))))))))
(assert
 (let (($x396 (=> (and (not false) (= (ControlFlow 4 288445) (- 0 315575))) (= SIV_26 (not false)))))
 (let (($x407 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 4 288443) 288444)) (and (= 0 $0) (= (ControlFlow 4 288444) 288445)) (and (not false) (= (ControlFlow 4 288445) (- 0 315575)))) (= SIV_26 (not false)))))
 (let (($x415 (=> (and (and true (= (ControlFlow 4 315505) 315502)) (= (ControlFlow 4 315502) 288443) (and (boogie_si_record_i32 0) (= (ControlFlow 4 288443) 288444)) (and (= 0 $0) (= (ControlFlow 4 288444) 288445)) (and (not false) (= (ControlFlow 4 288445) (- 0 315575)))) (= SIV_26 (not false)))))
 (=> SIV_29 (and (= (ControlFlow 4 0) 315505) (not $x415)))))))
(assert
 (let (($x227 (boogie_si_record_i32 0)))
 (let (($x431 (=> (and $x227 (= (ControlFlow 5 287745) (- 0 315634))) (not (= SIV_34 0)))))
 (let (($x439 (=> (and (and true (= (ControlFlow 5 315601) 315599)) (= (ControlFlow 5 315599) 287745) (and $x227 (= (ControlFlow 5 287745) (- 0 315634)))) (not (= SIV_34 0)))))
 (=> SIV_35 (and (= (ControlFlow 5 0) 315601) (not $x439)))))))
(assert
 (let (($x456 (=> (and (= (ControlFlow 6 315649) 287785) (= (ControlFlow 6 287785) (- 0 315680))) false)))
 (let (($x462 (and (= (ControlFlow 6 0) 315651) (not (=> (and (and true (= (ControlFlow 6 315651) 315649)) (= (ControlFlow 6 315649) 287785) (= (ControlFlow 6 287785) (- 0 315680))) false)))))
 (=> SIV_36 $x462))))
(assert
 (let (($x480 (=> (and (and (= SIV_75 1) (= (ControlFlow 7 287959) 287960)) (= (ControlFlow 7 287960) (- 0 315852))) false)))
 (let (($x490 (and (= SIV_75 (ite (= SIV_51 0) 1 0)) (= (ControlFlow 7 287958) 287959))))
 (let (($x491 (and (and (boogie_si_record_i32 2) (boogie_si_record_i32 3)) $x490)))
 (let (($x493 (=> (and (and (boogie_si_record_i32 SIV_51) (boogie_si_record_i32 1)) $x491 (and (= SIV_75 1) (= (ControlFlow 7 287959) 287960)) (= (ControlFlow 7 287960) (- 0 315852))) false)))
 (let (($x501 (=> (and (and true (= (ControlFlow 7 315696) 315690)) (= (ControlFlow 7 315690) 287958) (and (boogie_si_record_i32 SIV_51) (boogie_si_record_i32 1)) $x491 (and (= SIV_75 1) (= (ControlFlow 7 287959) 287960)) (= (ControlFlow 7 287960) (- 0 315852))) false)))
 (=> SIV_53 (and (= (ControlFlow 7 0) 315696) (not $x501)))))))))
(assert
 (let (($x521 (=> (and (and (= SIV_87 1) (= (ControlFlow 8 288106) 288107)) (= (ControlFlow 8 288107) (- 0 316044))) false)))
 (let (($x531 (and (= SIV_87 (ite (= SIV_52 0) 1 0)) (= (ControlFlow 8 288105) 288106))))
 (let (($x532 (and (and (boogie_si_record_i32 3) (boogie_si_record_i32 1)) $x531)))
 (let (($x534 (=> (and (and (boogie_si_record_i32 SIV_52) (boogie_si_record_i32 2)) $x532 (and (= SIV_87 1) (= (ControlFlow 8 288106) 288107)) (= (ControlFlow 8 288107) (- 0 316044))) false)))
 (let (($x542 (=> (and (and true (= (ControlFlow 8 315888) 315882)) (= (ControlFlow 8 315882) 288105) (and (boogie_si_record_i32 SIV_52) (boogie_si_record_i32 2)) $x532 (and (= SIV_87 1) (= (ControlFlow 8 288106) 288107)) (= (ControlFlow 8 288107) (- 0 316044))) false)))
 (=> SIV_54 (and (= (ControlFlow 8 0) 315888) (not $x542)))))))))
(check-sat)
