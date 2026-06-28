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
(declare-fun isOdd () Int)
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
(declare-fun SIV_19 () Int)
(declare-fun SIV_17 () Int)
(declare-fun SIV_16 () Int)
(declare-fun SIV_18 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun $u0 () Int)
(declare-fun isOdd_cb (Int) Int)
(declare-fun SIV_15 () Int)
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
 (= isOdd (- 0 1032)))
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
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 228853) (- 0 233249))))))
 (let (($x168 (=> (and (= (ControlFlow 0 233192) 228853) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 233195) (not (=> (and (and SIV_0 (= (ControlFlow 0 233195) 233192)) (= (ControlFlow 0 233192) 228853) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x303 (not (and (= SIV_4 SIV_22) (= SIV_3 SIV_23)))))
 (let (($x304 (=> (= (ControlFlow 1 233307) (- 0 233646)) $x303)))
 (let (($x312 (=> (and (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x313 (=> (and (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x340 (=> (and (and (= SIV_21 SIV_20) (= (ControlFlow 1 228329) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x349 (=> (and (and SIV_20 (= (ControlFlow 1 228327) 228328)) (= (ControlFlow 1 228328) 228329) (and (= SIV_21 SIV_20) (= (ControlFlow 1 228329) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x367 (and (and (not SIV_20) (= SIV_22 SIV_26)) (and (= SIV_23 SIV_20) (= (ControlFlow 1 228326) 233307)))))
 (let (($x377 (and (=> (and (= (ControlFlow 1 228325) 228326) $x367 (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228325) 228327) (and SIV_20 (= (ControlFlow 1 228327) 228328)) (= (ControlFlow 1 228328) 228329) (and (= SIV_21 SIV_20) (= (ControlFlow 1 228329) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303))))
 (let (($x385 (=> (and (and (not (= SIV_19 1)) (= (ControlFlow 1 228324) 228325)) true (and true SIV_25)) $x377)))
 (let (($x319 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 228321) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x326 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 228323) 228321)) (and (= SIV_21 true) (= (ControlFlow 1 228321) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x399 (and (=> (and (= (ControlFlow 1 228322) 228323) (and (= SIV_19 1) (= (ControlFlow 1 228323) 228321)) (and (= SIV_21 true) (= (ControlFlow 1 228321) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228322) 228324) (and (not (= SIV_19 1)) (= (ControlFlow 1 228324) 228325)) true (and true SIV_25)) $x377))))
 (let (($x392 (and (not (= SIV_18 1)) (= SIV_19 (ite (= SIV_16 SIV_17) 1 0)))))
 (let (($x333 (=> (and (and (= SIV_18 1) (= (ControlFlow 1 228320) 228321)) (and (= SIV_21 true) (= (ControlFlow 1 228321) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x432 (and (=> (and (= (ControlFlow 1 228318) 228320) (and (= SIV_18 1) (= (ControlFlow 1 228320) 228321)) (and (= SIV_21 true) (= (ControlFlow 1 228321) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228318) 228322) $x392) $x399))))
 (let (($x424 (and (boogie_si_record_i32 SIV_17) (= SIV_18 (ite (< SIV_16 0) 1 0)))))
 (let ((?x408 (mod $u0 2)))
 (let ((?x417 (ite (and (not (= ?x408 0)) (< $u0 0)) (- ?x408 (ite (> 2 (- 0 2)) 2 (- 0 2))) ?x408)))
 (let (($x433 (=> (and (and (boogie_si_record_i32 SIV_16) (= SIV_17 ?x417)) $x424) $x432)))
 (let (($x434 (=> (and (and (not (= SIV_15 1)) (= SIV_16 (isOdd_cb $u0))) (and (and (boogie_si_record_i32 SIV_16) (= SIV_17 ?x417)) $x424)) $x432)))
 (let (($x356 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 228317) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x351 (= SIV_15 1)))
 (let (($x448 (and (=> (and (= (ControlFlow 1 228316) 228317) $x351 (and (= SIV_21 true) (= (ControlFlow 1 228317) 228319)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228316) 228318) (and (not $x351) (= SIV_16 (isOdd_cb $u0))) (and (and (boogie_si_record_i32 SIV_16) (= SIV_17 ?x417)) $x424)) $x432))))
 (let (($x440 (and (boogie_si_record_ref main_) (= SIV_15 (ite (< $u0 0) 1 0)))))
 (let (($x454 (=> (and (= (ControlFlow 1 233305) 228316) true (and (and true SIV_24) $x440)) $x448)))
 (let (($x460 (and (= (ControlFlow 1 0) 233312) (not (=> (and (and true (= (ControlFlow 1 233312) 233305)) (= (ControlFlow 1 233305) 228316) true (and (and true SIV_24) $x440)) $x448)))))
 (=> SIV_5 $x460))))))))))))))))))))))))))))
(assert
 (let (($x553 (and (and true true) (and SIV_29 (= (ControlFlow 2 228829) (- 0 233749))))))
 (let (($x560 (=> (and (= (ControlFlow 2 233714) 228829) true (and true SIV_28) $x553) false)))
 (let (($x566 (and (= (ControlFlow 2 0) 233716) (not (=> (and (and true (= (ControlFlow 2 233716) 233714)) (= (ControlFlow 2 233714) 228829) true (and true SIV_28) $x553) false)))))
 (=> SIV_24 $x566)))))
(assert
 (let (($x578 (not SIV_34)))
 (let (($x579 (= SIV_20 $x578)))
 (let (($x580 (=> (= (ControlFlow 3 233779) (- 0 233864)) $x579)))
 (let (($x605 (=> (and (and (= SIV_34 SIV_33) (= (ControlFlow 3 228472) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x612 (=> (and (and (= SIV_33 true) (= (ControlFlow 3 228471) 228472)) (and (= SIV_34 SIV_33) (= (ControlFlow 3 228472) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x620 (=> (and (= (ControlFlow 3 228466) 228471) (not (= 0 $0)) (and (= SIV_33 true) (= (ControlFlow 3 228471) 228472)) (and (= SIV_34 SIV_33) (= (ControlFlow 3 228472) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x587 (=> (and (and (= SIV_34 false) (= (ControlFlow 3 228468) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x597 (and (=> (and (= (ControlFlow 3 228467) 228468) (not false) (and (= SIV_34 false) (= (ControlFlow 3 228468) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579) (=> (= (ControlFlow 3 228467) 228469) true))))
 (let (($x589 (= 0 $0)))
 (let (($x622 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 228466) 228467) $x589) $x597) $x620))))
 (let (($x630 (=> (and (and true (= (ControlFlow 3 233784) 233777)) (= (ControlFlow 3 233777) 228466) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 228466) 228467) $x589) $x597) $x620))))
 (=> SIV_25 (and (= (ControlFlow 3 0) 233784) (not $x630)))))))))))))))
(check-sat)
