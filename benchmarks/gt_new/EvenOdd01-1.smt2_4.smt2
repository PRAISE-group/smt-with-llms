; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () Int)
(declare-fun $1 () Int)
(declare-fun $0.ref () Int)
(declare-fun $1.ref () Int)
(declare-fun $1024.ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun $and.i1 (Int Int) Int)
(declare-fun $or.i1 (Int Int) Int)
(declare-fun $xor.i1 (Int Int) Int)
(declare-fun $and.i32 (Int Int) Int)
(declare-fun isOdd () Int)
(declare-fun main () Int)
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
(declare-fun llvm.dbg.value () Int)
(declare-fun __SMACK_static_init () Int)
(declare-fun SIV@3 () Bool)
(declare-fun SIV@2 () Bool)
(declare-fun SIV@4 () Int)
(declare-fun SIV@1 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@26 () Int)
(declare-fun SIV@25 () Bool)
(declare-fun SIV@19 () Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun SIV@18 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun $u0 () Int)
(declare-fun isOdd@@0 (Int) Int)
(declare-fun SIV@15 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@33 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 0))
(assert
 (= $1 1))
(assert
 (= $0.ref 0))
(assert
 (= $1.ref 1))
(assert
 (= $1024.ref 1024))
(assert
 (let ((?x23 (- 0 21672)))
 (= $GLOBALS_BOTTOM ?x23)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= ($and.i1 0 0) 0))
(assert
 (= ($or.i1 0 0) 0))
(assert
 (= ($xor.i1 0 0) 0))
(assert
 (= ($and.i1 0 1) 0))
(assert
 (= ($or.i1 0 1) 1))
(assert
 (= ($xor.i1 0 1) 1))
(assert
 (= ($and.i1 1 0) 0))
(assert
 (= ($or.i1 1 0) 1))
(assert
 (= ($xor.i1 1 0) 1))
(assert
 (= ($and.i1 1 1) 1))
(assert
 (= ($or.i1 1 1) 1))
(assert
 (= ($xor.i1 1 1) 0))
(assert
 (= ($and.i32 32 16) 0))
(assert
 (= isOdd (- 0 1032)))
(assert
 (= main (- 0 2064)))
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
 (= llvm.dbg.value (- 0 20640)))
(assert
 (let ((?x23 (- 0 21672)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 228853) (- 0 233249))))))
 (let (($x168 (=> (and (= (ControlFlow 0 233192) 228853) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 233195) (not (=> (and (and SIV@0 (= (ControlFlow 0 233195) 233192)) (= (ControlFlow 0 233192) 228853) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@22) (= SIV@3 SIV@23)))))
 (let (($x304 (=> (= (ControlFlow 1 233307) (- 0 233646)) $x303)))
 (let (($x312 (=> (and (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x313 (=> (and (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x340 (=> (and (and (= SIV@21 SIV@20) (= (ControlFlow 1 228329) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x349 (=> (and (and SIV@20 (= (ControlFlow 1 228327) 228328)) (= (ControlFlow 1 228328) 228329) (and (= SIV@21 SIV@20) (= (ControlFlow 1 228329) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x367 (and (and (not SIV@20) (= SIV@22 SIV@26)) (and (= SIV@23 SIV@20) (= (ControlFlow 1 228326) 233307)))))
 (let (($x377 (and (=> (and (= (ControlFlow 1 228325) 228326) $x367 (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228325) 228327) (and SIV@20 (= (ControlFlow 1 228327) 228328)) (= (ControlFlow 1 228328) 228329) (and (= SIV@21 SIV@20) (= (ControlFlow 1 228329) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303))))
 (let (($x385 (=> (and (and (not (= SIV@19 1)) (= (ControlFlow 1 228324) 228325)) true (and true SIV@25)) $x377)))
 (let (($x319 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 228321) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x326 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 228323) 228321)) (and (= SIV@21 true) (= (ControlFlow 1 228321) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x399 (and (=> (and (= (ControlFlow 1 228322) 228323) (and (= SIV@19 1) (= (ControlFlow 1 228323) 228321)) (and (= SIV@21 true) (= (ControlFlow 1 228321) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228322) 228324) (and (not (= SIV@19 1)) (= (ControlFlow 1 228324) 228325)) true (and true SIV@25)) $x377))))
 (let (($x392 (and (not (= SIV@18 1)) (= SIV@19 (ite (= SIV@16 SIV@17) 1 0)))))
 (let (($x333 (=> (and (and (= SIV@18 1) (= (ControlFlow 1 228320) 228321)) (and (= SIV@21 true) (= (ControlFlow 1 228321) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x432 (and (=> (and (= (ControlFlow 1 228318) 228320) (and (= SIV@18 1) (= (ControlFlow 1 228320) 228321)) (and (= SIV@21 true) (= (ControlFlow 1 228321) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228318) 228322) $x392) $x399))))
 (let (($x424 (and (boogie_si_record_i32 SIV@17) (= SIV@18 (ite (< SIV@16 0) 1 0)))))
 (let ((?x408 (mod $u0 2)))
 (let ((?x417 (ite (and (not (= ?x408 0)) (< $u0 0)) (- ?x408 (ite (> 2 (- 0 2)) 2 (- 0 2))) ?x408)))
 (let (($x433 (=> (and (and (boogie_si_record_i32 SIV@16) (= SIV@17 ?x417)) $x424) $x432)))
 (let (($x434 (=> (and (and (not (= SIV@15 1)) (= SIV@16 (isOdd@@0 $u0))) (and (and (boogie_si_record_i32 SIV@16) (= SIV@17 ?x417)) $x424)) $x432)))
 (let (($x356 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 228317) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303)))
 (let (($x351 (= SIV@15 1)))
 (let (($x448 (and (=> (and (= (ControlFlow 1 228316) 228317) $x351 (and (= SIV@21 true) (= (ControlFlow 1 228317) 228319)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228319) 233307)) (= (ControlFlow 1 233307) (- 0 233646))) $x303) (=> (and (= (ControlFlow 1 228316) 228318) (and (not $x351) (= SIV@16 (isOdd@@0 $u0))) (and (and (boogie_si_record_i32 SIV@16) (= SIV@17 ?x417)) $x424)) $x432))))
 (let (($x440 (and (boogie_si_record_ref main) (= SIV@15 (ite (< $u0 0) 1 0)))))
 (let (($x454 (=> (and (= (ControlFlow 1 233305) 228316) true (and (and true SIV@24) $x440)) $x448)))
 (let (($x460 (and (= (ControlFlow 1 0) 233312) (not (=> (and (and true (= (ControlFlow 1 233312) 233305)) (= (ControlFlow 1 233305) 228316) true (and (and true SIV@24) $x440)) $x448)))))
 (=> SIV@5 $x460))))))))))))))))))))))))))))
(assert
 (let (($x553 (and (and true true) (and SIV@29 (= (ControlFlow 2 228829) (- 0 233749))))))
 (let (($x560 (=> (and (= (ControlFlow 2 233714) 228829) true (and true SIV@28) $x553) false)))
 (let (($x566 (and (= (ControlFlow 2 0) 233716) (not (=> (and (and true (= (ControlFlow 2 233716) 233714)) (= (ControlFlow 2 233714) 228829) true (and true SIV@28) $x553) false)))))
 (=> SIV@24 $x566)))))
(assert
 (let (($x578 (not SIV@34)))
 (let (($x579 (= SIV@20 $x578)))
 (let (($x580 (=> (= (ControlFlow 3 233779) (- 0 233864)) $x579)))
 (let (($x605 (=> (and (and (= SIV@34 SIV@33) (= (ControlFlow 3 228472) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x612 (=> (and (and (= SIV@33 true) (= (ControlFlow 3 228471) 228472)) (and (= SIV@34 SIV@33) (= (ControlFlow 3 228472) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x620 (=> (and (= (ControlFlow 3 228466) 228471) (not (= 0 $0)) (and (= SIV@33 true) (= (ControlFlow 3 228471) 228472)) (and (= SIV@34 SIV@33) (= (ControlFlow 3 228472) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x587 (=> (and (and (= SIV@34 false) (= (ControlFlow 3 228468) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579)))
 (let (($x597 (and (=> (and (= (ControlFlow 3 228467) 228468) (not false) (and (= SIV@34 false) (= (ControlFlow 3 228468) 233779)) (= (ControlFlow 3 233779) (- 0 233864))) $x579) (=> (= (ControlFlow 3 228467) 228469) true))))
 (let (($x589 (= 0 $0)))
 (let (($x622 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 228466) 228467) $x589) $x597) $x620))))
 (let (($x630 (=> (and (and true (= (ControlFlow 3 233784) 233777)) (= (ControlFlow 3 233777) 228466) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 228466) 228467) $x589) $x597) $x620))))
 (=> SIV@25 (and (= (ControlFlow 3 0) 233784) (not $x630)))))))))))))))
(assert
 (not SIV@28))
(assert
 (not SIV@29))
(check-sat)
