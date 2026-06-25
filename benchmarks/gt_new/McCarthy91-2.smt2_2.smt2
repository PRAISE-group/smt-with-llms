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
(declare-fun f91 () Int)
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
(declare-fun SIV@17 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@15 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@16 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun f91@@0 (Int) Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@24 () Bool)
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
 (= f91 (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 228905) (- 0 233301))))))
 (let (($x168 (=> (and (= (ControlFlow 0 233244) 228905) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 233247) (not (=> (and (and SIV@0 (= (ControlFlow 0 233247) 233244)) (= (ControlFlow 0 233244) 228905) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@22) (= SIV@3 SIV@23)))))
 (let (($x304 (=> (= (ControlFlow 1 233359) (- 0 233680)) $x303)))
 (let (($x312 (=> (and (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x313 (=> (and (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x340 (=> (and (and (= SIV@21 SIV@20) (= (ControlFlow 1 228381) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x349 (=> (and (and SIV@20 (= (ControlFlow 1 228379) 228380)) (= (ControlFlow 1 228380) 228381) (and (= SIV@21 SIV@20) (= (ControlFlow 1 228381) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x359 (and (and (not SIV@20) (= SIV@22 SIV@26)) (and (= SIV@23 SIV@20) (= (ControlFlow 1 228378) 233359)))))
 (let (($x369 (and (=> (and (= (ControlFlow 1 228377) 228378) $x359 (= (ControlFlow 1 233359) (- 0 233680))) $x303) (=> (and (= (ControlFlow 1 228377) 228379) (and SIV@20 (= (ControlFlow 1 228379) 228380)) (= (ControlFlow 1 228380) 228381) (and (= SIV@21 SIV@20) (= (ControlFlow 1 228381) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303))))
 (let (($x375 (=> (and (= (ControlFlow 1 228373) 228377) true (and true SIV@25)) $x369)))
 (let (($x408 (=> (and (and (not (= SIV@17 1)) (= (ControlFlow 1 228372) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV@25)) $x369)))
 (let (($x381 (=> (and (and (not (= SIV@19 1)) (= (ControlFlow 1 228375) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV@25)) $x369)))
 (let (($x319 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 228369) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x326 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 228374) 228369)) (and (= SIV@21 true) (= (ControlFlow 1 228369) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x400 (and (=> (and (= (ControlFlow 1 228371) 228374) (and (= SIV@19 1) (= (ControlFlow 1 228374) 228369)) (and (= SIV@21 true) (= (ControlFlow 1 228369) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303) (=> (and (= (ControlFlow 1 228371) 228375) (and (not (= SIV@19 1)) (= (ControlFlow 1 228375) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV@25)) $x369))))
 (let (($x393 (and (= SIV@18 (- $u0 10)) (= SIV@19 (ite (= SIV@15 SIV@18) 1 0)))))
 (let (($x383 (= SIV@17 1)))
 (let (($x421 (and (=> (and (= (ControlFlow 1 228370) 228371) $x383 $x393) $x400) (=> (and (= (ControlFlow 1 228370) 228372) (and (not $x383) (= (ControlFlow 1 228372) 228373)) (= (ControlFlow 1 228373) 228377) true (and true SIV@25)) $x369))))
 (let (($x414 (and (not (= SIV@16 1)) (= SIV@17 (ite (> $u0 101) 1 0)))))
 (let (($x333 (=> (and (and (= SIV@16 1) (= (ControlFlow 1 228368) 228369)) (and (= SIV@21 true) (= (ControlFlow 1 228369) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303)))
 (let (($x442 (and (=> (and (= (ControlFlow 1 228367) 228368) (and (= SIV@16 1) (= (ControlFlow 1 228368) 228369)) (and (= SIV@21 true) (= (ControlFlow 1 228369) 228376)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 228376) 233359)) (= (ControlFlow 1 233359) (- 0 233680))) $x303) (=> (and (= (ControlFlow 1 228367) 228370) $x414) $x421))))
 (let (($x434 (and (boogie_si_record_i32 SIV@15) (= SIV@16 (ite (= SIV@15 91) 1 0)))))
 (let (($x435 (and (and (boogie_si_record_ref main) (= SIV@15 (f91@@0 $u0))) $x434)))
 (let (($x449 (=> (and (= (ControlFlow 1 233357) 228367) true (and true SIV@24) $x435) $x442)))
 (let (($x455 (and (= (ControlFlow 1 0) 233364) (not (=> (and (and true (= (ControlFlow 1 233364) 233357)) (= (ControlFlow 1 233357) 228367) true (and true SIV@24) $x435) $x442)))))
 (=> SIV@5 $x455))))))))))))))))))))))))))
(assert
 (not SIV@24))
(assert
 (not SIV@25))
(check-sat)
