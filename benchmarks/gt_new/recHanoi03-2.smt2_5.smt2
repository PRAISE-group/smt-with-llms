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
(declare-fun hanoi () Int)
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
(declare-fun SIV@21 () Bool)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Bool)
(declare-fun SIV@18 () Bool)
(declare-fun SIV@24 () Int)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@17 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@16 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun hanoi@@0 (Int) Int)
(declare-fun SIV@15 () Int)
(declare-fun SIV@14 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@32 () Bool)
(declare-fun SIV@31 () Bool)
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
 (= hanoi (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 228638) (- 0 233003))))))
 (let (($x168 (=> (and (= (ControlFlow 0 232946) 228638) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 232949) (not (=> (and (and SIV@0 (= (ControlFlow 0 232949) 232946)) (= (ControlFlow 0 232946) 228638) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@20) (= SIV@3 SIV@21)))))
 (let (($x304 (=> (= (ControlFlow 1 233061) (- 0 233366)) $x303)))
 (let (($x312 (=> (and (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x313 (=> (and (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x340 (=> (and (and (= SIV@19 SIV@18) (= (ControlFlow 1 228114) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x349 (=> (and (and SIV@18 (= (ControlFlow 1 228112) 228113)) (= (ControlFlow 1 228113) 228114) (and (= SIV@19 SIV@18) (= (ControlFlow 1 228114) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x367 (and (and (not SIV@18) (= SIV@20 SIV@24)) (and (= SIV@21 SIV@18) (= (ControlFlow 1 228111) 233061)))))
 (let (($x377 (and (=> (and (= (ControlFlow 1 228110) 228111) $x367 (= (ControlFlow 1 233061) (- 0 233366))) $x303) (=> (and (= (ControlFlow 1 228110) 228112) (and SIV@18 (= (ControlFlow 1 228112) 228113)) (= (ControlFlow 1 228113) 228114) (and (= SIV@19 SIV@18) (= (ControlFlow 1 228114) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303))))
 (let (($x385 (=> (and (and (not (= SIV@17 1)) (= (ControlFlow 1 228109) 228110)) true (and true SIV@23)) $x377)))
 (let (($x356 (=> (and (and (= SIV@19 true) (= (ControlFlow 1 228108) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x351 (= SIV@17 1)))
 (let (($x404 (and (=> (and (= (ControlFlow 1 228106) 228108) $x351 (and (= SIV@19 true) (= (ControlFlow 1 228108) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303) (=> (and (= (ControlFlow 1 228106) 228109) (and (not $x351) (= (ControlFlow 1 228109) 228110)) true (and true SIV@23)) $x377))))
 (let (($x396 (and (boogie_si_record_i32 SIV@16) (= SIV@17 (ite (>= SIV@16 $u0) 1 0)))))
 (let (($x397 (and (and (not (= SIV@15 1)) (= SIV@16 (hanoi@@0 $u0))) $x396)))
 (let (($x319 (=> (and (and (= SIV@19 true) (= (ControlFlow 1 228103) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x326 (=> (and (and (= SIV@15 1) (= (ControlFlow 1 228105) 228103)) (and (= SIV@19 true) (= (ControlFlow 1 228103) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x418 (and (=> (and (= (ControlFlow 1 228104) 228105) (and (= SIV@15 1) (= (ControlFlow 1 228105) 228103)) (and (= SIV@19 true) (= (ControlFlow 1 228103) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303) (=> (and (= (ControlFlow 1 228104) 228106) $x397) $x404))))
 (let (($x411 (and (not (= SIV@14 1)) (= SIV@15 (ite (> $u0 31) 1 0)))))
 (let (($x333 (=> (and (and (= SIV@14 1) (= (ControlFlow 1 228102) 228103)) (and (= SIV@19 true) (= (ControlFlow 1 228103) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303)))
 (let (($x434 (and (=> (and (= (ControlFlow 1 228101) 228102) (and (= SIV@14 1) (= (ControlFlow 1 228102) 228103)) (and (= SIV@19 true) (= (ControlFlow 1 228103) 228107)) (= SIV@20 0) (and (= SIV@21 SIV@19) (= (ControlFlow 1 228107) 233061)) (= (ControlFlow 1 233061) (- 0 233366))) $x303) (=> (and (= (ControlFlow 1 228101) 228104) $x411) $x418))))
 (let (($x426 (and (boogie_si_record_ref main) (= SIV@14 (ite (< $u0 1) 1 0)))))
 (let (($x440 (=> (and (= (ControlFlow 1 233059) 228101) true (and (and true SIV@22) $x426)) $x434)))
 (let (($x446 (and (= (ControlFlow 1 0) 233066) (not (=> (and (and true (= (ControlFlow 1 233066) 233059)) (= (ControlFlow 1 233059) 228101) true (and (and true SIV@22) $x426)) $x434)))))
 (=> SIV@5 $x446)))))))))))))))))))))))))
(assert
 (let (($x533 (and (and true true) (and SIV@27 (= (ControlFlow 2 228614) (- 0 233465))))))
 (let (($x540 (=> (and (= (ControlFlow 2 233430) 228614) true (and true SIV@26) $x533) false)))
 (let (($x546 (and (= (ControlFlow 2 0) 233432) (not (=> (and (and true (= (ControlFlow 2 233432) 233430)) (= (ControlFlow 2 233430) 228614) true (and true SIV@26) $x533) false)))))
 (=> SIV@22 $x546)))))
(assert
 (let (($x558 (not SIV@32)))
 (let (($x559 (= SIV@18 $x558)))
 (let (($x560 (=> (= (ControlFlow 3 233495) (- 0 233580)) $x559)))
 (let (($x585 (=> (and (and (= SIV@32 SIV@31) (= (ControlFlow 3 228257) 233495)) (= (ControlFlow 3 233495) (- 0 233580))) $x559)))
 (let (($x592 (=> (and (and (= SIV@31 true) (= (ControlFlow 3 228256) 228257)) (and (= SIV@32 SIV@31) (= (ControlFlow 3 228257) 233495)) (= (ControlFlow 3 233495) (- 0 233580))) $x559)))
 (let (($x600 (=> (and (= (ControlFlow 3 228251) 228256) (not (= 0 $0)) (and (= SIV@31 true) (= (ControlFlow 3 228256) 228257)) (and (= SIV@32 SIV@31) (= (ControlFlow 3 228257) 233495)) (= (ControlFlow 3 233495) (- 0 233580))) $x559)))
 (let (($x567 (=> (and (and (= SIV@32 false) (= (ControlFlow 3 228253) 233495)) (= (ControlFlow 3 233495) (- 0 233580))) $x559)))
 (let (($x577 (and (=> (and (= (ControlFlow 3 228252) 228253) (not false) (and (= SIV@32 false) (= (ControlFlow 3 228253) 233495)) (= (ControlFlow 3 233495) (- 0 233580))) $x559) (=> (= (ControlFlow 3 228252) 228254) true))))
 (let (($x569 (= 0 $0)))
 (let (($x602 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 228251) 228252) $x569) $x577) $x600))))
 (let (($x610 (=> (and (and true (= (ControlFlow 3 233500) 233493)) (= (ControlFlow 3 233493) 228251) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 228251) 228252) $x569) $x577) $x600))))
 (=> SIV@23 (and (= (ControlFlow 3 0) 233500) (not $x610)))))))))))))))
(check-sat)
