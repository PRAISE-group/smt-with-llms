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
(declare-fun q__str () Int)
(declare-fun beale_int () Int)
(declare-fun main_ () Int)
(declare-fun printf_ () Int)
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
(declare-fun SIV_21 () Bool)
(declare-fun SIV_20 () Int)
(declare-fun SIV_18 () Bool)
(declare-fun SIV_17 () Bool)
(declare-fun SIV_24 () Int)
(declare-fun SIV_23 () Bool)
(declare-fun SIV_16 () Int)
(declare-fun SIV_14 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV_15 () Int)
(declare-fun beale_int_cb (Int Int) Int)
(declare-fun $u0 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_22 () Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_32 () Bool)
(declare-fun SIV_31 () Bool)
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
 (let ((?x23 (- 0 23752)))
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
 (= q__str (- 0 1048)))
(assert
 (= beale_int (- 0 2080)))
(assert
 (= main_ (- 0 3112)))
(assert
 (= printf_ (- 0 4144)))
(assert
 (= __SMACK_code (- 0 5176)))
(assert
 (= __VERIFIER_assume (- 0 6208)))
(assert
 (= __SMACK_dummy (- 0 7240)))
(assert
 (= __VERIFIER_assert (- 0 8272)))
(assert
 (= __SMACK_and32 (- 0 9304)))
(assert
 (= __SMACK_and64 (- 0 10336)))
(assert
 (= __SMACK_and16 (- 0 11368)))
(assert
 (= __SMACK_and8 (- 0 12400)))
(assert
 (= __SMACK_or32 (- 0 13432)))
(assert
 (= __SMACK_or64 (- 0 14464)))
(assert
 (= __SMACK_or16 (- 0 15496)))
(assert
 (= __SMACK_or8 (- 0 16528)))
(assert
 (= __SMACK_check_overflow (- 0 17560)))
(assert
 (= __SMACK_loop_exit (- 0 18592)))
(assert
 (= __SMACK_decls (- 0 19624)))
(assert
 (= __SMACK_top_decl (- 0 20656)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21688)))
(assert
 (= llvm_dbg_value (- 0 22720)))
(assert
 (let ((?x23 (- 0 23752)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 228237) (- 0 232532))))))
 (let (($x176 (=> (and (= (ControlFlow 0 232475) 228237) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 232478) (not (=> (and (and SIV_0 (= (ControlFlow 0 232478) 232475)) (= (ControlFlow 0 232475) 228237) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x319 (not (and (= SIV_4 SIV_20) (= SIV_3 SIV_21)))))
 (let (($x320 (=> (= (ControlFlow 1 232590) (- 0 232877)) $x319)))
 (let (($x328 (=> (and (and (= SIV_21 SIV_18) (= (ControlFlow 1 227696) 232590)) (= (ControlFlow 1 232590) (- 0 232877))) $x319)))
 (let (($x333 (=> (and (= (ControlFlow 1 227691) 227696) (= SIV_20 0) (and (= SIV_21 SIV_18) (= (ControlFlow 1 227696) 232590)) (= (ControlFlow 1 232590) (- 0 232877))) $x319)))
 (let (($x340 (=> (and (and (= SIV_18 SIV_17) (= (ControlFlow 1 227695) 227691)) (= (ControlFlow 1 227691) 227696) (= SIV_20 0) (and (= SIV_21 SIV_18) (= (ControlFlow 1 227696) 232590)) (= (ControlFlow 1 232590) (- 0 232877))) $x319)))
 (let (($x376 (=> (and (= (ControlFlow 1 227692) 227694) (and SIV_17 (= (ControlFlow 1 227694) 227695)) (and (= SIV_18 SIV_17) (= (ControlFlow 1 227695) 227691)) (= (ControlFlow 1 227691) 227696) (= SIV_20 0) (and (= SIV_21 SIV_18) (= (ControlFlow 1 227696) 232590)) (= (ControlFlow 1 232590) (- 0 232877))) $x319)))
 (let (($x364 (and (and (not SIV_17) (= SIV_20 SIV_24)) (and (= SIV_21 SIV_17) (= (ControlFlow 1 227693) 232590)))))
 (let (($x378 (=> (and (and (not (= SIV_16 1)) true) (and true SIV_23)) (and (=> (and (= (ControlFlow 1 227692) 227693) $x364 (= (ControlFlow 1 232590) (- 0 232877))) $x319) $x376))))
 (let (($x353 (=> (and (and (= SIV_18 true) (= (ControlFlow 1 227690) 227691)) (= (ControlFlow 1 227691) 227696) (= SIV_20 0) (and (= SIV_21 SIV_18) (= (ControlFlow 1 227696) 232590)) (= (ControlFlow 1 232590) (- 0 232877))) $x319)))
 (let (($x347 (= SIV_16 1)))
 (let (($x389 (and (=> (and (= (ControlFlow 1 227689) 227690) $x347 (and (= SIV_18 true) (= (ControlFlow 1 227690) 227691)) (= (ControlFlow 1 227691) 227696) (= SIV_20 0) (and (= SIV_21 SIV_18) (= (ControlFlow 1 227696) 232590)) (= (ControlFlow 1 232590) (- 0 232877))) $x319) (=> (and (= (ControlFlow 1 227689) 227692) (and (and (not $x347) true) (and true SIV_23))) (and (=> (and (= (ControlFlow 1 227692) 227693) $x364 (= (ControlFlow 1 232590) (- 0 232877))) $x319) $x376)))))
 (let (($x407 (and (boogie_si_record_i32 SIV_15) (= (ControlFlow 1 227688) 227689))))
 (let (($x402 (and (boogie_si_record_i32 SIV_14) (= SIV_15 (beale_int_cb $u0 $u0)))))
 (let (($x397 (and (boogie_si_record_ref main_) (= SIV_14 (beale_int_cb $u0 $u0)))))
 (let (($x410 (=> (and (and (and (and true SIV_22) $x397) (and $x402 $x407)) (= SIV_16 (ite (>= SIV_14 0) 1 0))) $x389)))
 (let (($x419 (=> (and (and true (= (ControlFlow 1 232595) 232588)) (= (ControlFlow 1 232588) 227688) true (and (and (and true SIV_22) $x397) (and $x402 $x407)) (= SIV_16 (ite (>= SIV_14 0) 1 0))) $x389)))
 (=> SIV_5 (and (= (ControlFlow 1 0) 232595) (not $x419))))))))))))))))))))
(assert
 (let (($x475 (and (and true true) (and SIV_27 (= (ControlFlow 2 228213) (- 0 232976))))))
 (let (($x482 (=> (and (= (ControlFlow 2 232941) 228213) true (and true SIV_26) $x475) false)))
 (let (($x488 (and (= (ControlFlow 2 0) 232943) (not (=> (and (and true (= (ControlFlow 2 232943) 232941)) (= (ControlFlow 2 232941) 228213) true (and true SIV_26) $x475) false)))))
 (=> SIV_22 $x488)))))
(assert
 (let (($x500 (not SIV_32)))
 (let (($x501 (= SIV_17 $x500)))
 (let (($x502 (=> (= (ControlFlow 3 233006) (- 0 233091)) $x501)))
 (let (($x527 (=> (and (and (= SIV_32 SIV_31) (= (ControlFlow 3 227856) 233006)) (= (ControlFlow 3 233006) (- 0 233091))) $x501)))
 (let (($x534 (=> (and (and (= SIV_31 true) (= (ControlFlow 3 227855) 227856)) (and (= SIV_32 SIV_31) (= (ControlFlow 3 227856) 233006)) (= (ControlFlow 3 233006) (- 0 233091))) $x501)))
 (let (($x542 (=> (and (= (ControlFlow 3 227850) 227855) (not (= 0 $0)) (and (= SIV_31 true) (= (ControlFlow 3 227855) 227856)) (and (= SIV_32 SIV_31) (= (ControlFlow 3 227856) 233006)) (= (ControlFlow 3 233006) (- 0 233091))) $x501)))
 (let (($x509 (=> (and (and (= SIV_32 false) (= (ControlFlow 3 227852) 233006)) (= (ControlFlow 3 233006) (- 0 233091))) $x501)))
 (let (($x519 (and (=> (and (= (ControlFlow 3 227851) 227852) (not false) (and (= SIV_32 false) (= (ControlFlow 3 227852) 233006)) (= (ControlFlow 3 233006) (- 0 233091))) $x501) (=> (= (ControlFlow 3 227851) 227853) true))))
 (let (($x511 (= 0 $0)))
 (let (($x544 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 227850) 227851) $x511) $x519) $x542))))
 (let (($x552 (=> (and (and true (= (ControlFlow 3 233011) 233004)) (= (ControlFlow 3 233004) 227850) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 227850) 227851) $x511) $x519) $x542))))
 (=> SIV_23 (and (= (ControlFlow 3 0) 233011) (not $x552)))))))))))))))
(assert
 (let (($x609 (=> (and (= (ControlFlow 4 233111) 228178) (= (ControlFlow 4 228178) (- 0 233118))) false)))
 (let (($x615 (and (= (ControlFlow 4 0) 233113) (not (=> (and (and true (= (ControlFlow 4 233113) 233111)) (= (ControlFlow 4 233111) 228178) (= (ControlFlow 4 228178) (- 0 233118))) false)))))
 (=> SIV_26 $x615))))
(assert
 (let (($x630 (=> (and (= (ControlFlow 5 233126) 228142) (= (ControlFlow 5 228142) (- 0 233145))) false)))
 (let (($x636 (and (= (ControlFlow 5 0) 233128) (not (=> (and (and true (= (ControlFlow 5 233128) 233126)) (= (ControlFlow 5 233126) 228142) (= (ControlFlow 5 228142) (- 0 233145))) false)))))
 (=> SIV_27 $x636))))
(check-sat)
