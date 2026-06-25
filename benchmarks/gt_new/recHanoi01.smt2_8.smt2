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
(declare-fun SIV@30 () Bool)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@47 () Bool)
(declare-fun SIV@45 () Int)
(declare-fun SIV@46 () Bool)
(declare-fun SIV@44 () Int)
(declare-fun SIV@43 () Int)
(declare-fun SIV@42 () Int)
(declare-fun SIV@41 () Int)
(declare-fun SIV@52 () Bool)
(declare-fun SIV@51 () Bool)
(declare-fun SIV@71 () Bool)
(declare-fun SIV@69 () Int)
(declare-fun SIV@70 () Bool)
(declare-fun SIV@68 () Int)
(declare-fun SIV@67 () Int)
(declare-fun SIV@66 () Int)
(declare-fun SIV@65 () Int)
(declare-fun SIV@88 () Bool)
(declare-fun SIV@86 () Int)
(declare-fun SIV@87 () Bool)
(declare-fun SIV@85 () Int)
(declare-fun SIV@84 () Int)
(declare-fun SIV@83 () Int)
(declare-fun SIV@82 () Int)
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
 (let (($x405 (and true true)))
 (let (($x420 (and (and (and (not (= SIV@16 1)) (boogie_si_record_i32 0)) $x405) (and (and SIV@25 (= SIV@17 (hanoi@@0 $u0))) $x418))))
 (let (($x335 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x342 (=> (and (and (= SIV@16 1) (= (ControlFlow 1 230841) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x441 (and (=> (and (= (ControlFlow 1 230840) 230841) (and (= SIV@16 1) (= (ControlFlow 1 230841) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230840) 230842) $x420) $x427))))
 (let (($x434 (and (not (= SIV@15 1)) (= SIV@16 (ite (> $u0 31) 1 0)))))
 (let (($x349 (=> (and (and (= SIV@15 1) (= (ControlFlow 1 230838) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319)))
 (let (($x457 (and (=> (and (= (ControlFlow 1 230837) 230838) (and (= SIV@15 1) (= (ControlFlow 1 230838) 230839)) (and (= SIV@21 true) (= (ControlFlow 1 230839) 230843)) (= SIV@22 0) (and (= SIV@23 SIV@21) (= (ControlFlow 1 230843) 236157)) (= (ControlFlow 1 236157) (- 0 236561))) $x319) (=> (and (= (ControlFlow 1 230837) 230840) $x434) $x441))))
 (let (($x449 (and (boogie_si_record_ref main) (= SIV@15 (ite (< $u0 1) 1 0)))))
 (let (($x463 (=> (and (= (ControlFlow 1 236155) 230837) true (and (and true SIV@24) $x449)) $x457)))
 (let (($x469 (and (= (ControlFlow 1 0) 236162) (not (=> (and (and true (= (ControlFlow 1 236162) 236155)) (= (ControlFlow 1 236155) 230837) true (and (and true SIV@24) $x449)) $x457)))))
 (=> SIV@5 $x469))))))))))))))))))))))))))
(assert
 (let (($x405 (and true true)))
 (let (($x550 (and $x405 (and SIV@30 (= (ControlFlow 2 231355) (- 0 236671))))))
 (let (($x557 (=> (and (= (ControlFlow 2 236636) 231355) true (and true SIV@29) $x550) false)))
 (let (($x563 (and (= (ControlFlow 2 0) 236638) (not (=> (and (and true (= (ControlFlow 2 236638) 236636)) (= (ControlFlow 2 236636) 231355) true (and true SIV@29) $x550) false)))))
 (=> SIV@24 $x563))))))
(assert
 (let (($x574 (=> (= (ControlFlow 3 230505) (- 0 237052)) false)))
 (let (($x405 (and true true)))
 (let (($x600 (and (and $x405 (and SIV@46 (= SIV@45 (- $u0 1)))) (and $x405 (and SIV@47 (= (ControlFlow 3 230504) 230505))))))
 (let (($x588 (and (and (not (= SIV@41 1)) (= SIV@43 (+ SIV@42 1))) (and (boogie_si_record_i32 SIV@43) (= SIV@44 (- $u0 1))))))
 (let (($x607 (=> (and (and (= SIV@41 1) (= (ControlFlow 3 230503) 230505)) (= (ControlFlow 3 230505) (- 0 237052))) false)))
 (let (($x624 (and (=> (and (= (ControlFlow 3 230502) 230503) (and (= SIV@41 1) (= (ControlFlow 3 230503) 230505)) (= (ControlFlow 3 230505) (- 0 237052))) false) (=> (and (= (ControlFlow 3 230502) 230504) $x588 $x600 (= (ControlFlow 3 230505) (- 0 237052))) false))))
 (let (($x612 (boogie_si_record_i32 2)))
 (let (($x617 (and (and (boogie_si_record_i32 1) (boogie_si_record_i32 3)) (and $x612 (= SIV@41 (ite (= $u0 0) 1 0))))))
 (let (($x630 (=> (and (= (ControlFlow 3 236693) 230502) (boogie_si_record_i32 $u0) $x617) $x624)))
 (let (($x636 (and (= (ControlFlow 3 0) 236699) (not (=> (and (and true (= (ControlFlow 3 236699) 236693)) (= (ControlFlow 3 236693) 230502) (boogie_si_record_i32 $u0) $x617) $x624)))))
 (=> SIV@25 $x636))))))))))))
(assert
 (let (($x648 (not SIV@52)))
 (let (($x649 (= SIV@20 $x648)))
 (let (($x650 (=> (= (ControlFlow 4 237110) (- 0 237195)) $x649)))
 (let (($x675 (=> (and (and (= SIV@52 SIV@51) (= (ControlFlow 4 230993) 237110)) (= (ControlFlow 4 237110) (- 0 237195))) $x649)))
 (let (($x682 (=> (and (and (= SIV@51 true) (= (ControlFlow 4 230992) 230993)) (and (= SIV@52 SIV@51) (= (ControlFlow 4 230993) 237110)) (= (ControlFlow 4 237110) (- 0 237195))) $x649)))
 (let (($x689 (=> (and (= (ControlFlow 4 230987) 230992) (not (= 0 $0)) (and (= SIV@51 true) (= (ControlFlow 4 230992) 230993)) (and (= SIV@52 SIV@51) (= (ControlFlow 4 230993) 237110)) (= (ControlFlow 4 237110) (- 0 237195))) $x649)))
 (let (($x657 (=> (and (and (= SIV@52 false) (= (ControlFlow 4 230989) 237110)) (= (ControlFlow 4 237110) (- 0 237195))) $x649)))
 (let (($x667 (and (=> (and (= (ControlFlow 4 230988) 230989) (not false) (and (= SIV@52 false) (= (ControlFlow 4 230989) 237110)) (= (ControlFlow 4 237110) (- 0 237195))) $x649) (=> (= (ControlFlow 4 230988) 230990) true))))
 (let (($x659 (= 0 $0)))
 (let (($x403 (boogie_si_record_i32 0)))
 (let (($x691 (=> $x403 (and (=> (and (= (ControlFlow 4 230987) 230988) $x659) $x667) $x689))))
 (let (($x699 (=> (and (and true (= (ControlFlow 4 237115) 237108)) (= (ControlFlow 4 237108) 230987) $x403) (and (=> (and (= (ControlFlow 4 230987) 230988) $x659) $x667) $x689))))
 (=> SIV@26 (and (= (ControlFlow 4 0) 237115) (not $x699))))))))))))))))
(assert
 (let (($x403 (boogie_si_record_i32 0)))
 (let (($x793 (=> (and (= (ControlFlow 5 237215) 231320) (and $x403 (= (ControlFlow 5 231320) (- 0 237241)))) false)))
 (let (($x799 (and (= (ControlFlow 5 0) 237217) (not (=> (and (and true (= (ControlFlow 5 237217) 237215)) (= (ControlFlow 5 237215) 231320) (and $x403 (= (ControlFlow 5 231320) (- 0 237241)))) false)))))
 (=> SIV@29 $x799)))))
(assert
 (let (($x814 (=> (and (= (ControlFlow 6 237249) 231279) (= (ControlFlow 6 231279) (- 0 237268))) false)))
 (let (($x820 (and (= (ControlFlow 6 0) 237251) (not (=> (and (and true (= (ControlFlow 6 237251) 237249)) (= (ControlFlow 6 237249) 231279) (= (ControlFlow 6 231279) (- 0 237268))) false)))))
 (=> SIV@30 $x820))))
(assert
 (let (($x827 (=> (= (ControlFlow 7 230505) (- 0 237052)) false)))
 (let (($x405 (and true true)))
 (let (($x852 (and (and $x405 (and SIV@70 (= SIV@69 (- SIV@44 1)))) (and $x405 (and SIV@71 (= (ControlFlow 7 230504) 230505))))))
 (let (($x841 (and (and (not (= SIV@65 1)) (= SIV@67 (+ SIV@66 1))) (and (boogie_si_record_i32 SIV@67) (= SIV@68 (- SIV@44 1))))))
 (let (($x858 (=> (and (and (= SIV@65 1) (= (ControlFlow 7 230503) 230505)) (= (ControlFlow 7 230505) (- 0 237052))) false)))
 (let (($x871 (and (=> (and (= (ControlFlow 7 230502) 230503) (and (= SIV@65 1) (= (ControlFlow 7 230503) 230505)) (= (ControlFlow 7 230505) (- 0 237052))) false) (=> (and (= (ControlFlow 7 230502) 230504) $x841 $x852 (= (ControlFlow 7 230505) (- 0 237052))) false))))
 (let (($x610 (boogie_si_record_i32 3)))
 (let (($x865 (and (and (boogie_si_record_i32 1) (boogie_si_record_i32 2)) (and $x610 (= SIV@65 (ite (= SIV@44 0) 1 0))))))
 (let (($x876 (=> (and (= (ControlFlow 7 236693) 230502) (boogie_si_record_i32 SIV@44) $x865) $x871)))
 (let (($x882 (and (= (ControlFlow 7 0) 236699) (not (=> (and (and true (= (ControlFlow 7 236699) 236693)) (= (ControlFlow 7 236693) 230502) (boogie_si_record_i32 SIV@44) $x865) $x871)))))
 (=> SIV@46 $x882))))))))))))
(assert
 (let (($x889 (=> (= (ControlFlow 8 230505) (- 0 237052)) false)))
 (let (($x405 (and true true)))
 (let (($x914 (and (and $x405 (and SIV@87 (= SIV@86 (- SIV@45 1)))) (and $x405 (and SIV@88 (= (ControlFlow 8 230504) 230505))))))
 (let (($x903 (and (and (not (= SIV@82 1)) (= SIV@84 (+ SIV@83 1))) (and (boogie_si_record_i32 SIV@84) (= SIV@85 (- SIV@45 1))))))
 (let (($x920 (=> (and (and (= SIV@82 1) (= (ControlFlow 8 230503) 230505)) (= (ControlFlow 8 230505) (- 0 237052))) false)))
 (let (($x933 (and (=> (and (= (ControlFlow 8 230502) 230503) (and (= SIV@82 1) (= (ControlFlow 8 230503) 230505)) (= (ControlFlow 8 230505) (- 0 237052))) false) (=> (and (= (ControlFlow 8 230502) 230504) $x903 $x914 (= (ControlFlow 8 230505) (- 0 237052))) false))))
 (let (($x609 (boogie_si_record_i32 1)))
 (let (($x927 (and (and (boogie_si_record_i32 2) (boogie_si_record_i32 3)) (and $x609 (= SIV@82 (ite (= SIV@45 0) 1 0))))))
 (let (($x938 (=> (and (= (ControlFlow 8 236693) 230502) (boogie_si_record_i32 SIV@45) $x927) $x933)))
 (let (($x944 (and (= (ControlFlow 8 0) 236699) (not (=> (and (and true (= (ControlFlow 8 236699) 236693)) (= (ControlFlow 8 236693) 230502) (boogie_si_record_i32 SIV@45) $x927) $x933)))))
 (=> SIV@47 $x944))))))))))))
(assert
 (not SIV@88))
(assert
 (not SIV@70))
(assert
 (not SIV@71))
(assert
 (not SIV@87))
(check-sat)
