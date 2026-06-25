(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.array.extensional false)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
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
(declare-fun mult () Int)
(declare-fun is_prime () Int)
(declare-fun is_prime_ () Int)
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
(assert (= $0 0))
(assert (= $1 1))
(assert (= $0.ref 0))
(assert (= $1.ref 1))
(assert (= $1024.ref 1024))
(assert (= $GLOBALS_BOTTOM (- 0 23736)))
(assert (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert (= $MALLOC_TOP 9223372036854775807))
(assert (= ($and.i1 0 0) 0))
(assert (= ($or.i1 0 0) 0))
(assert (= ($xor.i1 0 0) 0))
(assert (= ($and.i1 0 1) 0))
(assert (= ($or.i1 0 1) 1))
(assert (= ($xor.i1 0 1) 1))
(assert (= ($and.i1 1 0) 0))
(assert (= ($or.i1 1 0) 1))
(assert (= ($xor.i1 1 0) 1))
(assert (= ($and.i1 1 1) 1))
(assert (= ($or.i1 1 1) 1))
(assert (= ($xor.i1 1 1) 0))
(assert (= ($and.i32 32 16) 0))
(assert (= mult (- 0 1032)))
(assert (= is_prime (- 0 2064)))
(assert (= is_prime_ (- 0 3096)))
(assert (= main (- 0 4128)))
(assert (= __SMACK_code (- 0 5160)))
(assert (= __VERIFIER_assume (- 0 6192)))
(assert (= __SMACK_dummy (- 0 7224)))
(assert (= __VERIFIER_assert (- 0 8256)))
(assert (= __SMACK_and32 (- 0 9288)))
(assert (= __SMACK_and64 (- 0 10320)))
(assert (= __SMACK_and16 (- 0 11352)))
(assert (= __SMACK_and8 (- 0 12384)))
(assert (= __SMACK_or32 (- 0 13416)))
(assert (= __SMACK_or64 (- 0 14448)))
(assert (= __SMACK_or16 (- 0 15480)))
(assert (= __SMACK_or8 (- 0 16512)))
(assert (= __SMACK_check_overflow (- 0 17544)))
(assert (= __SMACK_loop_exit (- 0 18576)))
(assert (= __SMACK_decls (- 0 19608)))
(assert (= __SMACK_top_decl (- 0 20640)))
(assert (= __SMACK_init_func_memory_model (- 0 21672)))
(assert (= llvm.dbg.value (- 0 22704)))
(assert (= __SMACK_static_init (- 0 23736)))
(assert true)
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@3 () Bool)
(declare-fun SIV@1 () Int)
(declare-fun SIV@4 () Int)
(declare-fun SIV@2 () Bool)
(declare-fun SIV@0 () Bool)
(assert  (and (= (ControlFlow 0 0) 241526) (not (let ((start_correct  (=> (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 236199) (- 0 241580)))) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
(let ((q@0_correct  (=> (= (ControlFlow 0 241523) 236199) start_correct)))
(let ((PreconditionGeneratedEntry_correct  (=> (and SIV@0 (= (ControlFlow 0 241526) 241523)) q@0_correct)))
PreconditionGeneratedEntry_correct))))))
(push 1)
(assert (not
SIV@5
))
(pop 1)
(push 1)
(pop 1)
; Inlining main from main
(declare-fun SIV@36 () Int)
(declare-fun SIV@37 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@42 () Int)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@26 () Int)
(declare-fun SIV@25 () Int)
(declare-fun SIV@28 () Int)
(declare-fun SIV@27 () Int)
(declare-fun SIV@41 () Bool)
(declare-fun SIV@33 () Int)
(declare-fun SIV@32 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@31 () Int)
(declare-fun SIV@29 () Int)
(declare-fun SIV@40 () Bool)
(declare-fun SIV@30 () Int)
(declare-fun SIV@24 () Int)
(declare-fun SIV@39 () Bool)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV@38 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(assert  (=> SIV@5 (and (= (ControlFlow 1 0) 241643) (not (let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 1 241638) (- 0 242333)) (not (and (= SIV@4 SIV@36) (= SIV@3 SIV@37))))))
(let ((SeqInstr_1_correct  (=> (and (and (not SIV@34) (= SIV@36 SIV@42)) (and (= SIV@37 SIV@34) (= (ControlFlow 1 235672) 241638))) GeneratedUnifiedExit_correct)))
(let (($bb6_correct  (=> (= SIV@36 0) (=> (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) GeneratedUnifiedExit_correct))))
(let (($bb2_correct  (=> (and (= SIV@35 true) (= (ControlFlow 1 235647) 235651)) $bb6_correct)))
(let (($bb4_correct  (=> (and (= SIV@23 1) (= (ControlFlow 1 235649) 235647)) $bb2_correct)))
(let (($bb1_correct  (=> (and (= SIV@22 1) (= (ControlFlow 1 235646) 235647)) $bb2_correct)))
(let (($bb8_correct  (=> (and (= SIV@35 true) (= (ControlFlow 1 235653) 235651)) $bb6_correct)))
(let (($bb10_correct  (=> (and (= SIV@26 1) (= (ControlFlow 1 235655) 235653)) $bb8_correct)))
(let (($bb7_correct  (=> (and (= SIV@25 1) (= (ControlFlow 1 235652) 235653)) $bb8_correct)))
(let (($bb13_correct  (=> (and (= SIV@35 true) (= (ControlFlow 1 235658) 235651)) $bb6_correct)))
(let (($bb15_correct  (=> (and (= SIV@28 1) (= (ControlFlow 1 235660) 235658)) $bb13_correct)))
(let (($bb12_correct  (=> (and (= SIV@27 1) (= (ControlFlow 1 235657) 235658)) $bb13_correct)))
(let (($bb27_correct  (=> (and (= SIV@35 SIV@34) (= (ControlFlow 1 235675) 235651)) $bb6_correct)))
(let ((SeqInstr_3_correct  (=> (= (ControlFlow 1 235674) 235675) $bb27_correct)))
(let ((SeqInstr_2_correct  (=> (and SIV@34 (= (ControlFlow 1 235673) 235674)) SeqInstr_3_correct)))
(let (($bb26_correct  (=> true (=> (and true SIV@41) (and (=> (= (ControlFlow 1 235671) 235672) SeqInstr_1_correct) (=> (= (ControlFlow 1 235671) 235673) SeqInstr_2_correct))))))
(let (($bb24_correct  (=> (and (= SIV@33 1) (= (ControlFlow 1 235669) 235671)) $bb26_correct)))
(let (($bb19_correct  (=> (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) $bb6_correct)))
(let (($bb25_correct  (=> (and (not (= SIV@33 1)) (= (ControlFlow 1 235670) 235664)) $bb19_correct)))
(let (($bb22_correct  (=> (and (= SIV@32 1) (= SIV@33 (ite (> $u0 1) 1 0))) (and (=> (= (ControlFlow 1 235667) 235669) $bb24_correct) (=> (= (ControlFlow 1 235667) 235670) $bb25_correct)))))
(let (($bb23_correct  (=> (and (not (= SIV@32 1)) (= (ControlFlow 1 235668) 235664)) $bb19_correct)))
(let (($bb20_correct  (=> (and (= SIV@31 1) (= SIV@32 (ite (> $u0 1) 1 0))) (and (=> (= (ControlFlow 1 235665) 235667) $bb22_correct) (=> (= (ControlFlow 1 235665) 235668) $bb23_correct)))))
(let (($bb21_correct  (=> (and (not (= SIV@31 1)) (= (ControlFlow 1 235666) 235664)) $bb19_correct)))
(let (($bb17_correct  (=> (= SIV@29 1) (=> (and (and true true) (and SIV@40 (= SIV@31 (ite (= SIV@30 $u0) 1 0)))) (and (=> (= (ControlFlow 1 235662) 235665) $bb20_correct) (=> (= (ControlFlow 1 235662) 235666) $bb21_correct))))))
(let (($bb18_correct  (=> (and (not (= SIV@29 1)) (= (ControlFlow 1 235663) 235664)) $bb19_correct)))
(let (($bb16_correct  (=> (and (not (= SIV@28 1)) (= SIV@29 (ite (= SIV@24 1) 1 0))) (and (=> (= (ControlFlow 1 235661) 235662) $bb17_correct) (=> (= (ControlFlow 1 235661) 235663) $bb18_correct)))))
(let (($bb14_correct  (=> (and (not (= SIV@27 1)) (= SIV@28 (ite (> $u0 46340) 1 0))) (and (=> (= (ControlFlow 1 235659) 235660) $bb15_correct) (=> (= (ControlFlow 1 235659) 235661) $bb16_correct)))))
(let (($bb11_correct  (=> (and (not (= SIV@26 1)) (= SIV@27 (ite (< $u0 1) 1 0))) (and (=> (= (ControlFlow 1 235656) 235657) $bb12_correct) (=> (= (ControlFlow 1 235656) 235659) $bb14_correct)))))
(let (($bb9_correct  (=> (and (not (= SIV@25 1)) (= SIV@26 (ite (> $u0 46340) 1 0))) (and (=> (= (ControlFlow 1 235654) 235655) $bb10_correct) (=> (= (ControlFlow 1 235654) 235656) $bb11_correct)))))
(let (($bb5_correct  (=> (and (not (= SIV@23 1)) true) (=> (and (and true SIV@39) (and (boogie_si_record_i32 SIV@24) (= SIV@25 (ite (< $u0 1) 1 0)))) (and (=> (= (ControlFlow 1 235650) 235652) $bb7_correct) (=> (= (ControlFlow 1 235650) 235654) $bb9_correct))))))
(let (($bb3_correct  (=> (and (not (= SIV@22 1)) (= SIV@23 (ite (> $u0 46340) 1 0))) (and (=> (= (ControlFlow 1 235648) 235649) $bb4_correct) (=> (= (ControlFlow 1 235648) 235650) $bb5_correct)))))
(let (($bb0_correct  (=> true (=> (and (and true SIV@38) (and (boogie_si_record_ref main) (= SIV@22 (ite (< $u0 1) 1 0)))) (and (=> (= (ControlFlow 1 235645) 235646) $bb1_correct) (=> (= (ControlFlow 1 235645) 235648) $bb3_correct))))))
(let ((q@0_correct@@0  (=> (= (ControlFlow 1 241636) 235645) $bb0_correct)))
(let ((PreconditionGeneratedEntry_correct@@0  (=> (and true (= (ControlFlow 1 241643) 241636)) q@0_correct@@0)))
PreconditionGeneratedEntry_correct@@0))))))))))))))))))))))))))))))))))))))
(push 1)
(assert (not
SIV@38
))
(assert (not
SIV@39
))
(assert (not
SIV@40
))
(assert (not
SIV@41
))
(pop 1)
(push 1)
(pop 1)
; Inlining $initialize from main
(declare-fun SIV@44 () Bool)
(declare-fun SIV@45 () Bool)
(assert  (=> SIV@38 (and (= (ControlFlow 2 0) 242445) (not (let ((anon0_correct  (=> true (=> (and true SIV@44) (=> (and (and true true) (and SIV@45 (= (ControlFlow 2 236175) (- 0 242478)))) false)))))
(let ((q@0_correct@@1  (=> (= (ControlFlow 2 242443) 236175) anon0_correct)))
(let ((PreconditionGeneratedEntry_correct@@1  (=> (and true (= (ControlFlow 2 242445) 242443)) q@0_correct@@1)))
PreconditionGeneratedEntry_correct@@1)))))))
; Inlining is_prime from main
(declare-fun SIV@51 () Int)
(declare-fun SIV@52 () Int)
(declare-fun is_prime_@@0 (Int Int) Int)
(assert  (=> SIV@39 (and (= (ControlFlow 3 0) 242510) (not (let (($bb0_correct@@0  (=> (and (and (boogie_si_record_i32 $u0) (= SIV@51 (- $u0 1))) (and (= SIV@52 (is_prime_@@0 $u0 SIV@51)) (= (ControlFlow 3 234919) (- 0 242581)))) (not (= SIV@24 SIV@52)))))
(let ((q@0_correct@@2  (=> (= (ControlFlow 3 242506) 234919) $bb0_correct@@0)))
(let ((PreconditionGeneratedEntry_correct@@2  (=> (and true (= (ControlFlow 3 242510) 242506)) q@0_correct@@2)))
PreconditionGeneratedEntry_correct@@2)))))))
; Inlining mult from main
(declare-fun SIV@75 () Int)
(declare-fun SIV@71 () Int)
(declare-fun SIV@72 () Int)
(declare-fun SIV@76 () Bool)
(declare-fun SIV@74 () Int)
(declare-fun SIV@73 () Int)
(declare-fun SIV@70 () Int)
(declare-fun SIV@67 () Int)
(declare-fun SIV@68 () Int)
(declare-fun SIV@77 () Bool)
(declare-fun SIV@69 () Int)
(assert  (=> SIV@40 (and (= (ControlFlow 4 0) 242617) (not (let (($bb3_correct@@0  (=> (= (ControlFlow 4 234822) (- 0 243002)) (not (= SIV@30 SIV@75)))))
(let (($bb7_correct@@0  (=> (and (and (and (not (= SIV@71 1)) (= SIV@72 (- $u0 1))) (and true true)) (and (and SIV@76 (= SIV@74 (+ $u0 SIV@73))) (and (= SIV@75 SIV@74) (= (ControlFlow 4 234826) 234822)))) $bb3_correct@@0)))
(let (($bb6_correct@@0  (=> (= SIV@71 1) (=> (and (= SIV@75 1) (= (ControlFlow 4 234825) 234822)) $bb3_correct@@0))))
(let (($bb5_correct@@0  (=> (and (not (= SIV@70 1)) (= SIV@71 (ite (= $u0 1) 1 0))) (and (=> (= (ControlFlow 4 234824) 234825) $bb6_correct@@0) (=> (= (ControlFlow 4 234824) 234826) $bb7_correct@@0)))))
(let (($bb4_correct@@0  (=> (= SIV@70 1) (=> (and (= SIV@75 0) (= (ControlFlow 4 234823) 234822)) $bb3_correct@@0))))
(let (($bb2_correct@@0  (=> (and (not (= SIV@67 1)) (= SIV@70 (ite (= $u0 0) 1 0))) (and (=> (= (ControlFlow 4 234821) 234823) $bb4_correct@@0) (=> (= (ControlFlow 4 234821) 234824) $bb5_correct@@0)))))
(let (($bb1_correct@@0  (=> (= SIV@67 1) (=> (and (= SIV@68 (- 0 $u0)) true) (=> (and (and true SIV@77) (and (= SIV@75 SIV@69) (= (ControlFlow 4 234820) 234822))) $bb3_correct@@0)))))
(let (($bb0_correct@@1  (=> (boogie_si_record_i32 $u0) (=> (and (boogie_si_record_i32 $u0) (= SIV@67 (ite (< $u0 0) 1 0))) (and (=> (= (ControlFlow 4 234819) 234820) $bb1_correct@@0) (=> (= (ControlFlow 4 234819) 234821) $bb2_correct@@0))))))
(let ((q@0_correct@@3  (=> (= (ControlFlow 4 242612) 234819) $bb0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (and true (= (ControlFlow 4 242617) 242612)) q@0_correct@@3)))
PreconditionGeneratedEntry_correct@@3))))))))))))))
; Inlining __VERIFIER_assert from main
(declare-fun SIV@83 () Bool)
(declare-fun SIV@82 () Bool)
(assert  (=> SIV@41 (and (= (ControlFlow 5 0) 243084) (not (let ((SeqInstr_5_correct true))
(let ((GeneratedUnifiedExit_correct@@0  (=> (= (ControlFlow 5 243079) (- 0 243164)) (= SIV@34  (not SIV@83)))))
(let ((SeqInstr_4_correct  (=> (not false) (=> (and (= SIV@83 false) (= (ControlFlow 5 235814) 243079)) GeneratedUnifiedExit_correct@@0))))
(let ((assert_rewrite_dummy_block_0_correct  (=> (= 0 $0) (and (=> (= (ControlFlow 5 235813) 235814) SeqInstr_4_correct) (=> (= (ControlFlow 5 235813) 235815) SeqInstr_5_correct)))))
(let ((assert_rewrite_dummy_block_2_correct  (=> (and (= SIV@83 SIV@82) (= (ControlFlow 5 235818) 243079)) GeneratedUnifiedExit_correct@@0)))
(let ((assert_rewrite_dummy_block_1_correct  (=> (not (= 0 $0)) (=> (and (= SIV@82 true) (= (ControlFlow 5 235817) 235818)) assert_rewrite_dummy_block_2_correct))))
(let (($bb0_correct@@2  (=> (boogie_si_record_i32 0) (and (=> (= (ControlFlow 5 235812) 235813) assert_rewrite_dummy_block_0_correct) (=> (= (ControlFlow 5 235812) 235817) assert_rewrite_dummy_block_1_correct)))))
(let ((q@0_correct@@4  (=> (= (ControlFlow 5 243077) 235812) $bb0_correct@@2)))
(let ((PreconditionGeneratedEntry_correct@@4  (=> (and true (= (ControlFlow 5 243084) 243077)) q@0_correct@@4)))
PreconditionGeneratedEntry_correct@@4)))))))))))))
(push 1)
(assert (not
SIV@44
))
(assert (not
SIV@77
))
(assert (not
SIV@76
))
(assert (not
SIV@45
))
(pop 1)
(push 1)
(assert (not
SIV@77
))
(assert (not
SIV@76
))
(pop 1)
(push 1)
(assert (not
SIV@44
))
(assert (not
SIV@77
))
(assert (not
SIV@76
))
(assert (not
SIV@45
))
(pop 1)
(push 1)
(pop 1)
; Inlining __SMACK_static_init from $initialize
(assert  (=> SIV@44 (and (= (ControlFlow 6 0) 243186) (not (let (($bb0_correct@@3  (=> (= (ControlFlow 6 236140) (- 0 243191)) false)))
(let ((q@0_correct@@5  (=> (= (ControlFlow 6 243184) 236140) $bb0_correct@@3)))
(let ((PreconditionGeneratedEntry_correct@@5  (=> (and true (= (ControlFlow 6 243186) 243184)) q@0_correct@@5)))
PreconditionGeneratedEntry_correct@@5)))))))
; Inlining __SMACK_init_func_memory_model from $initialize
(assert  (=> SIV@45 (and (= (ControlFlow 7 0) 243201) (not (let (($bb0_correct@@4  (=> (= (ControlFlow 7 236104) (- 0 243218)) false)))
(let ((q@0_correct@@6  (=> (= (ControlFlow 7 243199) 236104) $bb0_correct@@4)))
(let ((PreconditionGeneratedEntry_correct@@6  (=> (and true (= (ControlFlow 7 243201) 243199)) q@0_correct@@6)))
PreconditionGeneratedEntry_correct@@6)))))))
; Inlining mult from mult
(declare-fun SIV@107 () Int)
(declare-fun SIV@103 () Int)
(declare-fun SIV@104 () Int)
(declare-fun SIV@108 () Bool)
(declare-fun SIV@106 () Int)
(declare-fun SIV@105 () Int)
(declare-fun SIV@102 () Int)
(declare-fun SIV@99 () Int)
(declare-fun SIV@100 () Int)
(declare-fun SIV@109 () Bool)
(declare-fun SIV@101 () Int)
(assert  (=> SIV@76 (and (= (ControlFlow 8 0) 242617) (not (let (($bb3_correct@@0  (=> (= (ControlFlow 8 234822) (- 0 243002)) (not (= SIV@73 SIV@107)))))
(let (($bb7_correct@@0  (=> (and (and (and (not (= SIV@103 1)) (= SIV@104 (- SIV@72 1))) (and true true)) (and (and SIV@108 (= SIV@106 (+ $u0 SIV@105))) (and (= SIV@107 SIV@106) (= (ControlFlow 8 234826) 234822)))) $bb3_correct@@0)))
(let (($bb6_correct@@0  (=> (= SIV@103 1) (=> (and (= SIV@107 1) (= (ControlFlow 8 234825) 234822)) $bb3_correct@@0))))
(let (($bb5_correct@@0  (=> (and (not (= SIV@102 1)) (= SIV@103 (ite (= SIV@72 1) 1 0))) (and (=> (= (ControlFlow 8 234824) 234825) $bb6_correct@@0) (=> (= (ControlFlow 8 234824) 234826) $bb7_correct@@0)))))
(let (($bb4_correct@@0  (=> (= SIV@102 1) (=> (and (= SIV@107 0) (= (ControlFlow 8 234823) 234822)) $bb3_correct@@0))))
(let (($bb2_correct@@0  (=> (and (not (= SIV@99 1)) (= SIV@102 (ite (= SIV@72 0) 1 0))) (and (=> (= (ControlFlow 8 234821) 234823) $bb4_correct@@0) (=> (= (ControlFlow 8 234821) 234824) $bb5_correct@@0)))))
(let (($bb1_correct@@0  (=> (= SIV@99 1) (=> (and (= SIV@100 (- 0 SIV@72)) true) (=> (and (and true SIV@109) (and (= SIV@107 SIV@101) (= (ControlFlow 8 234820) 234822))) $bb3_correct@@0)))))
(let (($bb0_correct@@1  (=> (boogie_si_record_i32 $u0) (=> (and (boogie_si_record_i32 SIV@72) (= SIV@99 (ite (< SIV@72 0) 1 0))) (and (=> (= (ControlFlow 8 234819) 234820) $bb1_correct@@0) (=> (= (ControlFlow 8 234819) 234821) $bb2_correct@@0))))))
(let ((q@0_correct@@3  (=> (= (ControlFlow 8 242612) 234819) $bb0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (and true (= (ControlFlow 8 242617) 242612)) q@0_correct@@3)))
PreconditionGeneratedEntry_correct@@3))))))))))))))
(push 1)
(assert (not
SIV@77
))
(assert (not
SIV@108
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(assert (not
SIV@108
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(assert (not
SIV@77
))
(assert (not
SIV@108
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(pop 1)
; Inlining mult from mult
(declare-fun SIV@132 () Int)
(declare-fun SIV@128 () Int)
(declare-fun SIV@129 () Int)
(declare-fun SIV@133 () Bool)
(declare-fun SIV@131 () Int)
(declare-fun SIV@130 () Int)
(declare-fun SIV@127 () Int)
(declare-fun SIV@124 () Int)
(declare-fun SIV@125 () Int)
(declare-fun SIV@134 () Bool)
(declare-fun SIV@126 () Int)
(assert  (=> SIV@108 (and (= (ControlFlow 9 0) 242617) (not (let (($bb3_correct@@0  (=> (= (ControlFlow 9 234822) (- 0 243002)) (not (= SIV@105 SIV@132)))))
(let (($bb7_correct@@0  (=> (and (and (and (not (= SIV@128 1)) (= SIV@129 (- SIV@104 1))) (and true true)) (and (and SIV@133 (= SIV@131 (+ $u0 SIV@130))) (and (= SIV@132 SIV@131) (= (ControlFlow 9 234826) 234822)))) $bb3_correct@@0)))
(let (($bb6_correct@@0  (=> (= SIV@128 1) (=> (and (= SIV@132 1) (= (ControlFlow 9 234825) 234822)) $bb3_correct@@0))))
(let (($bb5_correct@@0  (=> (and (not (= SIV@127 1)) (= SIV@128 (ite (= SIV@104 1) 1 0))) (and (=> (= (ControlFlow 9 234824) 234825) $bb6_correct@@0) (=> (= (ControlFlow 9 234824) 234826) $bb7_correct@@0)))))
(let (($bb4_correct@@0  (=> (= SIV@127 1) (=> (and (= SIV@132 0) (= (ControlFlow 9 234823) 234822)) $bb3_correct@@0))))
(let (($bb2_correct@@0  (=> (and (not (= SIV@124 1)) (= SIV@127 (ite (= SIV@104 0) 1 0))) (and (=> (= (ControlFlow 9 234821) 234823) $bb4_correct@@0) (=> (= (ControlFlow 9 234821) 234824) $bb5_correct@@0)))))
(let (($bb1_correct@@0  (=> (= SIV@124 1) (=> (and (= SIV@125 (- 0 SIV@104)) true) (=> (and (and true SIV@134) (and (= SIV@132 SIV@126) (= (ControlFlow 9 234820) 234822))) $bb3_correct@@0)))))
(let (($bb0_correct@@1  (=> (boogie_si_record_i32 $u0) (=> (and (boogie_si_record_i32 SIV@104) (= SIV@124 (ite (< SIV@104 0) 1 0))) (and (=> (= (ControlFlow 9 234819) 234820) $bb1_correct@@0) (=> (= (ControlFlow 9 234819) 234821) $bb2_correct@@0))))))
(let ((q@0_correct@@3  (=> (= (ControlFlow 9 242612) 234819) $bb0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (and true (= (ControlFlow 9 242617) 242612)) q@0_correct@@3)))
PreconditionGeneratedEntry_correct@@3))))))))))))))
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@77
))
(assert (not
SIV@133
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@133
))
(pop 1)
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@77
))
(assert (not
SIV@133
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(pop 1)
; Inlining mult from mult
(declare-fun SIV@157 () Int)
(declare-fun SIV@153 () Int)
(declare-fun SIV@154 () Int)
(declare-fun SIV@158 () Bool)
(declare-fun SIV@156 () Int)
(declare-fun SIV@155 () Int)
(declare-fun SIV@152 () Int)
(declare-fun SIV@149 () Int)
(declare-fun SIV@150 () Int)
(declare-fun SIV@159 () Bool)
(declare-fun SIV@151 () Int)
(assert  (=> SIV@133 (and (= (ControlFlow 10 0) 242617) (not (let (($bb3_correct@@0  (=> (= (ControlFlow 10 234822) (- 0 243002)) (not (= SIV@130 SIV@157)))))
(let (($bb7_correct@@0  (=> (and (and (and (not (= SIV@153 1)) (= SIV@154 (- SIV@129 1))) (and true true)) (and (and SIV@158 (= SIV@156 (+ $u0 SIV@155))) (and (= SIV@157 SIV@156) (= (ControlFlow 10 234826) 234822)))) $bb3_correct@@0)))
(let (($bb6_correct@@0  (=> (= SIV@153 1) (=> (and (= SIV@157 1) (= (ControlFlow 10 234825) 234822)) $bb3_correct@@0))))
(let (($bb5_correct@@0  (=> (and (not (= SIV@152 1)) (= SIV@153 (ite (= SIV@129 1) 1 0))) (and (=> (= (ControlFlow 10 234824) 234825) $bb6_correct@@0) (=> (= (ControlFlow 10 234824) 234826) $bb7_correct@@0)))))
(let (($bb4_correct@@0  (=> (= SIV@152 1) (=> (and (= SIV@157 0) (= (ControlFlow 10 234823) 234822)) $bb3_correct@@0))))
(let (($bb2_correct@@0  (=> (and (not (= SIV@149 1)) (= SIV@152 (ite (= SIV@129 0) 1 0))) (and (=> (= (ControlFlow 10 234821) 234823) $bb4_correct@@0) (=> (= (ControlFlow 10 234821) 234824) $bb5_correct@@0)))))
(let (($bb1_correct@@0  (=> (= SIV@149 1) (=> (and (= SIV@150 (- 0 SIV@129)) true) (=> (and (and true SIV@159) (and (= SIV@157 SIV@151) (= (ControlFlow 10 234820) 234822))) $bb3_correct@@0)))))
(let (($bb0_correct@@1  (=> (boogie_si_record_i32 $u0) (=> (and (boogie_si_record_i32 SIV@129) (= SIV@149 (ite (< SIV@129 0) 1 0))) (and (=> (= (ControlFlow 10 234819) 234820) $bb1_correct@@0) (=> (= (ControlFlow 10 234819) 234821) $bb2_correct@@0))))))
(let ((q@0_correct@@3  (=> (= (ControlFlow 10 242612) 234819) $bb0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (and true (= (ControlFlow 10 242617) 242612)) q@0_correct@@3)))
PreconditionGeneratedEntry_correct@@3))))))))))))))
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@77
))
(assert (not
SIV@158
))
(assert (not
SIV@159
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(assert (not
SIV@158
))
(assert (not
SIV@159
))
(pop 1)
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@77
))
(assert (not
SIV@158
))
(assert (not
SIV@159
))
(assert (not
SIV@109
))
(pop 1)
(push 1)
(pop 1)
; Inlining mult from mult
(declare-fun SIV@182 () Int)
(declare-fun SIV@178 () Int)
(declare-fun SIV@179 () Int)
(declare-fun SIV@183 () Bool)
(declare-fun SIV@181 () Int)
(declare-fun SIV@180 () Int)
(declare-fun SIV@177 () Int)
(declare-fun SIV@174 () Int)
(declare-fun SIV@175 () Int)
(declare-fun SIV@184 () Bool)
(declare-fun SIV@176 () Int)
(assert  (=> SIV@158 (and (= (ControlFlow 11 0) 242617) (not (let (($bb3_correct@@0  (=> (= (ControlFlow 11 234822) (- 0 243002)) (not (= SIV@155 SIV@182)))))
(let (($bb7_correct@@0  (=> (and (and (and (not (= SIV@178 1)) (= SIV@179 (- SIV@154 1))) (and true true)) (and (and SIV@183 (= SIV@181 (+ $u0 SIV@180))) (and (= SIV@182 SIV@181) (= (ControlFlow 11 234826) 234822)))) $bb3_correct@@0)))
(let (($bb6_correct@@0  (=> (= SIV@178 1) (=> (and (= SIV@182 1) (= (ControlFlow 11 234825) 234822)) $bb3_correct@@0))))
(let (($bb5_correct@@0  (=> (and (not (= SIV@177 1)) (= SIV@178 (ite (= SIV@154 1) 1 0))) (and (=> (= (ControlFlow 11 234824) 234825) $bb6_correct@@0) (=> (= (ControlFlow 11 234824) 234826) $bb7_correct@@0)))))
(let (($bb4_correct@@0  (=> (= SIV@177 1) (=> (and (= SIV@182 0) (= (ControlFlow 11 234823) 234822)) $bb3_correct@@0))))
(let (($bb2_correct@@0  (=> (and (not (= SIV@174 1)) (= SIV@177 (ite (= SIV@154 0) 1 0))) (and (=> (= (ControlFlow 11 234821) 234823) $bb4_correct@@0) (=> (= (ControlFlow 11 234821) 234824) $bb5_correct@@0)))))
(let (($bb1_correct@@0  (=> (= SIV@174 1) (=> (and (= SIV@175 (- 0 SIV@154)) true) (=> (and (and true SIV@184) (and (= SIV@182 SIV@176) (= (ControlFlow 11 234820) 234822))) $bb3_correct@@0)))))
(let (($bb0_correct@@1  (=> (boogie_si_record_i32 $u0) (=> (and (boogie_si_record_i32 SIV@154) (= SIV@174 (ite (< SIV@154 0) 1 0))) (and (=> (= (ControlFlow 11 234819) 234820) $bb1_correct@@0) (=> (= (ControlFlow 11 234819) 234821) $bb2_correct@@0))))))
(let ((q@0_correct@@3  (=> (= (ControlFlow 11 242612) 234819) $bb0_correct@@1)))
(let ((PreconditionGeneratedEntry_correct@@3  (=> (and true (= (ControlFlow 11 242617) 242612)) q@0_correct@@3)))
PreconditionGeneratedEntry_correct@@3))))))))))))))
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@77
))
(assert (not
SIV@183
))
(assert (not
SIV@159
))
(assert (not
SIV@109
))
(assert (not
SIV@184
))
(pop 1)
(push 1)
(assert (not
SIV@183
))
(assert (not
SIV@184
))
(pop 1)
(push 1)
(assert (not
SIV@134
))
(assert (not
SIV@77
))
(assert (not
SIV@183
))
(assert (not
SIV@159
))
(assert (not
SIV@109
))
(assert (not
SIV@184
))
(pop 1)
(push 1)

(check-sat)
