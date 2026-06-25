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
(declare-fun addition () Int)
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
(declare-fun SIV@22 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@21 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@20 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@19 () Int)
(declare-fun boogie_si_record_i64 (Int) Bool)
(declare-fun addition@@0 (Int Int) Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@27 () Bool)
(declare-fun boogie_si_record_i32 (Int) Bool)
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
 (= addition (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 283759) (- 0 308432))))))
 (let (($x168 (=> (and (= (ControlFlow 0 308369) 283759) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 308372) (not (=> (and (and SIV@0 (= (ControlFlow 0 308372) 308369)) (= (ControlFlow 0 308369) 283759) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@22) (= (ControlFlow 1 283740) (- 0 308825))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@22))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@24 (= (ControlFlow 1 283739) 283740))) (and (not SIV@22) (= (ControlFlow 1 283740) (- 0 308825)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@22))))))
 (let (($x208 (=> (and (and (not (= SIV@21 1)) (= (ControlFlow 1 283738) 283739)) (and $x193 (and SIV@24 (= (ControlFlow 1 283739) 283740))) (and (not SIV@22) (= (ControlFlow 1 283740) (- 0 308825)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@22))))))
 (let (($x220 (and (= SIV@21 (ite (>= SIV@18 200) 1 0)) (= (ControlFlow 1 283737) 283738))))
 (let (($x234 (and (= SIV@20 (ite (< $u0 100) 1 0)) (= (ControlFlow 1 283736) 283737))))
 (let (($x236 (=> (and (not (= SIV@19 1)) $x234 (not (= SIV@20 1)) $x220 (and (not (= SIV@21 1)) (= (ControlFlow 1 283738) 283739)) (and $x193 (and SIV@24 (= (ControlFlow 1 283739) 283740))) (and (not SIV@22) (= (ControlFlow 1 283740) (- 0 308825)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@22))))))
 (let (($x254 (and (= SIV@19 (ite (< $u0 100) 1 0)) (= (ControlFlow 1 283735) 283736))))
 (let (($x249 (and (= SIV@18 (addition@@0 SIV@16 SIV@17)) (boogie_si_record_i64 SIV@18))))
 (let (($x245 (and (and SIV@23 (boogie_si_record_ref main)) (and (= SIV@16 $u0) (= SIV@17 $u0)))))
 (let (($x262 (=> (and (= (ControlFlow 1 308488) 283735) $x193 (and $x245 (and $x249 $x254)) (not (= SIV@19 1)) $x234 (not (= SIV@20 1)) $x220 (and (not (= SIV@21 1)) (= (ControlFlow 1 283738) 283739)) (and $x193 (and SIV@24 (= (ControlFlow 1 283739) 283740))) (and (not SIV@22) (= (ControlFlow 1 283740) (- 0 308825)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@22))))))
 (let (($x268 (and (= (ControlFlow 1 0) 308491) (not (=> (and (and true (= (ControlFlow 1 308491) 308488)) (= (ControlFlow 1 308488) 283735) $x193 (and $x245 (and $x249 $x254)) (not (= SIV@19 1)) $x234 (not (= SIV@20 1)) $x220 (and (not (= SIV@21 1)) (= (ControlFlow 1 283738) 283739)) (and $x193 (and SIV@24 (= (ControlFlow 1 283739) 283740))) (and (not SIV@22) (= (ControlFlow 1 283740) (- 0 308825)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@22))))))))
 (=> SIV@5 $x268))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x283 (and $x193 (and SIV@28 (= (ControlFlow 2 283397) (- 0 308931))))))
 (let (($x290 (=> (and (= (ControlFlow 2 308892) 283397) true (and true SIV@27) $x283) false)))
 (let (($x296 (and (= (ControlFlow 2 0) 308894) (not (=> (and (and true (= (ControlFlow 2 308894) 308892)) (= (ControlFlow 2 308892) 283397) true (and true SIV@27) $x283) false)))))
 (=> SIV@23 $x296))))))
(assert
 (let (($x310 (=> (and (not false) (= (ControlFlow 3 283469) (- 0 309032))) (= SIV@22 (not false)))))
 (let (($x322 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 283467) 283468)) (and (= 0 $0) (= (ControlFlow 3 283468) 283469)) (and (not false) (= (ControlFlow 3 283469) (- 0 309032)))) (= SIV@22 (not false)))))
 (let (($x330 (=> (and (and true (= (ControlFlow 3 308962) 308959)) (= (ControlFlow 3 308959) 283467) (and (boogie_si_record_i32 0) (= (ControlFlow 3 283467) 283468)) (and (= 0 $0) (= (ControlFlow 3 283468) 283469)) (and (not false) (= (ControlFlow 3 283469) (- 0 309032)))) (= SIV@22 (not false)))))
 (=> SIV@24 (and (= (ControlFlow 3 0) 308962) (not $x330)))))))
(assert
 (let (($x347 (=> (and (= (ControlFlow 4 309048) 283345) (= (ControlFlow 4 283345) (- 0 309055))) false)))
 (let (($x353 (and (= (ControlFlow 4 0) 309050) (not (=> (and (and true (= (ControlFlow 4 309050) 309048)) (= (ControlFlow 4 309048) 283345) (= (ControlFlow 4 283345) (- 0 309055))) false)))))
 (=> SIV@27 $x353))))
(assert
 (let (($x368 (=> (and (= (ControlFlow 5 309063) 283385) (= (ControlFlow 5 283385) (- 0 309094))) false)))
 (let (($x374 (and (= (ControlFlow 5 0) 309065) (not (=> (and (and true (= (ControlFlow 5 309065) 309063)) (= (ControlFlow 5 309063) 283385) (= (ControlFlow 5 283385) (- 0 309094))) false)))))
 (=> SIV@28 $x374))))
(check-sat)
