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
(declare-fun SIV@29 () Bool)
(declare-fun SIV@28 () Int)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@24 () Int)
(declare-fun SIV@25 () Int)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@32 () Int)
(declare-fun SIV@31 () Bool)
(declare-fun $u0 () Int)
(declare-fun SIV@22 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun gcd@@0 (Int Int) Int)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@40 () Bool)
(declare-fun SIV@39 () Bool)
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
 (= gcd (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 230887) (- 0 235522))))))
 (let (($x168 (=> (and (= (ControlFlow 0 235465) 230887) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 235468) (not (=> (and (and SIV@0 (= (ControlFlow 0 235468) 235465)) (= (ControlFlow 0 235465) 230887) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@28) (= SIV@3 SIV@29)))))
 (let (($x304 (=> (= (ControlFlow 1 235580) (- 0 236061)) $x303)))
 (let (($x324 (=> (and (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x325 (=> (and (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x402 (=> (and (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x447 (=> (and (and (not (= SIV@23 1)) (= (ControlFlow 1 230353) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x429 (=> (and (and (not (= SIV@24 1)) (= (ControlFlow 1 230356) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x408 (=> (and (and (not (= SIV@25 1)) (= (ControlFlow 1 230358) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x370 (=> (and (and (= SIV@27 SIV@26) (= (ControlFlow 1 230363) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x379 (=> (and (and SIV@26 (= (ControlFlow 1 230361) 230362)) (= (ControlFlow 1 230362) 230363) (and (= SIV@27 SIV@26) (= (ControlFlow 1 230363) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x315 (and (and (not SIV@26) (= SIV@28 SIV@32)) (and (= SIV@29 SIV@26) (= (ControlFlow 1 230360) 235580)))))
 (let (($x388 (and (=> (and (= (ControlFlow 1 230359) 230360) $x315 (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230359) 230361) (and SIV@26 (= (ControlFlow 1 230361) 230362)) (= (ControlFlow 1 230362) 230363) (and (= SIV@27 SIV@26) (= (ControlFlow 1 230363) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))))
 (let (($x397 (=> (and (and (= SIV@25 1) (= (ControlFlow 1 230357) 230359)) true (and true SIV@31)) $x388)))
 (let (($x422 (and (=> (and (= (ControlFlow 1 230355) 230357) (and (= SIV@25 1) (= (ControlFlow 1 230357) 230359)) true (and true SIV@31)) $x388) (=> (and (= (ControlFlow 1 230355) 230358) (and (not (= SIV@25 1)) (= (ControlFlow 1 230358) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))))
 (let (($x410 (= SIV@24 1)))
 (let (($x437 (=> (and (= (ControlFlow 1 230352) 230355) (and $x410 (= SIV@25 (ite (> $u0 0) 1 0)))) $x422)))
 (let (($x431 (= SIV@23 1)))
 (let (($x441 (=> (and $x431 (= SIV@24 (ite (> $u0 0) 1 0))) (and $x437 (=> (and (= (ControlFlow 1 230352) 230356) (and (not $x410) (= (ControlFlow 1 230356) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))))
 (let (($x465 (and (=> (and (= (ControlFlow 1 230351) 230352) (and $x431 (= SIV@24 (ite (> $u0 0) 1 0)))) (and $x437 (=> (and (= (ControlFlow 1 230352) 230356) (and (not $x410) (= (ControlFlow 1 230356) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))) (=> (and (= (ControlFlow 1 230351) 230353) (and (not $x431) (= (ControlFlow 1 230353) 230354)) (and (= SIV@27 true) (= (ControlFlow 1 230354) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303))))
 (let (($x457 (and (boogie_si_record_i32 SIV@22) (= SIV@23 (ite (< SIV@22 1) 1 0)))))
 (let (($x458 (and (and (not (= SIV@21 1)) (= SIV@22 (gcd@@0 $u0 $u0))) $x457)))
 (let (($x350 (=> (and (and (= SIV@27 true) (= (ControlFlow 1 230348) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x357 (=> (and (and (= SIV@21 1) (= (ControlFlow 1 230350) 230348)) (and (= SIV@27 true) (= (ControlFlow 1 230348) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x479 (and (=> (and (= (ControlFlow 1 230349) 230350) (and (= SIV@21 1) (= (ControlFlow 1 230350) 230348)) (and (= SIV@27 true) (= (ControlFlow 1 230348) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230349) 230351) $x458) $x465))))
 (let (($x472 (and (not (= SIV@20 1)) (= SIV@21 (ite (> $u0 2147483647) 1 0)))))
 (let (($x364 (=> (and (and (= SIV@20 1) (= (ControlFlow 1 230347) 230348)) (and (= SIV@27 true) (= (ControlFlow 1 230348) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x492 (and (=> (and (= (ControlFlow 1 230345) 230347) (and (= SIV@20 1) (= (ControlFlow 1 230347) 230348)) (and (= SIV@27 true) (= (ControlFlow 1 230348) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230345) 230349) $x472) $x479))))
 (let (($x485 (and (not (= SIV@19 1)) (= SIV@20 (ite (<= $u0 0) 1 0)))))
 (let (($x331 (=> (and (and (= SIV@27 true) (= (ControlFlow 1 230342) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x338 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 230344) 230342)) (and (= SIV@27 true) (= (ControlFlow 1 230342) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x503 (and (=> (and (= (ControlFlow 1 230343) 230344) (and (= SIV@19 1) (= (ControlFlow 1 230344) 230342)) (and (= SIV@27 true) (= (ControlFlow 1 230342) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230343) 230345) $x485) $x492))))
 (let (($x496 (and (not (= SIV@18 1)) (= SIV@19 (ite (> $u0 2147483647) 1 0)))))
 (let (($x345 (=> (and (and (= SIV@18 1) (= (ControlFlow 1 230341) 230342)) (and (= SIV@27 true) (= (ControlFlow 1 230342) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303)))
 (let (($x517 (and (=> (and (= (ControlFlow 1 230340) 230341) (and (= SIV@18 1) (= (ControlFlow 1 230341) 230342)) (and (= SIV@27 true) (= (ControlFlow 1 230342) 230346)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230346) 235580)) (= (ControlFlow 1 235580) (- 0 236061))) $x303) (=> (and (= (ControlFlow 1 230340) 230343) $x496) $x503))))
 (let (($x509 (and (boogie_si_record_ref main) (= SIV@18 (ite (<= $u0 0) 1 0)))))
 (let (($x523 (=> (and (= (ControlFlow 1 235578) 230340) true (and (and true SIV@30) $x509)) $x517)))
 (let (($x529 (and (= (ControlFlow 1 0) 235585) (not (=> (and (and true (= (ControlFlow 1 235585) 235578)) (= (ControlFlow 1 235578) 230340) true (and (and true SIV@30) $x509)) $x517)))))
 (=> SIV@5 $x529)))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x652 (and (and true true) (and SIV@35 (= (ControlFlow 2 230863) (- 0 236176))))))
 (let (($x659 (=> (and (= (ControlFlow 2 236141) 230863) true (and true SIV@34) $x652) false)))
 (let (($x665 (and (= (ControlFlow 2 0) 236143) (not (=> (and (and true (= (ControlFlow 2 236143) 236141)) (= (ControlFlow 2 236141) 230863) true (and true SIV@34) $x652) false)))))
 (=> SIV@30 $x665)))))
(assert
 (let (($x677 (not SIV@40)))
 (let (($x678 (= SIV@26 $x677)))
 (let (($x679 (=> (= (ControlFlow 3 236206) (- 0 236291)) $x678)))
 (let (($x704 (=> (and (and (= SIV@40 SIV@39) (= (ControlFlow 3 230506) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x711 (=> (and (and (= SIV@39 true) (= (ControlFlow 3 230505) 230506)) (and (= SIV@40 SIV@39) (= (ControlFlow 3 230506) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x719 (=> (and (= (ControlFlow 3 230500) 230505) (not (= 0 $0)) (and (= SIV@39 true) (= (ControlFlow 3 230505) 230506)) (and (= SIV@40 SIV@39) (= (ControlFlow 3 230506) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x686 (=> (and (and (= SIV@40 false) (= (ControlFlow 3 230502) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678)))
 (let (($x696 (and (=> (and (= (ControlFlow 3 230501) 230502) (not false) (and (= SIV@40 false) (= (ControlFlow 3 230502) 236206)) (= (ControlFlow 3 236206) (- 0 236291))) $x678) (=> (= (ControlFlow 3 230501) 230503) true))))
 (let (($x688 (= 0 $0)))
 (let (($x721 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 230500) 230501) $x688) $x696) $x719))))
 (let (($x729 (=> (and (and true (= (ControlFlow 3 236211) 236204)) (= (ControlFlow 3 236204) 230500) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 230500) 230501) $x688) $x696) $x719))))
 (=> SIV@31 (and (= (ControlFlow 3 0) 236211) (not $x729)))))))))))))))
(assert
 (not SIV@34))
(assert
 (not SIV@35))
(check-sat)
