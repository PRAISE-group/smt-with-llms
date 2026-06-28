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
(declare-fun sum () Int)
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
(declare-fun __VERIFIER_nondet_unsigned_int () Int)
(declare-fun __SMACK_nondet_unsigned_int () Int)
(declare-fun __VERIFIER_nondet_uint () Int)
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
(declare-fun SIV_23 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun SIV_21 () Bool)
(declare-fun SIV_19 () Int)
(declare-fun SIV_20 () Bool)
(declare-fun SIV_28 () Int)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_18 () Int)
(declare-fun SIV_17 () Int)
(declare-fun SIV_16 () Int)
(declare-fun SIV_15 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun sum_cb (Int Int) Int)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_25 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_24 () Bool)
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
 (let ((?x23 (- 0 24768)))
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
 (= sum (- 0 1032)))
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
 (= llvm_dbg_value (- 0 23736)))
(assert
 (let ((?x23 (- 0 24768)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 232749) (- 0 237726))))))
 (let (($x180 (=> (and (= (ControlFlow 0 237669) 232749) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 237672) (not (=> (and (and SIV_0 (= (ControlFlow 0 237672) 237669)) (= (ControlFlow 0 237669) 232749) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x327 (not (and (= SIV_4 SIV_22) (= SIV_3 SIV_23)))))
 (let (($x328 (=> (= (ControlFlow 1 237784) (- 0 238156)) $x327)))
 (let (($x348 (=> (and (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x349 (=> (and (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x389 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 231642) 231643)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x430 (=> (and (= (ControlFlow 1 231640) 231642) (not (= SIV_19 1)) (and (= SIV_21 true) (= (ControlFlow 1 231642) 231643)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x355 (=> (and (and (= SIV_21 SIV_20) (= (ControlFlow 1 231648) 231643)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x364 (=> (and (and SIV_20 (= (ControlFlow 1 231646) 231647)) (= (ControlFlow 1 231647) 231648) (and (= SIV_21 SIV_20) (= (ControlFlow 1 231648) 231643)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327)))
 (let (($x339 (and (and (not SIV_20) (= SIV_22 SIV_28)) (and (= SIV_23 SIV_20) (= (ControlFlow 1 231645) 237784)))))
 (let (($x373 (and (=> (and (= (ControlFlow 1 231644) 231645) $x339 (= (ControlFlow 1 237784) (- 0 238156))) $x327) (=> (and (= (ControlFlow 1 231644) 231646) (and SIV_20 (= (ControlFlow 1 231646) 231647)) (= (ControlFlow 1 231647) 231648) (and (= SIV_21 SIV_20) (= (ControlFlow 1 231648) 231643)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 231643) 237784)) (= (ControlFlow 1 237784) (- 0 238156))) $x327))))
 (let (($x382 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 231641) 231644)) true (and true SIV_27)) $x373)))
 (let (($x421 (and (= SIV_18 (+ SIV_15 SIV_16)) (= SIV_19 (ite (not (= SIV_17 SIV_18)) 1 0)))))
 (let (($x413 (and (= SIV_17 (sum_cb SIV_15 SIV_16)) (boogie_si_record_i32 SIV_17))))
 (let (($x408 (and (and true SIV_26) (and (boogie_si_record_i32 SIV_16) (boogie_si_record_i32 SIV_16)))))
 (let (($x401 (and (and SIV_25 (boogie_si_record_i32 SIV_15)) (and (boogie_si_record_i32 SIV_15) true))))
 (let (($x402 (and (and (and SIV_24 (boogie_si_record_ref main_)) (and true true)) $x401)))
 (let (($x432 (=> (and $x402 (and $x408 (and $x413 $x421))) (and (=> (and (= (ControlFlow 1 231640) 231641) (and (= SIV_19 1) (= (ControlFlow 1 231641) 231644)) true (and true SIV_27)) $x373) $x430))))
 (let (($x391 (and true true)))
 (let (($x441 (=> (and (and true (= (ControlFlow 1 237789) 237782)) (= (ControlFlow 1 237782) 231640) $x391 (and $x402 (and $x408 (and $x413 $x421)))) (and (=> (and (= (ControlFlow 1 231640) 231641) (and (= SIV_19 1) (= (ControlFlow 1 231641) 231644)) true (and true SIV_27)) $x373) $x430))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 237789) (not $x441)))))))))))))))))))))))
(check-sat)
