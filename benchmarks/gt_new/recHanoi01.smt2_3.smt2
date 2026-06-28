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
(declare-fun counter () Int)
(declare-fun hanoi () Int)
(declare-fun applyHanoi () Int)
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
(declare-fun SIV_23 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun SIV_21 () Bool)
(declare-fun SIV_20 () Bool)
(declare-fun SIV_27 () Int)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun SIV_17 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun hanoi_cb (Int) Int)
(declare-fun $u0 () Int)
(declare-fun SIV_25 () Bool)
(declare-fun SIV_16 () Int)
(declare-fun SIV_15 () Int)
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
 (let ((?x23 (- 0 23732)))
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
 (= counter (- 0 1028)))
(assert
 (= hanoi (- 0 2060)))
(assert
 (= applyHanoi (- 0 3092)))
(assert
 (= main_ (- 0 4124)))
(assert
 (= __SMACK_code (- 0 5156)))
(assert
 (= __VERIFIER_assume (- 0 6188)))
(assert
 (= __SMACK_dummy (- 0 7220)))
(assert
 (= __VERIFIER_assert (- 0 8252)))
(assert
 (= __SMACK_and32 (- 0 9284)))
(assert
 (= __SMACK_and64 (- 0 10316)))
(assert
 (= __SMACK_and16 (- 0 11348)))
(assert
 (= __SMACK_and8 (- 0 12380)))
(assert
 (= __SMACK_or32 (- 0 13412)))
(assert
 (= __SMACK_or64 (- 0 14444)))
(assert
 (= __SMACK_or16 (- 0 15476)))
(assert
 (= __SMACK_or8 (- 0 16508)))
(assert
 (= __SMACK_check_overflow (- 0 17540)))
(assert
 (= __SMACK_loop_exit (- 0 18572)))
(assert
 (= __SMACK_decls (- 0 19604)))
(assert
 (= __SMACK_top_decl (- 0 20636)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21668)))
(assert
 (= llvm_dbg_value (- 0 22700)))
(assert
 (let ((?x23 (- 0 23732)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 231379) (- 0 236099))))))
 (let (($x176 (=> (and (= (ControlFlow 0 236042) 231379) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 236045) (not (=> (and (and SIV_0 (= (ControlFlow 0 236045) 236042)) (= (ControlFlow 0 236042) 231379) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x319 (not (and (= SIV_4 SIV_22) (= SIV_3 SIV_23)))))
 (let (($x320 (=> (= (ControlFlow 1 236157) (- 0 236561)) $x319)))
 (let (($x328 (=> (and (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x329 (=> (and (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x356 (=> (and (and (= SIV_21 SIV_20) (= (ControlFlow 1 230850) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x365 (=> (and (and SIV_20 (= (ControlFlow 1 230848) 230849)) (= (ControlFlow 1 230849) 230850) (and (= SIV_21 SIV_20) (= (ControlFlow 1 230850) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x383 (and (and (not SIV_20) (= SIV_22 SIV_27)) (and (= SIV_23 SIV_20) (= (ControlFlow 1 230847) 236157)))))
 (let (($x393 (and (=> (and (= (ControlFlow 1 230846) 230847) $x383 (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230846) 230848) (and SIV_20 (= (ControlFlow 1 230848) 230849)) (= (ControlFlow 1 230849) 230850) (and (= SIV_21 SIV_20) (= (ControlFlow 1 230850) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319))))
 (let (($x401 (=> (and (and (not (= SIV_19 1)) (= (ControlFlow 1 230845) 230846)) true (and true SIV_26)) $x393)))
 (let (($x372 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 230844) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x367 (= SIV_19 1)))
 (let (($x427 (and (=> (and (= (ControlFlow 1 230842) 230844) $x367 (and (= SIV_21 true) (= (ControlFlow 1 230844) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230842) 230845) (and (not $x367) (= (ControlFlow 1 230845) 230846)) true (and true SIV_26)) $x393))))
 (let (($x418 (and (boogie_si_record_i32 SIV_17) (= SIV_19 (ite (= SIV_17 SIV_18) 1 0)))))
 (let (($x406 (and (and (not (= SIV_16 1)) (boogie_si_record_i32 0)) (and true true))))
 (let (($x428 (=> (and $x406 (and (and SIV_25 (= SIV_17 (hanoi_cb $u0))) $x418)) $x427)))
 (let (($x335 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 230839) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x342 (=> (and (and (= SIV_16 1) (= (ControlFlow 1 230841) 230839)) (and (= SIV_21 true) (= (ControlFlow 1 230839) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x441 (and (=> (and (= (ControlFlow 1 230840) 230841) (and (= SIV_16 1) (= (ControlFlow 1 230841) 230839)) (and (= SIV_21 true) (= (ControlFlow 1 230839) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230840) 230842) (and $x406 (and (and SIV_25 (= SIV_17 (hanoi_cb $u0))) $x418))) $x427))))
 (let (($x434 (and (not (= SIV_15 1)) (= SIV_16 (ite (> $u0 31) 1 0)))))
 (let (($x349 (=> (and (and (= SIV_15 1) (= (ControlFlow 1 230838) 230839)) (and (= SIV_21 true) (= (ControlFlow 1 230839) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x457 (and (=> (and (= (ControlFlow 1 230837) 230838) (and (= SIV_15 1) (= (ControlFlow 1 230838) 230839)) (and (= SIV_21 true) (= (ControlFlow 1 230839) 230843)) (= SIV_22 0) (and (= SIV_23 SIV_21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230837) 230840) $x434) $x441))))
 (let (($x449 (and (boogie_si_record_ref main_) (= SIV_15 (ite (< $u0 1) 1 0)))))
 (let (($x463 (=> (and (= (ControlFlow 1 236155) 230837) true (and (and true SIV_24) $x449)) $x457)))
 (let (($x469 (and (= (ControlFlow 1 0) 236162) (not (=> (and (and true (= (ControlFlow 1 236162) 236155)) (= (ControlFlow 1 236155) 230837) true (and (and true SIV_24) $x449)) $x457)))))
 (=> SIV_5 $x469))))))))))))))))))))))))))
(check-sat)
