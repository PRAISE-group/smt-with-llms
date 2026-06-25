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
(declare-fun SIV_28 () Bool)
(declare-fun SIV_32 () Int)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_27 () Int)
(declare-fun SIV_26 () Int)
(declare-fun divides_cb (Int Int) Int)
(declare-fun $u0 () Int)
(declare-fun SIV_25 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_24 () Int)
(declare-fun SIV_23 () Int)
(declare-fun SIV_22 () Int)
(declare-fun SIV_21 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_29 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_51 () Int)
(declare-fun SIV_50 () Int)
(declare-fun SIV_49 () Int)
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
 (let (($x160 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 293023) (- 0 318236))))))
 (let (($x172 (=> (and (= (ControlFlow 0 318173) 293023) $x160) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 318176) (not (=> (and (and SIV_0 (= (ControlFlow 0 318176) 318173)) (= (ControlFlow 0 318173) 293023) $x160) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x196 (=> (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x197 (and true true)))
 (let (($x204 (=> (and (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x211 (=> (and (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x225 (and (= SIV_27 (ite (= SIV_26 0) 1 0)) (= (ControlFlow 1 293001) 293002))))
 (let (($x218 (and (boogie_si_record_i32 SIV_25) (= SIV_26 (divides_cb SIV_25 $u0)))))
 (let (($x232 (=> (and (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x241 (=> (and (and $x197 (and SIV_30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x251 (and (= SIV_24 (ite (> $u0 0) 1 0)) (= (ControlFlow 1 292998) 292999))))
 (let (($x261 (and (= SIV_23 (ite (> $u0 0) 1 0)) (= (ControlFlow 1 292997) 292998))))
 (let (($x262 (=> (and $x261 (= SIV_23 1) $x251 (= SIV_24 1) (and $x197 (and SIV_30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x274 (and (= SIV_22 (ite (> $u0 2147483647) 1 0)) (= (ControlFlow 1 292996) 292997))))
 (let (($x276 (=> (and (not (= SIV_21 1)) $x274 (not (= SIV_22 1)) $x261 (= SIV_23 1) $x251 (= SIV_24 1) (and $x197 (and SIV_30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x286 (and (= SIV_21 (ite (<= $u0 0) 1 0)) (= (ControlFlow 1 292995) 292996))))
 (let (($x296 (and (= SIV_20 (ite (> $u0 2147483647) 1 0)) (= (ControlFlow 1 292994) 292995))))
 (let (($x298 (=> (and (not (= SIV_19 1)) $x296 (not (= SIV_20 1)) $x286 (not (= SIV_21 1)) $x274 (not (= SIV_22 1)) $x261 (= SIV_23 1) $x251 (= SIV_24 1) (and $x197 (and SIV_30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x306 (and (= SIV_19 (ite (<= $u0 0) 1 0)) (= (ControlFlow 1 292993) 292994))))
 (let (($x309 (=> (and $x197 (and (and SIV_29 (boogie_si_record_ref main_)) $x306) (not (= SIV_19 1)) $x296 (not (= SIV_20 1)) $x286 (not (= SIV_21 1)) $x274 (not (= SIV_22 1)) $x261 (= SIV_23 1) $x251 (= SIV_24 1) (and $x197 (and SIV_30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (let (($x317 (=> (and (and true (= (ControlFlow 1 318295) 318292)) (= (ControlFlow 1 318292) 292993) $x197 (and (and SIV_29 (boogie_si_record_ref main_)) $x306) (not (= SIV_19 1)) $x296 (not (= SIV_20 1)) $x286 (not (= SIV_21 1)) $x274 (not (= SIV_22 1)) $x261 (= SIV_23 1) $x251 (= SIV_24 1) (and $x197 (and SIV_30 (= (ControlFlow 1 292999) 293000))) (and true (= (ControlFlow 1 293000) 293001)) (and $x218 $x225) (and (= SIV_27 1) (= (ControlFlow 1 293002) 293003)) (and $x197 (and SIV_31 (= (ControlFlow 1 293003) 293004))) (and (not SIV_28) (= (ControlFlow 1 293004) (- 0 318829)))) (not (and (= SIV_4 SIV_32) (= SIV_3 SIV_28))))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 318295) (not $x317)))))))))))))))))))))))
(assert
 (let (($x197 (and true true)))
 (let (($x334 (and $x197 (and SIV_35 (= (ControlFlow 2 292233) (- 0 318954))))))
 (let (($x341 (=> (and (= (ControlFlow 2 318915) 292233) true (and true SIV_34) $x334) false)))
 (let (($x347 (and (= (ControlFlow 2 0) 318917) (not (=> (and (and true (= (ControlFlow 2 318917) 318915)) (= (ControlFlow 2 318915) 292233) true (and true SIV_34) $x334) false)))))
 (=> SIV_29 $x347))))))
(assert
 (let (($x360 (=> (= (ControlFlow 3 292494) (- 0 319220)) (not (= SIV_25 $u0)))))
 (let (($x367 (=> (and (and (= SIV_51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV_25 $u0)))))
 (let (($x374 (and (= SIV_51 (ite (= $u0 $u0) 1 0)) (= (ControlFlow 3 292492) 292493))))
 (let (($x383 (=> (and (and (not (= SIV_50 1)) (= (ControlFlow 3 292491) 292492)) $x374 (and (= SIV_51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV_25 $u0)))))
 (let (($x391 (and (= SIV_50 (ite (<= $u0 0) 1 0)) (= (ControlFlow 3 292490) 292491))))
 (let (($x400 (and (= SIV_49 (ite (<= $u0 0) 1 0)) (= (ControlFlow 3 292489) 292490))))
 (let (($x401 (and (and (boogie_si_record_i32 $u0) (boogie_si_record_i32 $u0)) $x400)))
 (let (($x406 (=> (and (= (ControlFlow 3 318982) 292489) $x401 (not (= SIV_49 1)) $x391 (and (not (= SIV_50 1)) (= (ControlFlow 3 292491) 292492)) $x374 (and (= SIV_51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV_25 $u0)))))
 (let (($x412 (and (= (ControlFlow 3 0) 318987) (not (=> (and (and true (= (ControlFlow 3 318987) 318982)) (= (ControlFlow 3 318982) 292489) $x401 (not (= SIV_49 1)) $x391 (and (not (= SIV_50 1)) (= (ControlFlow 3 292491) 292492)) $x374 (and (= SIV_51 1) (= (ControlFlow 3 292493) 292494)) (= (ControlFlow 3 292494) (- 0 319220))) (not (= SIV_25 $u0)))))))
 (=> SIV_30 $x412)))))))))))
(assert
 (let (($x426 (=> (and (not false) (= (ControlFlow 4 292566) (- 0 319342))) (= SIV_28 (not false)))))
 (let (($x438 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 4 292564) 292565)) (and (= 0 $0) (= (ControlFlow 4 292565) 292566)) (and (not false) (= (ControlFlow 4 292566) (- 0 319342)))) (= SIV_28 (not false)))))
 (let (($x446 (=> (and (and true (= (ControlFlow 4 319272) 319269)) (= (ControlFlow 4 319269) 292564) (and (boogie_si_record_i32 0) (= (ControlFlow 4 292564) 292565)) (and (= 0 $0) (= (ControlFlow 4 292565) 292566)) (and (not false) (= (ControlFlow 4 292566) (- 0 319342)))) (= SIV_28 (not false)))))
 (=> SIV_31 (and (= (ControlFlow 4 0) 319272) (not $x446)))))))
(assert
 (let (($x463 (=> (and (= (ControlFlow 5 319358) 292181) (= (ControlFlow 5 292181) (- 0 319365))) false)))
 (let (($x469 (and (= (ControlFlow 5 0) 319360) (not (=> (and (and true (= (ControlFlow 5 319360) 319358)) (= (ControlFlow 5 319358) 292181) (= (ControlFlow 5 292181) (- 0 319365))) false)))))
 (=> SIV_34 $x469))))
(assert
 (let (($x484 (=> (and (= (ControlFlow 6 319373) 292221) (= (ControlFlow 6 292221) (- 0 319404))) false)))
 (let (($x490 (and (= (ControlFlow 6 0) 319375) (not (=> (and (and true (= (ControlFlow 6 319375) 319373)) (= (ControlFlow 6 319373) 292221) (= (ControlFlow 6 292221) (- 0 319404))) false)))))
 (=> SIV_35 $x490))))
(check-sat)
