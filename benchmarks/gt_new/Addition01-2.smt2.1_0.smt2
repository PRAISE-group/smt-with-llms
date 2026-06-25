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
(declare-fun SIV@24 () Bool)
(declare-fun SIV@27 () Int)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Int)
(declare-fun $u0 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun addition_cb (Int Int) Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@17 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@25 () Bool)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@29 () Bool)
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 285158) (- 0 309914))))))
 (let (($x168 (=> (and (= (ControlFlow 0 309851) 285158) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 309854) (not (=> (and (and SIV@0 (= (ControlFlow 0 309854) 309851)) (= (ControlFlow 0 309851) 285158) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@26 (= (ControlFlow 1 285138) 285139))) (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378)))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (let (($x208 (=> (and (and (not (= SIV@23 1)) (= (ControlFlow 1 285137) 285138)) (and $x193 (and SIV@26 (= (ControlFlow 1 285138) 285139))) (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378)))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (let (($x228 (and (= SIV@23 (ite (= SIV@21 SIV@22) 1 0)) (= (ControlFlow 1 285136) 285137))))
 (let (($x229 (and (and (boogie_si_record_i32 SIV@21) (= SIV@22 (+ $u0 $u0))) $x228)))
 (let (($x231 (=> (and (and (not (= SIV@20 1)) (= SIV@21 (addition_cb $u0 $u0))) $x229 (and (not (= SIV@23 1)) (= (ControlFlow 1 285137) 285138)) (and $x193 (and SIV@26 (= (ControlFlow 1 285138) 285139))) (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378)))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (let (($x242 (and (= SIV@20 (ite (> $u0 1073741823) 1 0)) (= (ControlFlow 1 285135) 285136))))
 (let (($x254 (and (= SIV@19 (ite (< $u0 0) 1 0)) (= (ControlFlow 1 285134) 285135))))
 (let (($x256 (=> (and (not (= SIV@18 1)) $x254 (not (= SIV@19 1)) $x242 (and (not (= SIV@20 1)) (= SIV@21 (addition_cb $u0 $u0))) $x229 (and (not (= SIV@23 1)) (= (ControlFlow 1 285137) 285138)) (and $x193 (and SIV@26 (= (ControlFlow 1 285138) 285139))) (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378)))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (let (($x264 (and (= SIV@18 (ite (> $u0 1073741823) 1 0)) (= (ControlFlow 1 285133) 285134))))
 (let (($x274 (and (= SIV@17 (ite (< $u0 0) 1 0)) (= (ControlFlow 1 285132) 285133))))
 (let (($x276 (=> (and (and (and SIV@25 (boogie_si_record_ref main)) $x274) (not (= SIV@17 1)) $x264 (not (= SIV@18 1)) $x254 (not (= SIV@19 1)) $x242 (and (not (= SIV@20 1)) (= SIV@21 (addition_cb $u0 $u0))) $x229 (and (not (= SIV@23 1)) (= (ControlFlow 1 285137) 285138)) (and $x193 (and SIV@26 (= (ControlFlow 1 285138) 285139))) (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378)))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (let (($x285 (=> (and (and true (= (ControlFlow 1 309973) 309970)) (= (ControlFlow 1 309970) 285132) $x193 (and (and SIV@25 (boogie_si_record_ref main)) $x274) (not (= SIV@17 1)) $x264 (not (= SIV@18 1)) $x254 (not (= SIV@19 1)) $x242 (and (not (= SIV@20 1)) (= SIV@21 (addition_cb $u0 $u0))) $x229 (and (not (= SIV@23 1)) (= (ControlFlow 1 285137) 285138)) (and $x193 (and SIV@26 (= (ControlFlow 1 285138) 285139))) (and (not SIV@24) (= (ControlFlow 1 285139) (- 0 310378)))) (not (and (= SIV@4 SIV@27) (= SIV@3 SIV@24))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 309973) (not $x285))))))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x302 (and $x193 (and SIV@30 (= (ControlFlow 2 284724) (- 0 310488))))))
 (let (($x309 (=> (and (= (ControlFlow 2 310449) 284724) true (and true SIV@29) $x302) false)))
 (let (($x315 (and (= (ControlFlow 2 0) 310451) (not (=> (and (and true (= (ControlFlow 2 310451) 310449)) (= (ControlFlow 2 310449) 284724) true (and true SIV@29) $x302) false)))))
 (=> SIV@25 $x315))))))
(assert
 (let (($x329 (=> (and (not false) (= (ControlFlow 3 284796) (- 0 310589))) (= SIV@24 (not false)))))
 (let (($x341 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 284794) 284795)) (and (= 0 $0) (= (ControlFlow 3 284795) 284796)) (and (not false) (= (ControlFlow 3 284796) (- 0 310589)))) (= SIV@24 (not false)))))
 (let (($x349 (=> (and (and true (= (ControlFlow 3 310519) 310516)) (= (ControlFlow 3 310516) 284794) (and (boogie_si_record_i32 0) (= (ControlFlow 3 284794) 284795)) (and (= 0 $0) (= (ControlFlow 3 284795) 284796)) (and (not false) (= (ControlFlow 3 284796) (- 0 310589)))) (= SIV@24 (not false)))))
 (=> SIV@26 (and (= (ControlFlow 3 0) 310519) (not $x349)))))))
(assert
 (let (($x366 (=> (and (= (ControlFlow 4 310605) 284672) (= (ControlFlow 4 284672) (- 0 310612))) false)))
 (let (($x372 (and (= (ControlFlow 4 0) 310607) (not (=> (and (and true (= (ControlFlow 4 310607) 310605)) (= (ControlFlow 4 310605) 284672) (= (ControlFlow 4 284672) (- 0 310612))) false)))))
 (=> SIV@29 $x372))))
(assert
 (let (($x387 (=> (and (= (ControlFlow 5 310620) 284712) (= (ControlFlow 5 284712) (- 0 310651))) false)))
 (let (($x393 (and (= (ControlFlow 5 0) 310622) (not (=> (and (and true (= (ControlFlow 5 310622) 310620)) (= (ControlFlow 5 310620) 284712) (= (ControlFlow 5 284712) (- 0 310651))) false)))))
 (=> SIV@30 $x393))))
(check-sat)
