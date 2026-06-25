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
(declare-fun id () Int)
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
(declare-fun SIV_4 () Int)
(declare-fun SIV_1 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV_5 () Bool)
(declare-fun SIV_0 () Bool)
(declare-fun SIV_17 () Bool)
(declare-fun SIV_16 () Int)
(declare-fun SIV_15 () Bool)
(declare-fun SIV_13 () Int)
(declare-fun SIV_14 () Bool)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Bool)
(declare-fun SIV_12 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun id_cb (Int) Int)
(declare-fun $u0 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_18 () Bool)
(declare-fun SIV_23 () Bool)
(declare-fun SIV_22 () Bool)
(declare-fun SIV_28 () Bool)
(declare-fun SIV_27 () Bool)
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
 (let ((?x23 (- 0 21672)))
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
 (= id (- 0 1032)))
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
 (let ((?x23 (- 0 21672)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 227594) (- 0 231828))))))
 (let (($x168 (=> (and (= (ControlFlow 0 231771) 227594) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 231774) (not (=> (and (and SIV_0 (= (ControlFlow 0 231774) 231771)) (= (ControlFlow 0 231771) 227594) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x303 (not (and (= SIV_4 SIV_16) (= SIV_3 SIV_17)))))
 (let (($x304 (=> (= (ControlFlow 1 231886) (- 0 232105)) $x303)))
 (let (($x324 (=> (and (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303)))
 (let (($x325 (=> (and (= SIV_16 0) (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303)))
 (let (($x365 (=> (and (and (= SIV_15 true) (= (ControlFlow 1 227064) 227065)) (= SIV_16 0) (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303)))
 (let (($x387 (=> (and (= (ControlFlow 1 227062) 227064) (not (= SIV_13 1)) (and (= SIV_15 true) (= (ControlFlow 1 227064) 227065)) (= SIV_16 0) (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303)))
 (let (($x331 (=> (and (and (= SIV_15 SIV_14) (= (ControlFlow 1 227070) 227065)) (= SIV_16 0) (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303)))
 (let (($x340 (=> (and (and SIV_14 (= (ControlFlow 1 227068) 227069)) (= (ControlFlow 1 227069) 227070) (and (= SIV_15 SIV_14) (= (ControlFlow 1 227070) 227065)) (= SIV_16 0) (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303)))
 (let (($x315 (and (and (not SIV_14) (= SIV_16 SIV_20)) (and (= SIV_17 SIV_14) (= (ControlFlow 1 227067) 231886)))))
 (let (($x349 (and (=> (and (= (ControlFlow 1 227066) 227067) $x315 (= (ControlFlow 1 231886) (- 0 232105))) $x303) (=> (and (= (ControlFlow 1 227066) 227068) (and SIV_14 (= (ControlFlow 1 227068) 227069)) (= (ControlFlow 1 227069) 227070) (and (= SIV_15 SIV_14) (= (ControlFlow 1 227070) 227065)) (= SIV_16 0) (and (= SIV_17 SIV_15) (= (ControlFlow 1 227065) 231886)) (= (ControlFlow 1 231886) (- 0 232105))) $x303))))
 (let (($x358 (=> (and (and (= SIV_13 1) (= (ControlFlow 1 227063) 227066)) true (and true SIV_19)) $x349)))
 (let (($x380 (and (boogie_si_record_i32 SIV_12) (= SIV_13 (ite (= SIV_12 10) 1 0)))))
 (let (($x381 (and (and (boogie_si_record_ref main_) (= SIV_12 (id_cb $u0))) $x380)))
 (let (($x390 (=> (and (and true SIV_18) $x381) (and (=> (and (= (ControlFlow 1 227062) 227063) (and (= SIV_13 1) (= (ControlFlow 1 227063) 227066)) true (and true SIV_19)) $x349) $x387))))
 (let (($x399 (=> (and (and true (= (ControlFlow 1 231891) 231884)) (= (ControlFlow 1 231884) 227062) true (and true SIV_18) $x381) (and (=> (and (= (ControlFlow 1 227062) 227063) (and (= SIV_13 1) (= (ControlFlow 1 227063) 227066)) true (and true SIV_19)) $x349) $x387))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 231891) (not $x399)))))))))))))))))))
(assert
 (let (($x455 (and (and true true) (and SIV_23 (= (ControlFlow 2 227570) (- 0 232196))))))
 (let (($x462 (=> (and (= (ControlFlow 2 232161) 227570) true (and true SIV_22) $x455) false)))
 (let (($x468 (and (= (ControlFlow 2 0) 232163) (not (=> (and (and true (= (ControlFlow 2 232163) 232161)) (= (ControlFlow 2 232161) 227570) true (and true SIV_22) $x455) false)))))
 (=> SIV_18 $x468)))))
(assert
 (let (($x480 (not SIV_28)))
 (let (($x481 (= SIV_14 $x480)))
 (let (($x482 (=> (= (ControlFlow 3 232226) (- 0 232311)) $x481)))
 (let (($x507 (=> (and (and (= SIV_28 SIV_27) (= (ControlFlow 3 227213) 232226)) (= (ControlFlow 3 232226) (- 0 232311))) $x481)))
 (let (($x514 (=> (and (and (= SIV_27 true) (= (ControlFlow 3 227212) 227213)) (and (= SIV_28 SIV_27) (= (ControlFlow 3 227213) 232226)) (= (ControlFlow 3 232226) (- 0 232311))) $x481)))
 (let (($x522 (=> (and (= (ControlFlow 3 227207) 227212) (not (= 0 $0)) (and (= SIV_27 true) (= (ControlFlow 3 227212) 227213)) (and (= SIV_28 SIV_27) (= (ControlFlow 3 227213) 232226)) (= (ControlFlow 3 232226) (- 0 232311))) $x481)))
 (let (($x489 (=> (and (and (= SIV_28 false) (= (ControlFlow 3 227209) 232226)) (= (ControlFlow 3 232226) (- 0 232311))) $x481)))
 (let (($x499 (and (=> (and (= (ControlFlow 3 227208) 227209) (not false) (and (= SIV_28 false) (= (ControlFlow 3 227209) 232226)) (= (ControlFlow 3 232226) (- 0 232311))) $x481) (=> (= (ControlFlow 3 227208) 227210) true))))
 (let (($x491 (= 0 $0)))
 (let (($x524 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 227207) 227208) $x491) $x499) $x522))))
 (let (($x532 (=> (and (and true (= (ControlFlow 3 232231) 232224)) (= (ControlFlow 3 232224) 227207) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 227207) 227208) $x491) $x499) $x522))))
 (=> SIV_19 (and (= (ControlFlow 3 0) 232231) (not $x532)))))))))))))))
(check-sat)
