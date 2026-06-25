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
(declare-fun ackermann () Int)
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
(declare-fun SIV_26 () Bool)
(declare-fun SIV_29 () Int)
(declare-fun SIV_28 () Bool)
(declare-fun SIV_25 () Int)
(declare-fun SIV_22 () Int)
(declare-fun SIV_24 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV_23 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun ackermann_cb (Int Int) Int)
(declare-fun SIV_21 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_32 () Bool)
(declare-fun SIV_31 () Bool)
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
 (= ackermann (- 0 1032)))
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
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 286502) (- 0 311343))))))
 (let (($x168 (=> (and (= (ControlFlow 0 311280) 286502) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 311283) (not (=> (and (and SIV_0 (= (ControlFlow 0 311283) 311280)) (= (ControlFlow 0 311280) 286502) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x192 (=> (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x208 (=> (and (and (not (= SIV_25 1)) (= (ControlFlow 1 286481) 286482)) (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x220 (and (= SIV_25 (ite (= SIV_22 7) 1 0)) (= (ControlFlow 1 286480) 286481))))
 (let (($x235 (and (= SIV_24 (ite (not (= $u0 2)) 1 0)) (= (ControlFlow 1 286479) 286480))))
 (let (($x237 (=> (and (not (= SIV_23 1)) $x235 (not (= SIV_24 1)) $x220 (and (not (= SIV_25 1)) (= (ControlFlow 1 286481) 286482)) (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x249 (and (= SIV_23 (ite (not (= $u0 2)) 1 0)) (= (ControlFlow 1 286478) 286479))))
 (let (($x244 (and (= SIV_22 (ackermann_cb $u0 $u0)) (boogie_si_record_i32 SIV_22))))
 (let (($x263 (and (= SIV_21 (ite (> $u0 23) 1 0)) (= (ControlFlow 1 286477) 286478))))
 (let (($x265 (=> (and (not (= SIV_20 1)) $x263 (not (= SIV_21 1)) (and $x244 $x249) (not (= SIV_23 1)) $x235 (not (= SIV_24 1)) $x220 (and (not (= SIV_25 1)) (= (ControlFlow 1 286481) 286482)) (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x275 (and (= SIV_20 (ite (< $u0 0) 1 0)) (= (ControlFlow 1 286476) 286477))))
 (let (($x288 (and (= SIV_19 (ite (> $u0 3) 1 0)) (= (ControlFlow 1 286475) 286476))))
 (let (($x290 (=> (and (not (= SIV_18 1)) $x288 (not (= SIV_19 1)) $x275 (not (= SIV_20 1)) $x263 (not (= SIV_21 1)) (and $x244 $x249) (not (= SIV_23 1)) $x235 (not (= SIV_24 1)) $x220 (and (not (= SIV_25 1)) (= (ControlFlow 1 286481) 286482)) (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x298 (and (= SIV_18 (ite (< $u0 0) 1 0)) (= (ControlFlow 1 286474) 286475))))
 (let (($x301 (=> (and $x193 (and (and SIV_27 (boogie_si_record_ref main_)) $x298) (not (= SIV_18 1)) $x288 (not (= SIV_19 1)) $x275 (not (= SIV_20 1)) $x263 (not (= SIV_21 1)) (and $x244 $x249) (not (= SIV_23 1)) $x235 (not (= SIV_24 1)) $x220 (and (not (= SIV_25 1)) (= (ControlFlow 1 286481) 286482)) (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (let (($x309 (=> (and (and true (= (ControlFlow 1 311402) 311399)) (= (ControlFlow 1 311399) 286474) $x193 (and (and SIV_27 (boogie_si_record_ref main_)) $x298) (not (= SIV_18 1)) $x288 (not (= SIV_19 1)) $x275 (not (= SIV_20 1)) $x263 (not (= SIV_21 1)) (and $x244 $x249) (not (= SIV_23 1)) $x235 (not (= SIV_24 1)) $x220 (and (not (= SIV_25 1)) (= (ControlFlow 1 286481) 286482)) (and $x193 (and SIV_28 (= (ControlFlow 1 286482) 286483))) (and (not SIV_26) (= (ControlFlow 1 286483) (- 0 311874)))) (not (and (= SIV_4 SIV_29) (= SIV_3 SIV_26))))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 311402) (not $x309)))))))))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x325 (and $x193 (and SIV_32 (= (ControlFlow 2 285998) (- 0 311988))))))
 (let (($x332 (=> (and (= (ControlFlow 2 311949) 285998) true (and true SIV_31) $x325) false)))
 (let (($x338 (and (= (ControlFlow 2 0) 311951) (not (=> (and (and true (= (ControlFlow 2 311951) 311949)) (= (ControlFlow 2 311949) 285998) true (and true SIV_31) $x325) false)))))
 (=> SIV_27 $x338))))))
(assert
 (let (($x351 (=> (and (not false) (= (ControlFlow 3 286070) (- 0 312089))) (= SIV_26 (not false)))))
 (let (($x363 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 286068) 286069)) (and (= 0 $0) (= (ControlFlow 3 286069) 286070)) (and (not false) (= (ControlFlow 3 286070) (- 0 312089)))) (= SIV_26 (not false)))))
 (let (($x371 (=> (and (and true (= (ControlFlow 3 312019) 312016)) (= (ControlFlow 3 312016) 286068) (and (boogie_si_record_i32 0) (= (ControlFlow 3 286068) 286069)) (and (= 0 $0) (= (ControlFlow 3 286069) 286070)) (and (not false) (= (ControlFlow 3 286070) (- 0 312089)))) (= SIV_26 (not false)))))
 (=> SIV_28 (and (= (ControlFlow 3 0) 312019) (not $x371)))))))
(assert
 (let (($x388 (=> (and (= (ControlFlow 4 312105) 285946) (= (ControlFlow 4 285946) (- 0 312112))) false)))
 (let (($x394 (and (= (ControlFlow 4 0) 312107) (not (=> (and (and true (= (ControlFlow 4 312107) 312105)) (= (ControlFlow 4 312105) 285946) (= (ControlFlow 4 285946) (- 0 312112))) false)))))
 (=> SIV_31 $x394))))
(assert
 (let (($x409 (=> (and (= (ControlFlow 5 312120) 285986) (= (ControlFlow 5 285986) (- 0 312151))) false)))
 (let (($x415 (and (= (ControlFlow 5 0) 312122) (not (=> (and (and true (= (ControlFlow 5 312122) 312120)) (= (ControlFlow 5 312120) 285986) (= (ControlFlow 5 285986) (- 0 312151))) false)))))
 (=> SIV_32 $x415))))
(check-sat)
