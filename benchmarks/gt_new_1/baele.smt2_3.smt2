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
(declare-fun q__str_1 () Int)
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
(declare-fun SIV_41 () Bool)
(declare-fun SIV_40 () Int)
(declare-fun SIV_38 () Bool)
(declare-fun SIV_37 () Bool)
(declare-fun SIV_48 () Int)
(declare-fun SIV_47 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_36 () Int)
(declare-fun SIV_29 () Int)
(declare-fun SIV_28 () Int)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_46 () Bool)
(declare-fun SIV_32 () Bool)
(declare-fun SIV_33 () Int)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_45 () Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_30 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun beale_int_cb (Int Int) Int)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_44 () Bool)
(declare-fun SIV_24 () Bool)
(declare-fun SIV_25 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_23 () Bool)
(declare-fun SIV_43 () Bool)
(declare-fun SIV_22 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_42 () Bool)
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
 (let ((?x23 (- 0 24800)))
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
 (= q__str_1 (- 0 2096)))
(assert
 (= beale_int (- 0 3128)))
(assert
 (= main_ (- 0 4160)))
(assert
 (= printf_ (- 0 5192)))
(assert
 (= __SMACK_code (- 0 6224)))
(assert
 (= __VERIFIER_assume (- 0 7256)))
(assert
 (= __SMACK_dummy (- 0 8288)))
(assert
 (= __VERIFIER_assert (- 0 9320)))
(assert
 (= __SMACK_and32 (- 0 10352)))
(assert
 (= __SMACK_and64 (- 0 11384)))
(assert
 (= __SMACK_and16 (- 0 12416)))
(assert
 (= __SMACK_and8 (- 0 13448)))
(assert
 (= __SMACK_or32 (- 0 14480)))
(assert
 (= __SMACK_or64 (- 0 15512)))
(assert
 (= __SMACK_or16 (- 0 16544)))
(assert
 (= __SMACK_or8 (- 0 17576)))
(assert
 (= __SMACK_check_overflow (- 0 18608)))
(assert
 (= __SMACK_loop_exit (- 0 19640)))
(assert
 (= __SMACK_decls (- 0 20672)))
(assert
 (= __SMACK_top_decl (- 0 21704)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22736)))
(assert
 (= llvm_dbg_value (- 0 23768)))
(assert
 (let ((?x23 (- 0 24800)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 232564) (- 0 237369))))))
 (let (($x180 (=> (and (= (ControlFlow 0 237312) 232564) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 237315) (not (=> (and (and SIV_0 (= (ControlFlow 0 237315) 237312)) (= (ControlFlow 0 237312) 232564) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x327 (not (and (= SIV_4 SIV_40) (= SIV_3 SIV_41)))))
 (let (($x328 (=> (= (ControlFlow 1 237427) (- 0 238249)) $x327)))
 (let (($x336 (=> (and (and (= SIV_41 SIV_38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x341 (=> (and (= (ControlFlow 1 232008) 232013) (= SIV_40 0) (and (= SIV_41 SIV_38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x348 (=> (and (and (= SIV_38 SIV_37) (= (ControlFlow 1 232012) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV_40 0) (and (= SIV_41 SIV_38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x385 (=> (and (= (ControlFlow 1 232009) 232011) (and SIV_37 (= (ControlFlow 1 232011) 232012)) (and (= SIV_38 SIV_37) (= (ControlFlow 1 232012) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV_40 0) (and (= SIV_41 SIV_38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x373 (and (and (not SIV_37) (= SIV_40 SIV_48)) (and (= SIV_41 SIV_37) (= (ControlFlow 1 232010) 237427)))))
 (let (($x387 (=> (and (and (not (= SIV_36 1)) SIV_35) (and true SIV_47)) (and (=> (and (= (ControlFlow 1 232009) 232010) $x373 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x385))))
 (let (($x362 (=> (and (and (= SIV_38 SIV_35) (= (ControlFlow 1 232007) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV_40 0) (and (= SIV_41 SIV_38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327)))
 (let (($x355 (= SIV_36 1)))
 (let (($x400 (and (=> (and (= (ControlFlow 1 232006) 232007) $x355 (and (= SIV_38 SIV_35) (= (ControlFlow 1 232007) 232008)) (= (ControlFlow 1 232008) 232013) (= SIV_40 0) (and (= SIV_41 SIV_38) (= (ControlFlow 1 232013) 237427)) (= (ControlFlow 1 237427) (- 0 238249))) $x327) (=> (and (= (ControlFlow 1 232006) 232009) (and (and (not $x355) SIV_35) (and true SIV_47))) (and (=> (and (= (ControlFlow 1 232009) 232010) $x373 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x385)))))
 (let (($x405 (=> (and (= (ControlFlow 1 232005) 232006) (= SIV_36 (ite (not (= SIV_28 SIV_29)) 1 0))) $x400)))
 (let (($x409 (=> (and (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV_36 (ite (not (= SIV_28 SIV_29)) 1 0))) $x400)))
 (let (($x416 (=> (and (and (= SIV_35 SIV_34) (= (ControlFlow 1 232004) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV_36 (ite (not (= SIV_28 SIV_29)) 1 0))) $x400)))
 (let (($x451 (=> (and (= (ControlFlow 1 232001) 232003) (and SIV_34 (= (ControlFlow 1 232003) 232004)) (and (= SIV_35 SIV_34) (= (ControlFlow 1 232004) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV_36 (ite (not (= SIV_28 SIV_29)) 1 0))) $x400)))
 (let (($x439 (and (and (not SIV_34) (= SIV_40 SIV_48)) (and (= SIV_41 SIV_34) (= (ControlFlow 1 232002) 237427)))))
 (let (($x453 (=> (and (and (not (= SIV_33 1)) SIV_32) (and true SIV_46)) (and (=> (and (= (ControlFlow 1 232001) 232002) $x439 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x451))))
 (let (($x430 (=> (and (and (= SIV_35 SIV_32) (= (ControlFlow 1 231999) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV_36 (ite (not (= SIV_28 SIV_29)) 1 0))) $x400)))
 (let (($x423 (= SIV_33 1)))
 (let (($x463 (and (=> (and (= (ControlFlow 1 231998) 231999) $x423 (and (= SIV_35 SIV_32) (= (ControlFlow 1 231999) 232000)) (= (ControlFlow 1 232000) 232005) (= (ControlFlow 1 232005) 232006) (= SIV_36 (ite (not (= SIV_28 SIV_29)) 1 0))) $x400) (=> (and (= (ControlFlow 1 231998) 232001) (and (and (not $x423) SIV_32) (and true SIV_46))) (and (=> (and (= (ControlFlow 1 232001) 232002) $x439 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x451)))))
 (let (($x468 (=> (and (= (ControlFlow 1 231997) 231998) (= SIV_33 (ite (> SIV_29 0) 1 0))) $x463)))
 (let (($x472 (=> (and (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV_33 (ite (> SIV_29 0) 1 0))) $x463)))
 (let (($x479 (=> (and (and (= SIV_32 SIV_31) (= (ControlFlow 1 231996) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV_33 (ite (> SIV_29 0) 1 0))) $x463)))
 (let (($x514 (=> (and (= (ControlFlow 1 231993) 231995) (and SIV_31 (= (ControlFlow 1 231995) 231996)) (and (= SIV_32 SIV_31) (= (ControlFlow 1 231996) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV_33 (ite (> SIV_29 0) 1 0))) $x463)))
 (let (($x502 (and (and (not SIV_31) (= SIV_40 SIV_48)) (and (= SIV_41 SIV_31) (= (ControlFlow 1 231994) 237427)))))
 (let (($x516 (=> (and (and (not (= SIV_30 1)) SIV_27) (and true SIV_45)) (and (=> (and (= (ControlFlow 1 231993) 231994) $x502 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x514))))
 (let (($x493 (=> (and (and (= SIV_32 SIV_27) (= (ControlFlow 1 231991) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV_33 (ite (> SIV_29 0) 1 0))) $x463)))
 (let (($x486 (= SIV_30 1)))
 (let (($x526 (and (=> (and (= (ControlFlow 1 231990) 231991) $x486 (and (= SIV_32 SIV_27) (= (ControlFlow 1 231991) 231992)) (= (ControlFlow 1 231992) 231997) (= (ControlFlow 1 231997) 231998) (= SIV_33 (ite (> SIV_29 0) 1 0))) $x463) (=> (and (= (ControlFlow 1 231990) 231993) (and (and (not $x486) SIV_27) (and true SIV_45))) (and (=> (and (= (ControlFlow 1 231993) 231994) $x502 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x514)))))
 (let (($x540 (and (boogie_si_record_i32 SIV_29) (= (ControlFlow 1 231989) 231990))))
 (let (($x535 (and (boogie_si_record_i32 SIV_28) (= SIV_29 (beale_int_cb 2000 2000)))))
 (let (($x542 (=> (and (and $x535 $x540) (= SIV_30 (ite (> SIV_28 0) 1 0))) $x526)))
 (let (($x547 (=> (and (= (ControlFlow 1 231984) 231989) (= SIV_28 (beale_int_cb 1000 1000)) (and $x535 $x540) (= SIV_30 (ite (> SIV_28 0) 1 0))) $x526)))
 (let (($x554 (=> (and (and (= SIV_27 SIV_26) (= (ControlFlow 1 231988) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV_28 (beale_int_cb 1000 1000)) (and $x535 $x540) (= SIV_30 (ite (> SIV_28 0) 1 0))) $x526)))
 (let (($x589 (=> (and (= (ControlFlow 1 231985) 231987) (and SIV_26 (= (ControlFlow 1 231987) 231988)) (and (= SIV_27 SIV_26) (= (ControlFlow 1 231988) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV_28 (beale_int_cb 1000 1000)) (and $x535 $x540) (= SIV_30 (ite (> SIV_28 0) 1 0))) $x526)))
 (let (($x577 (and (and (not SIV_26) (= SIV_40 SIV_48)) (and (= SIV_41 SIV_26) (= (ControlFlow 1 231986) 237427)))))
 (let (($x591 (=> (and (and (not (= SIV_25 1)) SIV_24) (and true SIV_44)) (and (=> (and (= (ControlFlow 1 231985) 231986) $x577 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x589))))
 (let (($x568 (=> (and (and (= SIV_27 SIV_24) (= (ControlFlow 1 231983) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV_28 (beale_int_cb 1000 1000)) (and $x535 $x540) (= SIV_30 (ite (> SIV_28 0) 1 0))) $x526)))
 (let (($x561 (= SIV_25 1)))
 (let (($x603 (and (=> (and (= (ControlFlow 1 231982) 231983) $x561 (and (= SIV_27 SIV_24) (= (ControlFlow 1 231983) 231984)) (= (ControlFlow 1 231984) 231989) (= SIV_28 (beale_int_cb 1000 1000)) (and $x535 $x540) (= SIV_30 (ite (> SIV_28 0) 1 0))) $x526) (=> (and (= (ControlFlow 1 231982) 231985) (and (and (not $x561) SIV_24) (and true SIV_44))) (and (=> (and (= (ControlFlow 1 231985) 231986) $x577 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x589)))))
 (let (($x608 (=> (and (= (ControlFlow 1 231981) 231982) (= SIV_25 (ite (< SIV_20 10) 1 0))) $x603)))
 (let (($x612 (=> (and (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV_25 (ite (< SIV_20 10) 1 0))) $x603)))
 (let (($x619 (=> (and (and (= SIV_24 SIV_23) (= (ControlFlow 1 231980) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV_25 (ite (< SIV_20 10) 1 0))) $x603)))
 (let (($x653 (=> (and (= (ControlFlow 1 231977) 231979) (and SIV_23 (= (ControlFlow 1 231979) 231980)) (and (= SIV_24 SIV_23) (= (ControlFlow 1 231980) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV_25 (ite (< SIV_20 10) 1 0))) $x603)))
 (let (($x641 (and (and (not SIV_23) (= SIV_40 SIV_48)) (and (= SIV_41 SIV_23) (= (ControlFlow 1 231978) 237427)))))
 (let (($x655 (=> (and (and (not (= SIV_22 1)) true) (and true SIV_43)) (and (=> (and (= (ControlFlow 1 231977) 231978) $x641 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x653))))
 (let (($x632 (=> (and (and (= SIV_24 true) (= (ControlFlow 1 231975) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV_25 (ite (< SIV_20 10) 1 0))) $x603)))
 (let (($x626 (= SIV_22 1)))
 (let (($x665 (and (=> (and (= (ControlFlow 1 231974) 231975) $x626 (and (= SIV_24 true) (= (ControlFlow 1 231975) 231976)) (= (ControlFlow 1 231976) 231981) (= (ControlFlow 1 231981) 231982) (= SIV_25 (ite (< SIV_20 10) 1 0))) $x603) (=> (and (= (ControlFlow 1 231974) 231977) (and (and (not $x626) true) (and true SIV_43))) (and (=> (and (= (ControlFlow 1 231977) 231978) $x641 (= (ControlFlow 1 237427) (- 0 238249))) $x327) $x653)))))
 (let (($x679 (and (boogie_si_record_i32 SIV_20) (= (ControlFlow 1 231973) 231974))))
 (let (($x674 (and (boogie_si_record_ref main_) (= SIV_20 (beale_int_cb 3000 500)))))
 (let (($x681 (=> (and (and $x674 $x679) (= SIV_22 (ite (>= SIV_20 0) 1 0))) $x665)))
 (let (($x687 (=> (and (= (ControlFlow 1 237425) 231973) true (and true SIV_42) (and $x674 $x679) (= SIV_22 (ite (>= SIV_20 0) 1 0))) $x665)))
 (let (($x693 (and (= (ControlFlow 1 0) 237436) (not (=> (and (and true (= (ControlFlow 1 237436) 237425)) (= (ControlFlow 1 237425) 231973) true (and true SIV_42) (and $x674 $x679) (= SIV_22 (ite (>= SIV_20 0) 1 0))) $x665)))))
 (=> SIV_5 $x693))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
