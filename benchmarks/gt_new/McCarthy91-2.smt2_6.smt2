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
(declare-fun f91 () Int)
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
(declare-fun SIV_23 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun SIV_21 () Bool)
(declare-fun SIV_20 () Bool)
(declare-fun SIV_26 () Int)
(declare-fun SIV_25 () Bool)
(declare-fun SIV_17 () Int)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun SIV_15 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV_16 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun f91_cb (Int) Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_24 () Bool)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_28 () Bool)
(declare-fun SIV_34 () Bool)
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
 (= f91 (- 0 1032)))
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
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 228905) (- 0 233301))))))
 (let (($x168 (=> (and (= (ControlFlow 0 233244) 228905) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 233247) (not (=> (and (and SIV_0 (= (ControlFlow 0 233247) 233244)) (= (ControlFlow 0 233244) 228905) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x303 (not (and (= SIV_4 SIV_22) (= SIV_3 SIV_23)))))
 (let (($x304 (=> (= (ControlFlow 1 233359) (- 0 233680)) $x303)))
 (let (($x312 (=> (and (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x313 (=> (and (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x340 (=> (and (and (= SIV_21 SIV_20) (= (ControlFlow 1 228381) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x349 (=> (and (and SIV_20 (= (ControlFlow 1 228379) 228380)) (= (ControlFlow 1 228380) 228381) (and (= SIV_21 SIV_20) (= (ControlFlow 1 228381) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x359 (and (and (not SIV_20) (= SIV_22 SIV_26)) (and (= SIV_23 SIV_20) (= (ControlFlow 1 228378) 233359)))))
 (let (($x369 (and (=> (and (= (ControlFlow 1 228377) 228378) $x359 (= (ControlFlow 1 233359) (- 0 233680))) $x303) (=> (and (= (ControlFlow 1 228377) 228379) (and SIV_20 (= (ControlFlow 1 228379) 228380)) (= (ControlFlow 1 228380) 228381) (and (= SIV_21 SIV_20) (= (ControlFlow 1 228381) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303))))
 (let (($x375 (=> (and (= (ControlFlow 1 228373) 228377) true (and true SIV_25)) $x369)))
 (let (($x408 (=> (and (and (not (= SIV_17 1)) (= (ControlFlow 1 228372) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV_25)) $x369)))
 (let (($x381 (=> (and (and (not (= SIV_19 1)) (= (ControlFlow 1 228375) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV_25)) $x369)))
 (let (($x319 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 228369) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x326 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 228374) 228369)) (and (= SIV_21 true) (= (ControlFlow 1 228369) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x400 (and (=> (and (= (ControlFlow 1 228371) 228374) (and (= SIV_19 1) (= (ControlFlow 1 228374) 228369)) (and (= SIV_21 true) (= (ControlFlow 1 228369) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303) (=> (and (= (ControlFlow 1 228371) 228375) (and (not (= SIV_19 1)) (= (ControlFlow 1 228375) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV_25)) $x369))))
 (let (($x393 (and (= SIV_18 (- $u0 10)) (= SIV_19 (ite (= SIV_15 SIV_18) 1 0)))))
 (let (($x383 (= SIV_17 1)))
 (let (($x421 (and (=> (and (= (ControlFlow 1 228370) 228371) $x383 $x393) $x400) (=> (and (= (ControlFlow 1 228370) 228372) (and (not $x383) (= (ControlFlow 1 228372) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV_25)) $x369))))
 (let (($x414 (and (not (= SIV_16 1)) (= SIV_17 (ite (> $u0 101) 1 0)))))
 (let (($x333 (=> (and (and (= SIV_16 1) (= (ControlFlow 1 228368) 228369)) (and (= SIV_21 true) (= (ControlFlow 1 228369) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x442 (and (=> (and (= (ControlFlow 1 228367) 228368) (and (= SIV_16 1) (= (ControlFlow 1 228368) 228369)) (and (= SIV_21 true) (= (ControlFlow 1 228369) 228376)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303) (=> (and (= (ControlFlow 1 228367) 228370) $x414) $x421))))
 (let (($x434 (and (boogie_si_record_i32 SIV_15) (= SIV_16 (ite (= SIV_15 91) 1 0)))))
 (let (($x435 (and (and (boogie_si_record_ref main_) (= SIV_15 (f91_cb $u0))) $x434)))
 (let (($x449 (=> (and (= (ControlFlow 1 233357) 228367) true (and true SIV_24) $x435) $x442)))
 (let (($x455 (and (= (ControlFlow 1 0) 233364) (not (=> (and (and true (= (ControlFlow 1 233364) 233357)) (= (ControlFlow 1 233357) 228367) true (and true SIV_24) $x435) $x442)))))
 (=> SIV_5 $x455))))))))))))))))))))))))))
(assert
 (let (($x540 (and (and true true) (and SIV_29 (= (ControlFlow 2 228881) (- 0 233783))))))
 (let (($x547 (=> (and (= (ControlFlow 2 233748) 228881) true (and true SIV_28) $x540) false)))
 (let (($x553 (and (= (ControlFlow 2 0) 233750) (not (=> (and (and true (= (ControlFlow 2 233750) 233748)) (= (ControlFlow 2 233748) 228881) true (and true SIV_28) $x540) false)))))
 (=> SIV_24 $x553)))))
(assert
 (let (($x565 (not SIV_34)))
 (let (($x566 (= SIV_20 $x565)))
 (let (($x567 (=> (= (ControlFlow 3 233813) (- 0 233898)) $x566)))
 (let (($x592 (=> (and (and (= SIV_34 SIV_33) (= (ControlFlow 3 228524) 233813)) (= (ControlFlow 3 233813) (- 0 233898))) $x566)))
 (let (($x599 (=> (and (and (= SIV_33 true) (= (ControlFlow 3 228523) 228524)) (and (= SIV_34 SIV_33) (= (ControlFlow 3 228524) 233813)) (= (ControlFlow 3 233813) (- 0 233898))) $x566)))
 (let (($x607 (=> (and (= (ControlFlow 3 228518) 228523) (not (= 0 $0)) (and (= SIV_33 true) (= (ControlFlow 3 228523) 228524)) (and (= SIV_34 SIV_33) (= (ControlFlow 3 228524) 233813)) (= (ControlFlow 3 233813) (- 0 233898))) $x566)))
 (let (($x574 (=> (and (and (= SIV_34 false) (= (ControlFlow 3 228520) 233813)) (= (ControlFlow 3 233813) (- 0 233898))) $x566)))
 (let (($x584 (and (=> (and (= (ControlFlow 3 228519) 228520) (not false) (and (= SIV_34 false) (= (ControlFlow 3 228520) 233813)) (= (ControlFlow 3 233813) (- 0 233898))) $x566) (=> (= (ControlFlow 3 228519) 228521) true))))
 (let (($x576 (= 0 $0)))
 (let (($x609 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 228518) 228519) $x576) $x584) $x607))))
 (let (($x617 (=> (and (and true (= (ControlFlow 3 233818) 233811)) (= (ControlFlow 3 233811) 228518) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 228518) 228519) $x576) $x584) $x607))))
 (=> SIV_25 (and (= (ControlFlow 3 0) 233818) (not $x617)))))))))))))))
(assert
 (let (($x672 (=> (and (= (ControlFlow 4 233918) 228846) (= (ControlFlow 4 228846) (- 0 233925))) false)))
 (let (($x678 (and (= (ControlFlow 4 0) 233920) (not (=> (and (and true (= (ControlFlow 4 233920) 233918)) (= (ControlFlow 4 233918) 228846) (= (ControlFlow 4 228846) (- 0 233925))) false)))))
 (=> SIV_28 $x678))))
(assert
 (let (($x693 (=> (and (= (ControlFlow 5 233933) 228810) (= (ControlFlow 5 228810) (- 0 233952))) false)))
 (let (($x699 (and (= (ControlFlow 5 0) 233935) (not (=> (and (and true (= (ControlFlow 5 233935) 233933)) (= (ControlFlow 5 233933) 228810) (= (ControlFlow 5 228810) (- 0 233952))) false)))))
 (=> SIV_29 $x699))))
(check-sat)
