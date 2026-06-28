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
(declare-fun SIV_29 () Bool)
(declare-fun SIV_28 () Int)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_23 () Int)
(declare-fun SIV_24 () Int)
(declare-fun SIV_25 () Int)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_32 () Int)
(declare-fun SIV_31 () Bool)
(declare-fun $u0 () Int)
(declare-fun SIV_22 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun gcd_cb (Int Int) Int)
(declare-fun SIV_21 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_40 () Bool)
(declare-fun SIV_39 () Bool)
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
 (= gcd (- 0 1032)))
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
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 230887) (- 0 235522))))))
 (let (($x168 (=> (and (= (ControlFlow 0 235465) 230887) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 235468) (not (=> (and (and SIV_0 (= (ControlFlow 0 235468) 235465)) (= (ControlFlow 0 235465) 230887) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x303 (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_29)))))
 (let (($x304 (=> (= (ControlFlow 1 235580) (- 0 236061)) $x303)))
 (let (($x324 (=> (and (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x325 (=> (and (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x402 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x447 (=> (and (and (not (= SIV_23 1)) (= (ControlFlow 1 230353) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x429 (=> (and (and (not (= SIV_24 1)) (= (ControlFlow 1 230356) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x408 (=> (and (and (not (= SIV_25 1)) (= (ControlFlow 1 230358) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x370 (=> (and (and (= SIV_27 SIV_26) (= (ControlFlow 1 230363) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x379 (=> (and (and SIV_26 (= (ControlFlow 1 230361) 230362)) (= (ControlFlow 1 230362) 230363) (and (= SIV_27 SIV_26) (= (ControlFlow 1 230363) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x315 (and (and (not SIV_26) (= SIV_28 SIV_32)) (and (= SIV_29 SIV_26) (= (ControlFlow 1 230360) 235580)))))
 (let (($x388 (and (=> (and (= (ControlFlow 1 230359) 230360) $x315 (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230359) 230361) (and SIV_26 (= (ControlFlow 1 230361) 230362)) (= (ControlFlow 1 230362) 230363) (and (= SIV_27 SIV_26) (= (ControlFlow 1 230363) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))))
 (let (($x397 (=> (and (and (= SIV_25 1) (= (ControlFlow 1 230357) 230359)) true (and true SIV_31)) $x388)))
 (let (($x422 (and (=> (and (= (ControlFlow 1 230355) 230357) (and (= SIV_25 1) (= (ControlFlow 1 230357) 230359)) true (and true SIV_31)) $x388) (=> (and (= (ControlFlow 1 230355) 230358) (and (not (= SIV_25 1)) (= (ControlFlow 1 230358) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))))
 (let (($x410 (= SIV_24 1)))
 (let (($x437 (=> (and (= (ControlFlow 1 230352) 230355) (and $x410 (= SIV_25 (ite (> $u0 0) 1 0)))) $x422)))
 (let (($x431 (= SIV_23 1)))
 (let (($x441 (=> (and $x431 (= SIV_24 (ite (> $u0 0) 1 0))) (and $x437 (=> (and (= (ControlFlow 1 230352) 230356) (and (not $x410) (= (ControlFlow 1 230356) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))))
 (let (($x465 (and (=> (and (= (ControlFlow 1 230351) 230352) (and $x431 (= SIV_24 (ite (> $u0 0) 1 0)))) (and $x437 (=> (and (= (ControlFlow 1 230352) 230356) (and (not $x410) (= (ControlFlow 1 230356) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))) (=> (and (= (ControlFlow 1 230351) 230353) (and (not $x431) (= (ControlFlow 1 230353) 230354)) (and (= SIV_27 true) (= (ControlFlow 1 230354) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))))
 (let (($x457 (and (boogie_si_record_i32 SIV_22) (= SIV_23 (ite (< SIV_22 1) 1 0)))))
 (let (($x458 (and (and (not (= SIV_21 1)) (= SIV_22 (gcd_cb $u0 $u0))) $x457)))
 (let (($x350 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 230348) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x357 (=> (and (and (= SIV_21 1) (= (ControlFlow 1 230350) 230348)) (and (= SIV_27 true) (= (ControlFlow 1 230348) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x479 (and (=> (and (= (ControlFlow 1 230349) 230350) (and (= SIV_21 1) (= (ControlFlow 1 230350) 230348)) (and (= SIV_27 true) (= (ControlFlow 1 230348) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230349) 230351) $x458) $x465))))
 (let (($x472 (and (not (= SIV_20 1)) (= SIV_21 (ite (> $u0 2147483647) 1 0)))))
 (let (($x364 (=> (and (and (= SIV_20 1) (= (ControlFlow 1 230347) 230348)) (and (= SIV_27 true) (= (ControlFlow 1 230348) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x492 (and (=> (and (= (ControlFlow 1 230345) 230347) (and (= SIV_20 1) (= (ControlFlow 1 230347) 230348)) (and (= SIV_27 true) (= (ControlFlow 1 230348) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230345) 230349) $x472) $x479))))
 (let (($x485 (and (not (= SIV_19 1)) (= SIV_20 (ite (<= $u0 0) 1 0)))))
 (let (($x331 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 230342) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x338 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 230344) 230342)) (and (= SIV_27 true) (= (ControlFlow 1 230342) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x503 (and (=> (and (= (ControlFlow 1 230343) 230344) (and (= SIV_19 1) (= (ControlFlow 1 230344) 230342)) (and (= SIV_27 true) (= (ControlFlow 1 230342) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230343) 230345) $x485) $x492))))
 (let (($x496 (and (not (= SIV_18 1)) (= SIV_19 (ite (> $u0 2147483647) 1 0)))))
 (let (($x345 (=> (and (and (= SIV_18 1) (= (ControlFlow 1 230341) 230342)) (and (= SIV_27 true) (= (ControlFlow 1 230342) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x517 (and (=> (and (= (ControlFlow 1 230340) 230341) (and (= SIV_18 1) (= (ControlFlow 1 230341) 230342)) (and (= SIV_27 true) (= (ControlFlow 1 230342) 230346)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230340) 230343) $x496) $x503))))
 (let (($x509 (and (boogie_si_record_ref main_) (= SIV_18 (ite (<= $u0 0) 1 0)))))
 (let (($x523 (=> (and (= (ControlFlow 1 235578) 230340) true (and (and true SIV_30) $x509)) $x517)))
 (let (($x529 (and (= (ControlFlow 1 0) 235585) (not (=> (and (and true (= (ControlFlow 1 235585) 235578)) (= (ControlFlow 1 235578) 230340) true (and (and true SIV_30) $x509)) $x517)))))
 (=> SIV_5 $x529)))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x652 (and (and true true) (and SIV_35 (= (ControlFlow 2 230863) (- 0 236176))))))
 (let (($x659 (=> (and (= (ControlFlow 2 236141) 230863) true (and true SIV_34) $x652) false)))
 (let (($x665 (and (= (ControlFlow 2 0) 236143) (not (=> (and (and true (= (ControlFlow 2 236143) 236141)) (= (ControlFlow 2 236141) 230863) true (and true SIV_34) $x652) false)))))
 (=> SIV_30 $x665)))))
(assert
 (let (($x677 (not SIV_40)))
 (let (($x678 (= SIV_26 $x677)))
 (let (($x679 (=> (= (ControlFlow 3 236206) (- 0 236291)) $x678)))
 (let (($x704 (=> (and (and (= SIV_40 SIV_39) (= (ControlFlow 3 230506) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x711 (=> (and (and (= SIV_39 true) (= (ControlFlow 3 230505) 230506)) (and (= SIV_40 SIV_39) (= (ControlFlow 3 230506) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x719 (=> (and (= (ControlFlow 3 230500) 230505) (not (= 0 $0)) (and (= SIV_39 true) (= (ControlFlow 3 230505) 230506)) (and (= SIV_40 SIV_39) (= (ControlFlow 3 230506) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x686 (=> (and (and (= SIV_40 false) (= (ControlFlow 3 230502) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x696 (and (=> (and (= (ControlFlow 3 230501) 230502) (not false) (and (= SIV_40 false) (= (ControlFlow 3 230502) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678) (=> (= (ControlFlow 3 230501) 230503) true))))
 (let (($x688 (= 0 $0)))
 (let (($x721 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 230500) 230501) $x688) $x696) $x719))))
 (let (($x729 (=> (and (and true (= (ControlFlow 3 236211) 236204)) (= (ControlFlow 3 236204) 230500) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 230500) 230501) $x688) $x696) $x719))))
 (=> SIV_31 (and (= (ControlFlow 3 0) 236211) (not $x729)))))))))))))))
(check-sat)
