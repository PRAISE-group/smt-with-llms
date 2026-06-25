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
(declare-fun counter () Int)
(declare-fun hanoi () Int)
(declare-fun applyHanoi () Int)
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
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@27 () Int)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@17 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun hanoi@@0 (Int) Int)
(declare-fun $u0 () Int)
(declare-fun SIV@25 () Bool)
(declare-fun SIV@16 () Int)
(declare-fun SIV@15 () Int)
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
 (let ((?x23 (- 0 23732)))
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
 (= counter (- 0 1028)))
(assert
 (= hanoi (- 0 2060)))
(assert
 (= applyHanoi (- 0 3092)))
(assert
 (= main (- 0 4124)))
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
 (= llvm.dbg.value (- 0 22700)))
(assert
 (let ((?x23 (- 0 23732)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 231379) (- 0 236099))))))
 (let (($x176 (=> (and (= (ControlFlow 0 236042) 231379) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 236045) (not (=> (and (and SIV@0 (= (ControlFlow 0 236045) 236042)) (= (ControlFlow 0 236042) 231379) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x319 (not (and (= SIV@4 SIV@22) (= SIV@3 SIV@23)))))
 (let (($x320 (=> (= (ControlFlow 1 236157) (- 0 236561)) $x319)))
 (let (($x328 (=> (and (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x329 (=> (and (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x356 (=> (and (and (= SIV@21 SIV@20) (= (ControlFlow 1 230850) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x365 (=> (and (and SIV@20 (= (ControlFlow 1 230848) 230849)) (= (ControlFlow 1 230849) 230850) (and (= SIV@21 SIV@20) (= (ControlFlow 1 230850) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x383 (and (and (not SIV@20) (= SIV@22 SIV@27)) (and (= SIV@23 SIV@20) (= (ControlFlow 1 230847) 236157)))))
 (let (($x393 (and (=> (and (= (ControlFlow 1 230846) 230847) $x383 (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230846) 230848) (and SIV@20 (= (ControlFlow 1 230848) 230849)) (= (ControlFlow 1 230849) 230850) (and (= SIV@21 SIV@20) (= (ControlFlow 1 230850) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319))))
 (let (($x401 (=> (and (and (not (= SIV@19 1)) (= (ControlFlow 1 230845) 230846)) true (and true SIV@26)) $x393)))
 (let (($x372 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 230844) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x367 (= SIV@19 1)))
 (let (($x427 (and (=> (and (= (ControlFlow 1 230842) 230844) $x367 (and (= SIV@21 true) (= (ControlFlow 1 230844) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230842) 230845) (and (not $x367) (= (ControlFlow 1 230845) 230846)) true (and true SIV@26)) $x393))))
 (let (($x418 (and (boogie_si_record_i32 SIV@17) (= SIV@19 (ite (= SIV@17 SIV@18) 1 0)))))
 (let (($x406 (and (and (not (= SIV@16 1)) (boogie_si_record_i32 0)) (and true true))))
 (let (($x428 (=> (and $x406 (and (and SIV@25 (= SIV@17 (hanoi@@0 $u0))) $x418)) $x427)))
 (let (($x335 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x342 (=> (and (and (= SIV@16 1) (= (ControlFlow 1 230841) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x441 (and (=> (and (= (ControlFlow 1 230840) 230841) (and (= SIV@16 1) (= (ControlFlow 1 230841) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230840) 230842) (and $x406 (and (and SIV@25 (= SIV@17 (hanoi@@0 $u0))) $x418))) $x427))))
 (let (($x434 (and (not (= SIV@15 1)) (= SIV@16 (ite (> $u0 31) 1 0)))))
 (let (($x349 (=> (and (and (= SIV@15 1) (= (ControlFlow 1 230838) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x457 (and (=> (and (= (ControlFlow 1 230837) 230838) (and (= SIV@15 1) (= (ControlFlow 1 230838) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230837) 230840) $x434) $x441))))
 (let (($x449 (and (boogie_si_record_ref main) (= SIV@15 (ite (< $u0 1) 1 0)))))
 (let (($x463 (=> (and (= (ControlFlow 1 236155) 230837) true (and (and true SIV@24) $x449)) $x457)))
 (let (($x469 (and (= (ControlFlow 1 0) 236162) (not (=> (and (and true (= (ControlFlow 1 236162) 236155)) (= (ControlFlow 1 236155) 230837) true (and (and true SIV@24) $x449)) $x457)))))
 (=> SIV@5 $x469))))))))))))))))))))))))))
(assert
 (not SIV@24))
(assert
 (not SIV@25))
(assert
 (not SIV@26))
(check-sat)
