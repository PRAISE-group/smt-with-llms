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
(declare-fun id () Int)
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
(declare-fun __VERIFIER_nondet_unsigned_int () Int)
(declare-fun __SMACK_nondet_unsigned_int () Int)
(declare-fun __VERIFIER_nondet_uint () Int)
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
(declare-fun SIV@16 () Bool)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Bool)
(declare-fun SIV@15 () Int)
(declare-fun SIV@14 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun id_cb (Int) Int)
(declare-fun SIV@13 () Int)
(declare-fun SIV@18 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@17 () Bool)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@27 () Int)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@49 () Int)
(declare-fun SIV@60 () Bool)
(declare-fun SIV@57 () Int)
(declare-fun SIV@58 () Int)
(declare-fun SIV@51 () Int)
(declare-fun SIV@56 () Int)
(declare-fun SIV@50 () Int)
(declare-fun SIV@59 () Bool)
(declare-fun SIV@54 () Int)
(declare-fun SIV@55 () Int)
(declare-fun SIV@53 () Int)
(declare-fun SIV@52 () Int)
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
 (let ((?x23 (- 0 24768)))
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
 (= id (- 0 1032)))
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
 (= llvm.dbg.value (- 0 23736)))
(assert
 (let ((?x23 (- 0 24768)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 290010) (- 0 315419))))))
 (let (($x180 (=> (and (= (ControlFlow 0 315356) 290010) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 315359) (not (=> (and (and SIV@0 (= (ControlFlow 0 315359) 315356)) (= (ControlFlow 0 315356) 290010) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x204 (=> (and (not SIV@16) (= (ControlFlow 1 289991) (- 0 315754))) (not (and (= SIV@4 SIV@20) (= SIV@3 SIV@16))))))
 (let (($x205 (and true true)))
 (let (($x212 (=> (and (and $x205 (and SIV@19 (= (ControlFlow 1 289990) 289991))) (and (not SIV@16) (= (ControlFlow 1 289991) (- 0 315754)))) (not (and (= SIV@4 SIV@20) (= SIV@3 SIV@16))))))
 (let (($x219 (=> (and (and (= SIV@15 1) (= (ControlFlow 1 289989) 289990)) (and $x205 (and SIV@19 (= (ControlFlow 1 289990) 289991))) (and (not SIV@16) (= (ControlFlow 1 289991) (- 0 315754)))) (not (and (= SIV@4 SIV@20) (= SIV@3 SIV@16))))))
 (let (($x243 (and (= SIV@15 (ite (= SIV@14 3) 1 0)) (= (ControlFlow 1 289988) 289989))))
 (let (($x244 (and (and (= SIV@14 (id_cb SIV@13)) (boogie_si_record_i32 SIV@14)) $x243)))
 (let (($x230 (and (and true SIV@18) (and (boogie_si_record_i32 SIV@13) (boogie_si_record_i32 SIV@13)))))
 (let (($x247 (=> (and (and (and true SIV@17) (and (boogie_si_record_ref main) true)) (and $x230 $x244) (and (= SIV@15 1) (= (ControlFlow 1 289989) 289990)) (and $x205 (and SIV@19 (= (ControlFlow 1 289990) 289991))) (and (not SIV@16) (= (ControlFlow 1 289991) (- 0 315754)))) (not (and (= SIV@4 SIV@20) (= SIV@3 SIV@16))))))
 (let (($x256 (=> (and (and true (= (ControlFlow 1 315478) 315475)) (= (ControlFlow 1 315475) 289988) true (and (and true SIV@17) (and (boogie_si_record_ref main) true)) (and $x230 $x244) (and (= SIV@15 1) (= (ControlFlow 1 289989) 289990)) (and $x205 (and SIV@19 (= (ControlFlow 1 289990) 289991))) (and (not SIV@16) (= (ControlFlow 1 289991) (- 0 315754)))) (not (and (= SIV@4 SIV@20) (= SIV@3 SIV@16))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 315478) (not $x256)))))))))))))
(assert
 (let (($x205 (and true true)))
 (let (($x273 (and $x205 (and SIV@23 (= (ControlFlow 2 289093) (- 0 315855))))))
 (let (($x280 (=> (and (= (ControlFlow 2 315816) 289093) true (and true SIV@22) $x273) false)))
 (let (($x286 (and (= (ControlFlow 2 0) 315818) (not (=> (and (and true (= (ControlFlow 2 315818) 315816)) (= (ControlFlow 2 315816) 289093) true (and true SIV@22) $x273) false)))))
 (=> SIV@17 $x286))))))
(assert
 (let (($x293 (boogie_si_record_i32 SIV@27)))
 (let (($x301 (and (and SIV@28 $x293) (and $x293 (= (ControlFlow 3 289753) (- 0 315992))))))
 (let (($x205 (and true true)))
 (let (($x309 (=> (and (= (ControlFlow 3 315883) 289753) $x205 $x301) (not (= SIV@13 SIV@27)))))
 (let (($x315 (and (= (ControlFlow 3 0) 315886) (not (=> (and (and true (= (ControlFlow 3 315886) 315883)) (= (ControlFlow 3 315883) 289753) $x205 $x301) (not (= SIV@13 SIV@27)))))))
 (=> SIV@18 $x315)))))))
(assert
 (let (($x329 (=> (and (not false) (= (ControlFlow 4 289825) (- 0 316097))) (= SIV@16 (not false)))))
 (let (($x341 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 4 289823) 289824)) (and (= 0 $0) (= (ControlFlow 4 289824) 289825)) (and (not false) (= (ControlFlow 4 289825) (- 0 316097)))) (= SIV@16 (not false)))))
 (let (($x349 (=> (and (and true (= (ControlFlow 4 316027) 316024)) (= (ControlFlow 4 316024) 289823) (and (boogie_si_record_i32 0) (= (ControlFlow 4 289823) 289824)) (and (= 0 $0) (= (ControlFlow 4 289824) 289825)) (and (not false) (= (ControlFlow 4 289825) (- 0 316097)))) (= SIV@16 (not false)))))
 (=> SIV@19 (and (= (ControlFlow 4 0) 316027) (not $x349)))))))
(assert
 (let (($x366 (=> (and (= (ControlFlow 5 316113) 289041) (= (ControlFlow 5 289041) (- 0 316120))) false)))
 (let (($x372 (and (= (ControlFlow 5 0) 316115) (not (=> (and (and true (= (ControlFlow 5 316115) 316113)) (= (ControlFlow 5 316113) 289041) (= (ControlFlow 5 289041) (- 0 316120))) false)))))
 (=> SIV@22 $x372))))
(assert
 (let (($x387 (=> (and (= (ControlFlow 6 316128) 289081) (= (ControlFlow 6 289081) (- 0 316159))) false)))
 (let (($x393 (and (= (ControlFlow 6 0) 316130) (not (=> (and (and true (= (ControlFlow 6 316130) 316128)) (= (ControlFlow 6 316128) 289081) (= (ControlFlow 6 289081) (- 0 316159))) false)))))
 (=> SIV@23 $x393))))
(assert
 (let (($x205 (and true true)))
 (let (($x409 (and $x205 (and SIV@60 (= (ControlFlow 7 289688) (- 0 316739))))))
 (let (($x424 (and (= SIV@57 (ite (<= SIV@49 SIV@51) 1 0)) (= (ControlFlow 7 289687) 289688))))
 (let (($x425 (=> (and $x424 (= SIV@58 SIV@57) $x409) (not (= SIV@27 SIV@49)))))
 (let (($x440 (and (= SIV@56 (ite (>= SIV@49 SIV@50) 1 0)) (= (ControlFlow 7 289686) 289687))))
 (let (($x443 (=> (and (and (= SIV@55 SIV@54) true) (and (and true SIV@59) $x440) (= SIV@56 1) $x424 (= SIV@58 SIV@57) $x409) (not (= SIV@27 SIV@49)))))
 (let (($x453 (and (= SIV@54 (ite (<= SIV@51 4294967295) 1 0)) (= (ControlFlow 7 289685) 289686))))
 (let (($x464 (and (= SIV@53 (ite (>= SIV@51 4294967295) 1 0)) (= (ControlFlow 7 289684) 289685))))
 (let (($x466 (=> (and (= SIV@52 1) $x464 (= SIV@53 1) $x453 (and (= SIV@55 SIV@54) true) (and (and true SIV@59) $x440) (= SIV@56 1) $x424 (= SIV@58 SIV@57) $x409) (not (= SIV@27 SIV@49)))))
 (let (($x480 (and (= SIV@52 (ite (= SIV@50 0) 1 0)) (= (ControlFlow 7 289683) 289684))))
 (let (($x481 (and (and (boogie_si_record_i32 SIV@51) (boogie_si_record_i32 SIV@51)) $x480)))
 (let (($x471 (and (and (boogie_si_record_i32 SIV@49) (boogie_si_record_i32 SIV@49)) (and (boogie_si_record_i32 SIV@50) (boogie_si_record_i32 SIV@50)))))
 (let (($x491 (=> (and (and true (= (ControlFlow 7 316176) 316173)) (= (ControlFlow 7 316173) 289683) (and $x471 $x481) (= SIV@52 1) $x464 (= SIV@53 1) $x453 (and (= SIV@55 SIV@54) true) (and (and true SIV@59) $x440) (= SIV@56 1) $x424 (= SIV@58 SIV@57) $x409) (not (= SIV@27 SIV@49)))))
 (=> SIV@28 (and (= (ControlFlow 7 0) 316176) (not $x491)))))))))))))))))
(assert
 (let (($x507 (and (not (= SIV@55 $0)) (= (ControlFlow 8 289173) (- 0 316881)))))
 (let (($x513 (=> (and (= (ControlFlow 8 316812) 289173) (boogie_si_record_i32 SIV@55) $x507) false)))
 (let (($x519 (and (= (ControlFlow 8 0) 316815) (not (=> (and (and true (= (ControlFlow 8 316815) 316812)) (= (ControlFlow 8 316812) 289173) (boogie_si_record_i32 SIV@55) $x507) false)))))
 (=> SIV@59 $x519)))))
(assert
 (let (($x533 (and (not (= SIV@58 $0)) (= (ControlFlow 9 289241) (- 0 316960)))))
 (let (($x539 (=> (and (= (ControlFlow 9 316891) 289241) (boogie_si_record_i32 SIV@58) $x533) false)))
 (let (($x545 (and (= (ControlFlow 9 0) 316894) (not (=> (and (and true (= (ControlFlow 9 316894) 316891)) (= (ControlFlow 9 316891) 289241) (boogie_si_record_i32 SIV@58) $x533) false)))))
 (=> SIV@60 $x545)))))
(check-sat)
