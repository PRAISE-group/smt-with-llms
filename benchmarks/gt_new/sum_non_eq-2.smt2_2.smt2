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
(declare-fun sum () Int)
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
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@19 () Int)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@28 () Int)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@18 () Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun SIV@15 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun sum@@0 (Int Int) Int)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@25 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@24 () Bool)
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
 (= sum (- 0 1032)))
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
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 232749) (- 0 237726))))))
 (let (($x180 (=> (and (= (ControlFlow 0 237669) 232749) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 237672) (not (=> (and (and SIV@0 (= (ControlFlow 0 237672) 237669)) (= (ControlFlow 0 237669) 232749) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x327 (not (and (= SIV@4 SIV@22) (= SIV@3 SIV@23)))))
 (let (($x328 (=> (= (ControlFlow 1 237784) (- 0 238156)) $x327)))
 (let (($x348 (=> (and (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x349 (=> (and (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x389 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 231642) 231643)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x430 (=> (and (= (ControlFlow 1 231640) 231642) (not (= SIV@19 1)) (and (= SIV@21 true) (= (ControlFlow 1 231642) 231643)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x355 (=> (and (and (= SIV@21 SIV@20) (= (ControlFlow 1 231648) 231643)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x364 (=> (and (and SIV@20 (= (ControlFlow 1 231646) 231647)) (= (ControlFlow 1 231647) 231648) (and (= SIV@21 SIV@20) (= (ControlFlow 1 231648) 231643)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x339 (and (and (not SIV@20) (= SIV@22 SIV@28)) (and (= SIV@23 SIV@20) (= (ControlFlow 1 231645) 237784)))))
 (let (($x373 (and (=> (and (= (ControlFlow 1 231644) 231645) $x339 (= (ControlFlow 1 237784) (- 0 238156))) $x327) (=> (and (= (ControlFlow 1 231644) 231646) (and SIV@20 (= (ControlFlow 1 231646) 231647)) (= (ControlFlow 1 231647) 231648) (and (= SIV@21 SIV@20) (= (ControlFlow 1 231648) 231643)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327))))
 (let (($x382 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 231641) 231644)) true (and true SIV@27)) $x373)))
 (let (($x421 (and (= SIV@18 (+ SIV@15 SIV@16)) (= SIV@19 (ite (not (= SIV@17 SIV@18)) 1 0)))))
 (let (($x413 (and (= SIV@17 (sum@@0 SIV@15 SIV@16)) (boogie_si_record_i32 SIV@17))))
 (let (($x408 (and (and true SIV@26) (and (boogie_si_record_i32 SIV@16) (boogie_si_record_i32 SIV@16)))))
 (let (($x401 (and (and SIV@25 (boogie_si_record_i32 SIV@15)) (and (boogie_si_record_i32 SIV@15) true))))
 (let (($x402 (and (and (and SIV@24 (boogie_si_record_ref main)) (and true true)) $x401)))
 (let (($x432 (=> (and $x402 (and $x408 (and $x413 $x421))) (and (=> (and (= (ControlFlow 1 231640) 231641) (and (= SIV@19 1) (= (ControlFlow 1 231641) 231644)) true (and true SIV@27)) $x373) $x430))))
 (let (($x391 (and true true)))
 (let (($x441 (=> (and (and true (= (ControlFlow 1 237789) 237782)) (= (ControlFlow 1 237782) 231640) $x391 (and $x402 (and $x408 (and $x413 $x421)))) (and (=> (and (= (ControlFlow 1 231640) 231641) (and (= SIV@19 1) (= (ControlFlow 1 231641) 231644)) true (and true SIV@27)) $x373) $x430))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 237789) (not $x441)))))))))))))))))))))))
(assert
 (not SIV@24))
(assert
 (not SIV@25))
(assert
 (not SIV@26))
(assert
 (not SIV@27))
(check-sat)
