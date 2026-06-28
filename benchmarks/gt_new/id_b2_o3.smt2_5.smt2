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
(declare-fun __VERIFIER_nondet_unsigned_int () Int)
(declare-fun __SMACK_nondet_unsigned_int () Int)
(declare-fun __VERIFIER_nondet_uint () Int)
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
(declare-fun SIV_19 () Bool)
(declare-fun SIV_18 () Int)
(declare-fun SIV_17 () Bool)
(declare-fun SIV_15 () Int)
(declare-fun SIV_16 () Bool)
(declare-fun SIV_23 () Int)
(declare-fun SIV_22 () Bool)
(declare-fun SIV_14 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun idb23_cb (Int) Int)
(declare-fun SIV_13 () Int)
(declare-fun SIV_21 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_20 () Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_25 () Bool)
(declare-fun SIV_30 () Int)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_37 () Bool)
(declare-fun SIV_36 () Bool)
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
 (let ((?x23 (- 0 24768)))
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
 (= __VERIFIER_nondet_unsigned_int (- 0 17544)))
(assert
 (= __SMACK_nondet_unsigned_int (- 0 18576)))
(assert
 (= __VERIFIER_nondet_uint (- 0 19608)))
(assert
 (= __SMACK_decls (- 0 20640)))
(assert
 (= __SMACK_top_decl (- 0 21672)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22704)))
(assert
 (= llvm_dbg_value (- 0 23736)))
(assert
 (let ((?x23 (- 0 24768)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 232303) (- 0 237217))))))
 (let (($x180 (=> (and (= (ControlFlow 0 237160) 232303) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 237163) (not (=> (and (and SIV_0 (= (ControlFlow 0 237163) 237160)) (= (ControlFlow 0 237160) 232303) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x327 (not (and (= SIV_4 SIV_18) (= SIV_3 SIV_19)))))
 (let (($x328 (=> (= (ControlFlow 1 237275) (- 0 237562)) $x327)))
 (let (($x348 (=> (and (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x349 (=> (and (= SIV_18 0) (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x389 (=> (and (and (= SIV_17 true) (= (ControlFlow 1 231196) 231197)) (= SIV_18 0) (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x418 (=> (and (= (ControlFlow 1 231194) 231196) (not (= SIV_15 1)) (and (= SIV_17 true) (= (ControlFlow 1 231196) 231197)) (= SIV_18 0) (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x355 (=> (and (and (= SIV_17 SIV_16) (= (ControlFlow 1 231202) 231197)) (= SIV_18 0) (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x364 (=> (and (and SIV_16 (= (ControlFlow 1 231200) 231201)) (= (ControlFlow 1 231201) 231202) (and (= SIV_17 SIV_16) (= (ControlFlow 1 231202) 231197)) (= SIV_18 0) (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x339 (and (and (not SIV_16) (= SIV_18 SIV_23)) (and (= SIV_19 SIV_16) (= (ControlFlow 1 231199) 237275)))))
 (let (($x373 (and (=> (and (= (ControlFlow 1 231198) 231199) $x339 (= (ControlFlow 1 237275) (- 0 237562))) $x327) (=> (and (= (ControlFlow 1 231198) 231200) (and SIV_16 (= (ControlFlow 1 231200) 231201)) (= (ControlFlow 1 231201) 231202) (and (= SIV_17 SIV_16) (= (ControlFlow 1 231202) 231197)) (= SIV_18 0) (and (= SIV_19 SIV_17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327))))
 (let (($x382 (=> (and (and (= SIV_15 1) (= (ControlFlow 1 231195) 231198)) true (and true SIV_22)) $x373)))
 (let (($x410 (and (boogie_si_record_i32 SIV_14) (= SIV_15 (ite (= SIV_14 3) 1 0)))))
 (let (($x411 (and (and (boogie_si_record_i32 SIV_13) (= SIV_14 (idb23_cb SIV_13))) $x410)))
 (let (($x412 (and (and (and true true) (and SIV_21 (boogie_si_record_i32 SIV_13))) $x411)))
 (let (($x421 (=> (and (and (and true true) (and SIV_20 (boogie_si_record_ref main_))) $x412) (and (=> (and (= (ControlFlow 1 231194) 231195) (and (= SIV_15 1) (= (ControlFlow 1 231195) 231198)) true (and true SIV_22)) $x373) $x418))))
 (let (($x429 (=> (and (and true (= (ControlFlow 1 237280) 237273)) (= (ControlFlow 1 237273) 231194) (and (and true true) (and SIV_20 (boogie_si_record_ref main_))) $x412) (and (=> (and (= (ControlFlow 1 231194) 231195) (and (= SIV_15 1) (= (ControlFlow 1 231195) 231198)) true (and true SIV_22)) $x373) $x418))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 237280) (not $x429))))))))))))))))))))
(assert
 (let (($x391 (and true true)))
 (let (($x484 (and $x391 (and SIV_26 (= (ControlFlow 2 232279) (- 0 237664))))))
 (let (($x491 (=> (and (= (ControlFlow 2 237629) 232279) true (and true SIV_25) $x484) false)))
 (let (($x497 (and (= (ControlFlow 2 0) 237631) (not (=> (and (and true (= (ControlFlow 2 237631) 237629)) (= (ControlFlow 2 237629) 232279) true (and true SIV_25) $x484) false)))))
 (=> SIV_20 $x497))))))
(assert
 (let (($x504 (boogie_si_record_i32 SIV_30)))
 (let (($x512 (and (and SIV_31 $x504) (and $x504 (= (ControlFlow 3 232107) (- 0 237781))))))
 (let (($x391 (and true true)))
 (let (($x520 (=> (and (= (ControlFlow 3 237692) 232107) $x391 $x512) (not (= SIV_13 SIV_30)))))
 (let (($x526 (and (= (ControlFlow 3 0) 237695) (not (=> (and (and true (= (ControlFlow 3 237695) 237692)) (= (ControlFlow 3 237692) 232107) $x391 $x512) (not (= SIV_13 SIV_30)))))))
 (=> SIV_21 $x526)))))))
(assert
 (let (($x538 (not SIV_37)))
 (let (($x539 (= SIV_16 $x538)))
 (let (($x540 (=> (= (ControlFlow 4 237815) (- 0 237900)) $x539)))
 (let (($x565 (=> (and (and (= SIV_37 SIV_36) (= (ControlFlow 4 231398) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x539)))
 (let (($x572 (=> (and (and (= SIV_36 true) (= (ControlFlow 4 231397) 231398)) (and (= SIV_37 SIV_36) (= (ControlFlow 4 231398) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x539)))
 (let (($x580 (=> (and (= (ControlFlow 4 231392) 231397) (not (= 0 $0)) (and (= SIV_36 true) (= (ControlFlow 4 231397) 231398)) (and (= SIV_37 SIV_36) (= (ControlFlow 4 231398) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x539)))
 (let (($x547 (=> (and (and (= SIV_37 false) (= (ControlFlow 4 231394) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x539)))
 (let (($x557 (and (=> (and (= (ControlFlow 4 231393) 231394) (not false) (and (= SIV_37 false) (= (ControlFlow 4 231394) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x539) (=> (= (ControlFlow 4 231393) 231395) true))))
 (let (($x549 (= 0 $0)))
 (let (($x582 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 4 231392) 231393) $x549) $x557) $x580))))
 (let (($x590 (=> (and (and true (= (ControlFlow 4 237820) 237813)) (= (ControlFlow 4 237813) 231392) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 4 231392) 231393) $x549) $x557) $x580))))
 (=> SIV_22 (and (= (ControlFlow 4 0) 237820) (not $x590)))))))))))))))
(check-sat)
