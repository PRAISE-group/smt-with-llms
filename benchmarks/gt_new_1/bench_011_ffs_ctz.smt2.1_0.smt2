; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () (_ BitVec 32))
(declare-fun $1 () (_ BitVec 32))
(declare-fun $0.ref () Int)
(declare-fun $1.ref () Int)
(declare-fun $1024.ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun my__builtin_ffs () Int)
(declare-fun my__builtin_ctz () Int)
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
(declare-fun SIV@4 () (_ BitVec 32))
(declare-fun SIV@1 () (_ BitVec 32))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@29 () (_ BitVec 32))
(declare-fun SIV@28 () Bool)
(declare-fun SIV@25 () (_ BitVec 1))
(declare-fun SIV@24 () (_ BitVec 32))
(declare-fun SIV@22 () (_ BitVec 32))
(declare-fun SIV@23 () (_ BitVec 1))
(declare-fun SIV@20 () (_ BitVec 32))
(declare-fun SIV@21 () (_ BitVec 1))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun my__builtin_ffs@@0 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@32 () Bool)
(declare-fun SIV@31 () Bool)
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 (_ bv0 32)))
(assert
 (= $1 (_ bv1 32)))
(assert
 (= $0.ref 0))
(assert
 (= $1.ref 1))
(assert
 (= $1024.ref 1024))
(assert
 (let ((?x25 (- 0 22704)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_ffs (- 0 1032)))
(assert
 (= my__builtin_ctz (- 0 2064)))
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
 (let ((?x25 (- 0 22704)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x134 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 387916) (- 0 424049))))))
 (let (($x146 (=> (and (= (ControlFlow 0 423986) 387916) $x134) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 423989) (not (=> (and (and SIV@0 (= (ControlFlow 0 423989) 423986)) (= (ControlFlow 0 423986) 387916) $x134) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x170 (=> (and (not SIV@26) (= (ControlFlow 1 387897) (- 0 424396))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x175 (and true true)))
 (let (($x182 (=> (and (and $x175 (and SIV@28 (= (ControlFlow 1 387896) 387897))) (and (not SIV@26) (= (ControlFlow 1 387897) (- 0 424396)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x209 (and (= SIV@25 (ite (= SIV@22 SIV@24) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387895) 387896))))
 (let (($x202 (and (= SIV@23 (ite (= SIV@20 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= SIV@24 ((_ zero_extend 31) SIV@23)))))
 (let (($x193 (and (= SIV@21 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= SIV@22 ((_ zero_extend 31) SIV@21)))))
 (let (($x223 (and (boogie_si_record_bv32 SIV@20) (= (ControlFlow 1 387894) 387895))))
 (let (($x218 (and (boogie_si_record_ref main) (= SIV@20 (my__builtin_ffs@@0 $u0)))))
 (let (($x225 (=> (and (and $x218 $x223) $x193 (and $x202 $x209) (not (= SIV@25 (_ bv1 1))) (and $x175 (and SIV@28 (= (ControlFlow 1 387896) 387897))) (and (not SIV@26) (= (ControlFlow 1 387897) (- 0 424396)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x231 (=> (and (= (ControlFlow 1 424105) 387894) true (and true SIV@27) (and $x218 $x223) $x193 (and $x202 $x209) (not (= SIV@25 (_ bv1 1))) (and $x175 (and SIV@28 (= (ControlFlow 1 387896) 387897))) (and (not SIV@26) (= (ControlFlow 1 387897) (- 0 424396)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))
 (let (($x237 (and (= (ControlFlow 1 0) 424108) (not (=> (and (and true (= (ControlFlow 1 424108) 424105)) (= (ControlFlow 1 424105) 387894) true (and true SIV@27) (and $x218 $x223) $x193 (and $x202 $x209) (not (= SIV@25 (_ bv1 1))) (and $x175 (and SIV@28 (= (ControlFlow 1 387896) 387897))) (and (not SIV@26) (= (ControlFlow 1 387897) (- 0 424396)))) (not (and (= SIV@4 SIV@29) (= SIV@3 SIV@26))))))))
 (=> SIV@5 $x237)))))))))))))
(assert
 (let (($x175 (and true true)))
 (let (($x252 (and $x175 (and SIV@32 (= (ControlFlow 2 387591) (- 0 424510))))))
 (let (($x259 (=> (and (= (ControlFlow 2 424471) 387591) true (and true SIV@31) $x252) false)))
 (let (($x265 (and (= (ControlFlow 2 0) 424473) (not (=> (and (and true (= (ControlFlow 2 424473) 424471)) (= (ControlFlow 2 424471) 387591) true (and true SIV@31) $x252) false)))))
 (=> SIV@27 $x265))))))
(assert
 (let (($x279 (=> (and (not false) (= (ControlFlow 3 387663) (- 0 424611))) (= SIV@26 (not false)))))
 (let (($x291 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 387661) 387662)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 387662) 387663)) (and (not false) (= (ControlFlow 3 387663) (- 0 424611)))) (= SIV@26 (not false)))))
 (let (($x299 (=> (and (and true (= (ControlFlow 3 424541) 424538)) (= (ControlFlow 3 424538) 387661) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 387661) 387662)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 387662) 387663)) (and (not false) (= (ControlFlow 3 387663) (- 0 424611)))) (= SIV@26 (not false)))))
 (=> SIV@28 (and (= (ControlFlow 3 0) 424541) (not $x299)))))))
(assert
 (let (($x316 (=> (and (= (ControlFlow 4 424627) 387539) (= (ControlFlow 4 387539) (- 0 424634))) false)))
 (let (($x322 (and (= (ControlFlow 4 0) 424629) (not (=> (and (and true (= (ControlFlow 4 424629) 424627)) (= (ControlFlow 4 424627) 387539) (= (ControlFlow 4 387539) (- 0 424634))) false)))))
 (=> SIV@31 $x322))))
(assert
 (let (($x337 (=> (and (= (ControlFlow 5 424642) 387579) (= (ControlFlow 5 387579) (- 0 424673))) false)))
 (let (($x343 (and (= (ControlFlow 5 0) 424644) (not (=> (and (and true (= (ControlFlow 5 424644) 424642)) (= (ControlFlow 5 424642) 387579) (= (ControlFlow 5 387579) (- 0 424673))) false)))))
 (=> SIV@32 $x343))))
(check-sat)
