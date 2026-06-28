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
(declare-fun bukin_int () Int)
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
(declare-fun SIV_36 () Bool)
(declare-fun SIV_35 () Int)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_33 () Bool)
(declare-fun SIV_42 () Int)
(declare-fun SIV_41 () Bool)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_32 () Int)
(declare-fun SIV_26 () Int)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_40 () Bool)
(declare-fun SIV_25 () Bool)
(declare-fun SIV_29 () Int)
(declare-fun SIV_27 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun bukin_int_cb (Int Int) Int)
(declare-fun SIV_24 () Bool)
(declare-fun SIV_39 () Bool)
(declare-fun SIV_21 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun SIV_23 () Int)
(declare-fun SIV_20 () Bool)
(declare-fun SIV_38 () Bool)
(declare-fun SIV_18 () Int)
(declare-fun SIV_19 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_37 () Bool)
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
 (let ((?x23 (- 0 23766)))
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
 (= q__str (- 0 1062)))
(assert
 (= bukin_int (- 0 2094)))
(assert
 (= main_ (- 0 3126)))
(assert
 (= printf_ (- 0 4158)))
(assert
 (= __SMACK_code (- 0 5190)))
(assert
 (= __VERIFIER_assume (- 0 6222)))
(assert
 (= __SMACK_dummy (- 0 7254)))
(assert
 (= __VERIFIER_assert (- 0 8286)))
(assert
 (= __SMACK_and32 (- 0 9318)))
(assert
 (= __SMACK_and64 (- 0 10350)))
(assert
 (= __SMACK_and16 (- 0 11382)))
(assert
 (= __SMACK_and8 (- 0 12414)))
(assert
 (= __SMACK_or32 (- 0 13446)))
(assert
 (= __SMACK_or64 (- 0 14478)))
(assert
 (= __SMACK_or16 (- 0 15510)))
(assert
 (= __SMACK_or8 (- 0 16542)))
(assert
 (= __SMACK_check_overflow (- 0 17574)))
(assert
 (= __SMACK_loop_exit (- 0 18606)))
(assert
 (= __SMACK_decls (- 0 19638)))
(assert
 (= __SMACK_top_decl (- 0 20670)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21702)))
(assert
 (= llvm_dbg_value (- 0 22734)))
(assert
 (let ((?x23 (- 0 23766)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 232325) (- 0 237106))))))
 (let (($x176 (=> (and (= (ControlFlow 0 237049) 232325) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 237052) (not (=> (and (and SIV_0 (= (ControlFlow 0 237052) 237049)) (= (ControlFlow 0 237049) 232325) $x164) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x319 (not (and (= SIV_4 SIV_35) (= SIV_3 SIV_36)))))
 (let (($x320 (=> (= (ControlFlow 1 237164) (- 0 237915)) $x319)))
 (let (($x328 (=> (and (and (= SIV_36 SIV_34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x333 (=> (and (= (ControlFlow 1 231770) 231775) (= SIV_35 0) (and (= SIV_36 SIV_34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x340 (=> (and (and (= SIV_34 SIV_33) (= (ControlFlow 1 231774) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV_35 0) (and (= SIV_36 SIV_34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x377 (=> (and (= (ControlFlow 1 231771) 231773) (and SIV_33 (= (ControlFlow 1 231773) 231774)) (and (= SIV_34 SIV_33) (= (ControlFlow 1 231774) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV_35 0) (and (= SIV_36 SIV_34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x365 (and (and (not SIV_33) (= SIV_35 SIV_42)) (and (= SIV_36 SIV_33) (= (ControlFlow 1 231772) 237164)))))
 (let (($x379 (=> (and (and (not (= SIV_32 1)) SIV_31) (and true SIV_41)) (and (=> (and (= (ControlFlow 1 231771) 231772) $x365 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x377))))
 (let (($x354 (=> (and (and (= SIV_34 SIV_31) (= (ControlFlow 1 231769) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV_35 0) (and (= SIV_36 SIV_34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x347 (= SIV_32 1)))
 (let (($x390 (and (=> (and (= (ControlFlow 1 231768) 231769) $x347 (and (= SIV_34 SIV_31) (= (ControlFlow 1 231769) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV_35 0) (and (= SIV_36 SIV_34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319) (=> (and (= (ControlFlow 1 231768) 231771) (and (and (not $x347) SIV_31) (and true SIV_41))) (and (=> (and (= (ControlFlow 1 231771) 231772) $x365 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x377)))))
 (let (($x395 (=> (and (= (ControlFlow 1 231767) 231768) (= SIV_32 (ite (>= SIV_26 0) 1 0))) $x390)))
 (let (($x399 (=> (and (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV_32 (ite (>= SIV_26 0) 1 0))) $x390)))
 (let (($x406 (=> (and (and (= SIV_31 SIV_30) (= (ControlFlow 1 231766) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV_32 (ite (>= SIV_26 0) 1 0))) $x390)))
 (let (($x441 (=> (and (= (ControlFlow 1 231763) 231765) (and SIV_30 (= (ControlFlow 1 231765) 231766)) (and (= SIV_31 SIV_30) (= (ControlFlow 1 231766) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV_32 (ite (>= SIV_26 0) 1 0))) $x390)))
 (let (($x429 (and (and (not SIV_30) (= SIV_35 SIV_42)) (and (= SIV_36 SIV_30) (= (ControlFlow 1 231764) 237164)))))
 (let (($x443 (=> (and (and (not (= SIV_29 1)) SIV_25) (and true SIV_40)) (and (=> (and (= (ControlFlow 1 231763) 231764) $x429 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x441))))
 (let (($x420 (=> (and (and (= SIV_31 SIV_25) (= (ControlFlow 1 231761) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV_32 (ite (>= SIV_26 0) 1 0))) $x390)))
 (let (($x413 (= SIV_29 1)))
 (let (($x453 (and (=> (and (= (ControlFlow 1 231760) 231761) $x413 (and (= SIV_31 SIV_25) (= (ControlFlow 1 231761) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV_32 (ite (>= SIV_26 0) 1 0))) $x390) (=> (and (= (ControlFlow 1 231760) 231763) (and (and (not $x413) SIV_25) (and true SIV_40))) (and (=> (and (= (ControlFlow 1 231763) 231764) $x429 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x441)))))
 (let (($x466 (and (= SIV_27 (- 0 10)) (= (ControlFlow 1 231759) 231760))))
 (let (($x460 (and (= SIV_26 (bukin_int_cb (- 0 10) 1)) (boogie_si_record_i32 SIV_26))))
 (let (($x468 (=> (and (and $x460 $x466) (= SIV_29 (ite (= SIV_26 0) 1 0))) $x453)))
 (let (($x472 (=> (and (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV_29 (ite (= SIV_26 0) 1 0))) $x453)))
 (let (($x489 (=> (and (and (= SIV_25 SIV_24) (= (ControlFlow 1 231755) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV_29 (ite (= SIV_26 0) 1 0))) $x453)))
 (let (($x511 (=> (and (= (ControlFlow 1 231752) 231754) (and SIV_24 (= (ControlFlow 1 231754) 231755)) (and (= SIV_25 SIV_24) (= (ControlFlow 1 231755) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV_29 (ite (= SIV_26 0) 1 0))) $x453)))
 (let (($x502 (and (and (not SIV_24) (= SIV_35 SIV_42)) (and (= SIV_36 SIV_24) (= (ControlFlow 1 231753) 237164)))))
 (let (($x513 (=> (and true SIV_39) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x514 (=> (and SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x541 (=> (and (and (not (= SIV_22 1)) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x520 (=> (and (and (not (= SIV_23 1)) (= (ControlFlow 1 231758) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x481 (=> (and (and (= SIV_25 SIV_21) (= (ControlFlow 1 231756) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV_29 (ite (= SIV_26 0) 1 0))) $x453)))
 (let (($x474 (= SIV_23 1)))
 (let (($x534 (and (=> (and (= (ControlFlow 1 231750) 231756) $x474 (and (= SIV_25 SIV_21) (= (ControlFlow 1 231756) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV_29 (ite (= SIV_26 0) 1 0))) $x453) (=> (and (= (ControlFlow 1 231750) 231758) (and (not $x474) (= (ControlFlow 1 231758) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511)))))
 (let (($x522 (= SIV_22 1)))
 (let (($x549 (=> (and (= (ControlFlow 1 231749) 231750) (and $x522 (= SIV_23 (ite (<= 1 3) 1 0)))) $x534)))
 (let (($x553 (=> (= SIV_22 (ite (>= 1 (- 0 3)) 1 0)) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x561 (=> (and (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV_22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x577 (=> (and (and (= SIV_21 SIV_20) (= (ControlFlow 1 231744) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV_22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x599 (=> (and (= (ControlFlow 1 231741) 231743) (and SIV_20 (= (ControlFlow 1 231743) 231744)) (and (= SIV_21 SIV_20) (= (ControlFlow 1 231744) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV_22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x590 (and (and (not SIV_20) (= SIV_35 SIV_42)) (and (= SIV_36 SIV_20) (= (ControlFlow 1 231742) 237164)))))
 (let (($x601 (=> (and true SIV_38) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x602 (=> (and true (and true SIV_38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x630 (=> (and (and (not (= SIV_18 1)) (= (ControlFlow 1 231740) 231741)) true (and true SIV_38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x608 (=> (and (and (not (= SIV_19 1)) (= (ControlFlow 1 231747) 231741)) true (and true SIV_38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x569 (=> (and (and (= SIV_21 true) (= (ControlFlow 1 231745) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV_22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x563 (= SIV_19 1)))
 (let (($x623 (and (=> (and (= (ControlFlow 1 231739) 231745) $x563 (and (= SIV_21 true) (= (ControlFlow 1 231745) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV_22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV_21 (and true SIV_39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511)))) (=> (and (= (ControlFlow 1 231739) 231747) (and (not $x563) (= (ControlFlow 1 231747) 231741)) true (and true SIV_38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599)))))
 (let (($x610 (= SIV_18 1)))
 (let (($x616 (and $x610 (= SIV_19 (ite (<= (- 0 10) (- 0 5)) 1 0)))))
 (let (($x642 (and (=> (and (= (ControlFlow 1 231738) 231739) $x616) $x623) (=> (and (= (ControlFlow 1 231738) 231740) (and (not $x610) (= (ControlFlow 1 231740) 231741)) true (and true SIV_38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599)))))
 (let (($x643 (=> (= SIV_18 (ite (>= (- 0 10) (- 0 15)) 1 0)) $x642)))
 (let (($x651 (and (and true SIV_37) (and (boogie_si_record_ref main_) (= (ControlFlow 1 231737) 231738)))))
 (let (($x661 (=> (and (and true (= (ControlFlow 1 237172) 237162)) (= (ControlFlow 1 237162) 231737) true $x651 (= SIV_18 (ite (>= (- 0 10) (- 0 15)) 1 0))) $x642)))
 (=> SIV_5 (and (= (ControlFlow 1 0) 237172) (not $x661))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
