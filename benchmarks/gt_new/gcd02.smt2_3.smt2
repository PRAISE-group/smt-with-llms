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
(declare-fun gcd () Int)
(declare-fun divides () Int)
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
(declare-fun SIV_32 () Bool)
(declare-fun SIV_31 () Int)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_23 () Int)
(declare-fun SIV_24 () Int)
(declare-fun SIV_25 () Bool)
(declare-fun SIV_28 () Int)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_36 () Int)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_27 () Int)
(declare-fun divides_cb (Int Int) Int)
(declare-fun $u0 () Int)
(declare-fun SIV_26 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun SIV_21 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_33 () Bool)
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
 (let ((?x23 (- 0 22704)))
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
 (= gcd (- 0 1032)))
(assert
 (= divides (- 0 2064)))
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
 (let ((?x23 (- 0 22704)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x160 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 234769) (- 0 240010))))))
 (let (($x172 (=> (and (= (ControlFlow 0 239953) 234769) $x160) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 239956) (not (=> (and (and SIV_0 (= (ControlFlow 0 239956) 239953)) (= (ControlFlow 0 239953) 234769) $x160) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x311 (not (and (= SIV_4 SIV_31) (= SIV_3 SIV_32)))))
 (let (($x312 (=> (= (ControlFlow 1 240068) (- 0 240638)) $x311)))
 (let (($x342 (=> (and (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x343 (=> (and (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x492 (=> (and (and (= SIV_30 true) (= (ControlFlow 1 234232) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x502 (=> (and (= (ControlFlow 1 234230) 234232) (not (= SIV_23 1)) (and (= SIV_30 true) (= (ControlFlow 1 234232) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x471 (=> (and (and (= SIV_30 true) (= (ControlFlow 1 234237) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x484 (=> (and (= (ControlFlow 1 234231) 234237) (not (= SIV_24 1)) (and (= SIV_30 true) (= (ControlFlow 1 234237) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x426 (=> (and (and (= SIV_30 SIV_25) (= (ControlFlow 1 234239) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x443 (=> (and (= (ControlFlow 1 234236) 234239) (not (= SIV_28 1)) (and (= SIV_30 SIV_25) (= (ControlFlow 1 234239) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x388 (=> (and (and (= SIV_30 SIV_29) (= (ControlFlow 1 234245) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x396 (=> (and (= (ControlFlow 1 234243) 234244) (= (ControlFlow 1 234244) 234245) (and (= SIV_30 SIV_29) (= (ControlFlow 1 234245) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x409 (=> (and (= (ControlFlow 1 234240) 234242) (and SIV_29 (= (ControlFlow 1 234242) 234243)) (= (ControlFlow 1 234243) 234244) (= (ControlFlow 1 234244) 234245) (and (= SIV_30 SIV_29) (= (ControlFlow 1 234245) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x323 (and (and (not SIV_29) (= SIV_31 SIV_36)) (and (= SIV_32 SIV_29) (= (ControlFlow 1 234241) 240068)))))
 (let (($x411 (=> (and true SIV_35) (and (=> (and (= (ControlFlow 1 234240) 234241) $x323 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x409))))
 (let (($x419 (=> (and (and (= SIV_28 1) (= (ControlFlow 1 234238) 234240)) SIV_25 (and true SIV_35)) (and (=> (and (= (ControlFlow 1 234240) 234241) $x323 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x409))))
 (let (($x437 (and (= SIV_27 (divides_cb SIV_26 $u0)) (= SIV_28 (ite (= SIV_27 0) 1 0)))))
 (let (($x446 (=> (and (boogie_si_record_i32 SIV_26) $x437) (and (=> (and (= (ControlFlow 1 234236) 234238) (and (= SIV_28 1) (= (ControlFlow 1 234238) 234240)) SIV_25 (and true SIV_35)) (and (=> (and (= (ControlFlow 1 234240) 234241) $x323 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x409)) $x443))))
 (let (($x463 (=> (and (= (ControlFlow 1 234233) 234235) (and SIV_25 (= (ControlFlow 1 234235) 234236)) (boogie_si_record_i32 SIV_26) $x437) (and (=> (and (= (ControlFlow 1 234236) 234238) (and (= SIV_28 1) (= (ControlFlow 1 234238) 234240)) SIV_25 (and true SIV_35)) (and (=> (and (= (ControlFlow 1 234240) 234241) $x323 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x409)) $x443))))
 (let (($x333 (and (and (not SIV_25) (= SIV_31 SIV_36)) (and (= SIV_32 SIV_25) (= (ControlFlow 1 234234) 240068)))))
 (let (($x465 (=> (and (and (= SIV_24 1) true) (and true SIV_34)) (and (=> (and (= (ControlFlow 1 234233) 234234) $x333 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x463))))
 (let (($x474 (= SIV_23 1)))
 (let (($x486 (=> (and $x474 (= SIV_24 (ite (> $u0 0) 1 0))) (and (=> (and (= (ControlFlow 1 234231) 234233) (and (and (= SIV_24 1) true) (and true SIV_34))) (and (=> (and (= (ControlFlow 1 234233) 234234) $x333 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x463)) $x484))))
 (let (($x496 (and (not (= SIV_22 1)) (= SIV_23 (ite (> $u0 0) 1 0)))))
 (let (($x516 (=> (and (= (ControlFlow 1 234228) 234230) $x496) (and (=> (and (= (ControlFlow 1 234230) 234231) (and $x474 (= SIV_24 (ite (> $u0 0) 1 0)))) (and (=> (and (= (ControlFlow 1 234231) 234233) (and (and (= SIV_24 1) true) (and true SIV_34))) (and (=> (and (= (ControlFlow 1 234233) 234234) $x333 (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x463)) $x484)) $x502))))
 (let (($x368 (=> (and (and (= SIV_30 true) (= (ControlFlow 1 234227) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x375 (=> (and (and (= SIV_22 1) (= (ControlFlow 1 234229) 234227)) (and (= SIV_30 true) (= (ControlFlow 1 234227) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x510 (and (not (= SIV_21 1)) (= SIV_22 (ite (> $u0 2147483647) 1 0)))))
 (let (($x529 (=> (and (= (ControlFlow 1 234224) 234228) $x510) (and (=> (and (= (ControlFlow 1 234228) 234229) (and (= SIV_22 1) (= (ControlFlow 1 234229) 234227)) (and (= SIV_30 true) (= (ControlFlow 1 234227) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x516))))
 (let (($x382 (=> (and (and (= SIV_21 1) (= (ControlFlow 1 234226) 234227)) (and (= SIV_30 true) (= (ControlFlow 1 234227) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x523 (and (not (= SIV_20 1)) (= SIV_21 (ite (<= $u0 0) 1 0)))))
 (let (($x540 (=> (and (= (ControlFlow 1 234222) 234224) $x523) (and (=> (and (= (ControlFlow 1 234224) 234226) (and (= SIV_21 1) (= (ControlFlow 1 234226) 234227)) (and (= SIV_30 true) (= (ControlFlow 1 234227) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x529))))
 (let (($x349 (=> (and (and (= SIV_30 true) (= (ControlFlow 1 234221) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x356 (=> (and (and (= SIV_20 1) (= (ControlFlow 1 234223) 234221)) (and (= SIV_30 true) (= (ControlFlow 1 234221) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x534 (and (not (= SIV_19 1)) (= SIV_20 (ite (> $u0 2147483647) 1 0)))))
 (let (($x554 (=> (and (= (ControlFlow 1 234219) 234222) $x534) (and (=> (and (= (ControlFlow 1 234222) 234223) (and (= SIV_20 1) (= (ControlFlow 1 234223) 234221)) (and (= SIV_30 true) (= (ControlFlow 1 234221) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x540))))
 (let (($x363 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 234220) 234221)) (and (= SIV_30 true) (= (ControlFlow 1 234221) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311)))
 (let (($x547 (and (boogie_si_record_ref main_) (= SIV_19 (ite (<= $u0 0) 1 0)))))
 (let (($x556 (=> (and (and true SIV_33) $x547) (and (=> (and (= (ControlFlow 1 234219) 234220) (and (= SIV_19 1) (= (ControlFlow 1 234220) 234221)) (and (= SIV_30 true) (= (ControlFlow 1 234221) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x554))))
 (let (($x565 (=> (and (and true (= (ControlFlow 1 240074) 240066)) (= (ControlFlow 1 240066) 234219) true (and (and true SIV_33) $x547)) (and (=> (and (= (ControlFlow 1 234219) 234220) (and (= SIV_19 1) (= (ControlFlow 1 234220) 234221)) (and (= SIV_30 true) (= (ControlFlow 1 234221) 234225)) (= SIV_31 0) (and (= SIV_32 SIV_30) (= (ControlFlow 1 234225) 240068)) (= (ControlFlow 1 240068) (- 0 240638))) $x311) $x554))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 240074) (not $x565))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
