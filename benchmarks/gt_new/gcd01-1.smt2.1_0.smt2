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
(declare-fun SIV@26 () Bool)
(declare-fun SIV@29 () Int)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@24 () Int)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun gcd@@0 (Int Int) Int)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@27 () Bool)
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 286546) (- 0 311381))))))
 (let (($x168 (=> (and (= (ControlFlow 0 311318) 286546) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 311321) (not (=> (and (and SIV@0 (= (ControlFlow 0 311321) 311318)) (= (ControlFlow 0 311318) 286546) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x207 (=> (and (and (= SIV@25 1) (= (ControlFlow 1 286525) 286526)) (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x217 (and (= SIV@25 (ite (> $u0 0) 1 0)) (= (ControlFlow 1 286524) 286525))))
 (let (($x226 (and (= SIV@24 (ite (> $u0 0) 1 0)) (= (ControlFlow 1 286523) 286524))))
 (let (($x228 (=> (and (= SIV@23 1) $x226 (= SIV@24 1) $x217 (and (= SIV@25 1) (= (ControlFlow 1 286525) 286526)) (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x243 (and (= SIV@23 (ite (< SIV@22 1) 1 0)) (= (ControlFlow 1 286522) 286523))))
 (let (($x244 (and (and (= SIV@22 (gcd@@0 $u0 $u0)) (boogie_si_record_i32 SIV@22)) $x243)))
 (let (($x257 (and (= SIV@21 (ite (> $u0 2147483647) 1 0)) (= (ControlFlow 1 286521) 286522))))
 (let (($x259 (=> (and (not (= SIV@20 1)) $x257 (not (= SIV@21 1)) $x244 (= SIV@23 1) $x226 (= SIV@24 1) $x217 (and (= SIV@25 1) (= (ControlFlow 1 286525) 286526)) (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x269 (and (= SIV@20 (ite (<= $u0 0) 1 0)) (= (ControlFlow 1 286520) 286521))))
 (let (($x279 (and (= SIV@19 (ite (> $u0 2147483647) 1 0)) (= (ControlFlow 1 286519) 286520))))
 (let (($x281 (=> (and (not (= SIV@18 1)) $x279 (not (= SIV@19 1)) $x269 (not (= SIV@20 1)) $x257 (not (= SIV@21 1)) $x244 (= SIV@23 1) $x226 (= SIV@24 1) $x217 (and (= SIV@25 1) (= (ControlFlow 1 286525) 286526)) (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x289 (and (= SIV@18 (ite (<= $u0 0) 1 0)) (= (ControlFlow 1 286518) 286519))))
 (let (($x292 (=> (and $x193 (and (and SIV@27 (boogie_si_record_ref main)) $x289) (not (= SIV@18 1)) $x279 (not (= SIV@19 1)) $x269 (not (= SIV@20 1)) $x257 (not (= SIV@21 1)) $x244 (= SIV@23 1) $x226 (= SIV@24 1) $x217 (and (= SIV@25 1) (= (ControlFlow 1 286525) 286526)) (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x300 (=> (and (and true (= (ControlFlow 1 311440) 311437)) (= (ControlFlow 1 311437) 286518) $x193 (and (and SIV@27 (boogie_si_record_ref main)) $x289) (not (= SIV@18 1)) $x279 (not (= SIV@19 1)) $x269 (not (= SIV@20 1)) $x257 (not (= SIV@21 1)) $x244 (= SIV@23 1) $x226 (= SIV@24 1) $x217 (and (= SIV@25 1) (= (ControlFlow 1 286525) 286526)) (and $x193 (and SIV@28 (= (ControlFlow 1 286526) 286527))) (and (not SIV@26) (= (ControlFlow 1 286527) (- 0 311906)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 311440) (not $x300)))))))))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x317 (and $x193 (and SIV@32 (= (ControlFlow 2 286045) (- 0 312020))))))
 (let (($x324 (=> (and (= (ControlFlow 2 311981) 286045) true (and true SIV@31) $x317) false)))
 (let (($x330 (and (= (ControlFlow 2 0) 311983) (not (=> (and (and true (= (ControlFlow 2 311983) 311981)) (= (ControlFlow 2 311981) 286045) true (and true SIV@31) $x317) false)))))
 (=> SIV@27 $x330))))))
(assert
 (let (($x344 (=> (and (not false) (= (ControlFlow 3 286117) (- 0 312121))) (= SIV@26 (not false)))))
 (let (($x356 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 286115) 286116)) (and (= 0 $0) (= (ControlFlow 3 286116) 286117)) (and (not false) (= (ControlFlow 3 286117) (- 0 312121)))) (= SIV@26 (not false)))))
 (let (($x364 (=> (and (and true (= (ControlFlow 3 312051) 312048)) (= (ControlFlow 3 312048) 286115) (and (boogie_si_record_i32 0) (= (ControlFlow 3 286115) 286116)) (and (= 0 $0) (= (ControlFlow 3 286116) 286117)) (and (not false) (= (ControlFlow 3 286117) (- 0 312121)))) (= SIV@26 (not false)))))
 (=> SIV@28 (and (= (ControlFlow 3 0) 312051) (not $x364)))))))
(assert
 (let (($x381 (=> (and (= (ControlFlow 4 312137) 285993) (= (ControlFlow 4 285993) (- 0 312144))) false)))
 (let (($x387 (and (= (ControlFlow 4 0) 312139) (not (=> (and (and true (= (ControlFlow 4 312139) 312137)) (= (ControlFlow 4 312137) 285993) (= (ControlFlow 4 285993) (- 0 312144))) false)))))
 (=> SIV@31 $x387))))
(assert
 (let (($x402 (=> (and (= (ControlFlow 5 312152) 286033) (= (ControlFlow 5 286033) (- 0 312183))) false)))
 (let (($x408 (and (= (ControlFlow 5 0) 312154) (not (=> (and (and true (= (ControlFlow 5 312154) 312152)) (= (ControlFlow 5 312152) 286033) (= (ControlFlow 5 286033) (- 0 312183))) false)))))
 (=> SIV@32 $x408))))
(check-sat)
