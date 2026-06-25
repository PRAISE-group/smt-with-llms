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
(declare-fun gcd () Int)
(declare-fun divides () Int)
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
(declare-fun SIV@28 () Bool)
(declare-fun SIV@32 () Int)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@27 () Int)
(declare-fun SIV@26 () Int)
(declare-fun divides@@0 (Int Int) Int)
(declare-fun $u0 () Int)
(declare-fun SIV@25 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@24 () Int)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@51 () Int)
(declare-fun SIV@50 () Int)
(declare-fun SIV@49 () Int)
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
 (let ((?x23 (- 0 22704)))
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
 (= gcd (- 0 1032)))
(assert
 (= divides (- 0 2064)))
(assert
 (= main (- 0 3096)))
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
 (= llvm.dbg.value (- 0 21672)))
(assert
 (let ((?x23 (- 0 22704)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x160 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 293023) (- 0 318236))))))
 (let (($x172 (=> (and (= (ControlFlow 0 318173) 293023) $x160) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 318176) (not (=> (and (and SIV@0 (= (ControlFlow 0 318176) 318173)) (= (ControlFlow 0 318173) 293023) $x160) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x196 (=> (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x197 (and true true)))
 (let (($x204 (=> (and (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x211 (=> (and (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x225 (and (= SIV@27 (ite (= SIV@26 0) 1 0)) (= (ControlFlow 1 293001) 293002))))
 (let (($x218 (and (boogie_si_record_i32 SIV@25) (= SIV@26 (divides@@0 SIV@25 $u0)))))
 (let (($x232 (=> (and (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x241 (=> (and (and $x197 (and SIV@30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x251 (and (= SIV@24 (ite (> $u0 0) 1 0)) (= (ControlFlow 1 292998) 292999))))
 (let (($x261 (and (= SIV@23 (ite (> $u0 0) 1 0)) (= (ControlFlow 1 292997) 292998))))
 (let (($x262 (=> (and $x261 (= SIV@23 1) $x251 (= SIV@24 1) (and $x197 (and SIV@30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x274 (and (= SIV@22 (ite (> $u0 2147483647) 1 0)) (= (ControlFlow 1 292996) 292997))))
 (let (($x276 (=> (and (not (= SIV@21 1)) $x274 (not (= SIV@22 1)) $x261 (= SIV@23 1) $x251 (= SIV@24 1) (and $x197 (and SIV@30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x286 (and (= SIV@21 (ite (<= $u0 0) 1 0)) (= (ControlFlow 1 292995) 292996))))
 (let (($x296 (and (= SIV@20 (ite (> $u0 2147483647) 1 0)) (= (ControlFlow 1 292994) 292995))))
 (let (($x298 (=> (and (not (= SIV@19 1)) $x296 (not (= SIV@20 1)) $x286 (not (= SIV@21 1)) $x274 (not (= SIV@22 1)) $x261 (= SIV@23 1) $x251 (= SIV@24 1) (and $x197 (and SIV@30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x306 (and (= SIV@19 (ite (<= $u0 0) 1 0)) (= (ControlFlow 1 292993) 292994))))
 (let (($x309 (=> (and $x197 (and (and SIV@29 (boogie_si_record_ref main)) $x306) (not (= SIV@19 1)) $x296 (not (= SIV@20 1)) $x286 (not (= SIV@21 1)) $x274 (not (= SIV@22 1)) $x261 (= SIV@23 1) $x251 (= SIV@24 1) (and $x197 (and SIV@30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x317 (=> (and (and true (= (ControlFlow 1 318295) 318292)) (= (ControlFlow 1 318292) 292993) $x197 (and (and SIV@29 (boogie_si_record_ref main)) $x306) (not (= SIV@19 1)) $x296 (not (= SIV@20 1)) $x286 (not (= SIV@21 1)) $x274 (not (= SIV@22 1)) $x261 (= SIV@23 1) $x251 (= SIV@24 1) (and $x197 (and SIV@30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV@27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV@31 (= (ControlFlow 1 293003) 293004))) (and (not SIV@28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 318295) (not $x317)))))))))))))))))))))))
(assert
 (let (($x197 (and true true)))
 (let (($x334 (and $x197 (and SIV@35 (= (ControlFlow 2 292233) (- 0 318954))))))
 (let (($x341 (=> (and (= (ControlFlow 2 318915) 292233) true (and true SIV@34) $x334) false)))
 (let (($x347 (and (= (ControlFlow 2 0) 318917) (not (=> (and (and true (= (ControlFlow 2 318917) 318915)) (= (ControlFlow 2 318915) 292233) true (and true SIV@34) $x334) false)))))
 (=> SIV@29 $x347))))))
(assert
 (let (($x360 (=> (= (ControlFlow 3 292494) (- 0 319220)) (not (= SIV@25 $u0)))))
 (let (($x367 (=> (and (and (= SIV@51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV@25 $u0)))))
 (let (($x374 (and (= SIV@51 (ite (= $u0 $u0) 1 0)) (= (ControlFlow 3 292492) 292493))))
 (let (($x383 (=> (and (and (not (= SIV@50 1)) (= (ControlFlow 3 292491) 292492)) $x374 (and (= SIV@51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV@25 $u0)))))
 (let (($x391 (and (= SIV@50 (ite (<= $u0 0) 1 0)) (= (ControlFlow 3 292490) 292491))))
 (let (($x400 (and (= SIV@49 (ite (<= $u0 0) 1 0)) (= (ControlFlow 3 292489) 292490))))
 (let (($x401 (and (and (boogie_si_record_i32 $u0) (boogie_si_record_i32 $u0)) $x400)))
 (let (($x406 (=> (and (= (ControlFlow 3 318982) 292489) $x401 (not (= SIV@49 1)) $x391 (and (not (= SIV@50 1)) (= (ControlFlow 3 292491) 292492)) $x374 (and (= SIV@51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV@25 $u0)))))
 (let (($x412 (and (= (ControlFlow 3 0) 318987) (not (=> (and (and true (= (ControlFlow 3 318987) 318982)) (= (ControlFlow 3 318982) 292489) $x401 (not (= SIV@49 1)) $x391 (and (not (= SIV@50 1)) (= (ControlFlow 3 292491) 292492)) $x374 (and (= SIV@51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV@25 $u0)))))))
 (=> SIV@30 $x412)))))))))))
(assert
 (let (($x426 (=> (and (not false) (= (ControlFlow 4 292566) (- 0 319342))) (= SIV@28 (not false)))))
 (let (($x438 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 4 292564) 292565)) (and (= 0 $0) (= (ControlFlow 4 292565) 292566)) (and (not false) (= (ControlFlow 4 292566) (- 0 319342)))) (= SIV@28 (not false)))))
 (let (($x446 (=> (and (and true (= (ControlFlow 4 319272) 319269)) (= (ControlFlow 4 319269) 292564) (and (boogie_si_record_i32 0) (= (ControlFlow 4 292564) 292565)) (and (= 0 $0) (= (ControlFlow 4 292565) 292566)) (and (not false) (= (ControlFlow 4 292566) (- 0 319342)))) (= SIV@28 (not false)))))
 (=> SIV@31 (and (= (ControlFlow 4 0) 319272) (not $x446)))))))
(assert
 (let (($x463 (=> (and (= (ControlFlow 5 319358) 292181) (= (ControlFlow 5 292181) (- 0 319365))) false)))
 (let (($x469 (and (= (ControlFlow 5 0) 319360) (not (=> (and (and true (= (ControlFlow 5 319360) 319358)) (= (ControlFlow 5 319358) 292181) (= (ControlFlow 5 292181) (- 0 319365))) false)))))
 (=> SIV@34 $x469))))
(assert
 (let (($x484 (=> (and (= (ControlFlow 6 319373) 292221) (= (ControlFlow 6 292221) (- 0 319404))) false)))
 (let (($x490 (and (= (ControlFlow 6 0) 319375) (not (=> (and (and true (= (ControlFlow 6 319375) 319373)) (= (ControlFlow 6 319373) 292221) (= (ControlFlow 6 292221) (- 0 319404))) false)))))
 (=> SIV@35 $x490))))
(check-sat)
