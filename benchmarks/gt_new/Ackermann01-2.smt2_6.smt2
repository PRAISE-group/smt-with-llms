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
(declare-fun ackermann () Int)
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
(declare-fun SIV_29 () Bool)
(declare-fun SIV_28 () Int)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_32 () Int)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_25 () Int)
(declare-fun SIV_22 () Int)
(declare-fun SIV_24 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV_23 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun ackermann_cb (Int Int) Int)
(declare-fun SIV_21 () Int)
(declare-fun SIV_20 () Int)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun SIV_34 () Bool)
(declare-fun SIV_40 () Bool)
(declare-fun SIV_39 () Bool)
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
 (let ((?x23 (- 0 21672)))
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
 (= ackermann (- 0 1032)))
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
 (= __SMACK_decls (- 0 17544)))
(assert
 (= __SMACK_top_decl (- 0 18576)))
(assert
 (= __SMACK_init_func_memory_model (- 0 19608)))
(assert
 (= llvm_dbg_value (- 0 20640)))
(assert
 (let ((?x23 (- 0 21672)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 230847) (- 0 235479))))))
 (let (($x168 (=> (and (= (ControlFlow 0 235422) 230847) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 235425) (not (=> (and (and SIV_0 (= (ControlFlow 0 235425) 235422)) (= (ControlFlow 0 235422) 230847) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x303 (not (and (= SIV_4 SIV_28) (= SIV_3 SIV_29)))))
 (let (($x304 (=> (= (ControlFlow 1 235537) (- 0 236016)) $x303)))
 (let (($x312 (=> (and (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x313 (=> (and (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x385 (=> (and (and (= SIV_27 SIV_26) (= (ControlFlow 1 230323) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x394 (=> (and (and SIV_26 (= (ControlFlow 1 230321) 230322)) (= (ControlFlow 1 230322) 230323) (and (= SIV_27 SIV_26) (= (ControlFlow 1 230323) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x404 (and (and (not SIV_26) (= SIV_28 SIV_32)) (and (= SIV_29 SIV_26) (= (ControlFlow 1 230320) 235537)))))
 (let (($x414 (and (=> (and (= (ControlFlow 1 230319) 230320) $x404 (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230319) 230321) (and SIV_26 (= (ControlFlow 1 230321) 230322)) (= (ControlFlow 1 230322) 230323) (and (= SIV_27 SIV_26) (= (ControlFlow 1 230323) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303))))
 (let (($x422 (=> (and (and (not (= SIV_25 1)) (= (ControlFlow 1 230318) 230319)) true (and true SIV_31)) $x414)))
 (let (($x357 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x364 (=> (and (and (= SIV_25 1) (= (ControlFlow 1 230317) 230313)) (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x435 (and (=> (and (= (ControlFlow 1 230316) 230317) (and (= SIV_25 1) (= (ControlFlow 1 230317) 230313)) (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230316) 230318) (and (not (= SIV_25 1)) (= (ControlFlow 1 230318) 230319)) true (and true SIV_31)) $x414))))
 (let (($x428 (and (not (= SIV_24 1)) (= SIV_25 (ite (>= SIV_22 0) 1 0)))))
 (let (($x371 (=> (and (and (= SIV_24 1) (= (ControlFlow 1 230315) 230313)) (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x449 (and (=> (and (= (ControlFlow 1 230314) 230315) (and (= SIV_24 1) (= (ControlFlow 1 230315) 230313)) (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230314) 230316) $x428) $x435))))
 (let (($x442 (and (not (= SIV_23 1)) (= SIV_24 (ite (< $u0 0) 1 0)))))
 (let (($x378 (=> (and (and (= SIV_23 1) (= (ControlFlow 1 230312) 230313)) (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x465 (and (=> (and (= (ControlFlow 1 230311) 230312) (and (= SIV_23 1) (= (ControlFlow 1 230312) 230313)) (and (= SIV_27 true) (= (ControlFlow 1 230313) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230311) 230314) $x442) $x449))))
 (let (($x457 (and (boogie_si_record_i32 SIV_22) (= SIV_23 (ite (< $u0 0) 1 0)))))
 (let (($x458 (and (and (not (= SIV_21 1)) (= SIV_22 (ackermann_cb $u0 $u0))) $x457)))
 (let (($x338 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 230308) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x345 (=> (and (and (= SIV_21 1) (= (ControlFlow 1 230310) 230308)) (and (= SIV_27 true) (= (ControlFlow 1 230308) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x479 (and (=> (and (= (ControlFlow 1 230309) 230310) (and (= SIV_21 1) (= (ControlFlow 1 230310) 230308)) (and (= SIV_27 true) (= (ControlFlow 1 230308) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230309) 230311) $x458) $x465))))
 (let (($x472 (and (not (= SIV_20 1)) (= SIV_21 (ite (> $u0 23) 1 0)))))
 (let (($x352 (=> (and (and (= SIV_20 1) (= (ControlFlow 1 230307) 230308)) (and (= SIV_27 true) (= (ControlFlow 1 230308) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x490 (and (=> (and (= (ControlFlow 1 230305) 230307) (and (= SIV_20 1) (= (ControlFlow 1 230307) 230308)) (and (= SIV_27 true) (= (ControlFlow 1 230308) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230305) 230309) $x472) $x479))))
 (let (($x483 (and (not (= SIV_19 1)) (= SIV_20 (ite (< $u0 0) 1 0)))))
 (let (($x319 (=> (and (and (= SIV_27 true) (= (ControlFlow 1 230302) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x326 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 230304) 230302)) (and (= SIV_27 true) (= (ControlFlow 1 230302) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x504 (and (=> (and (= (ControlFlow 1 230303) 230304) (and (= SIV_19 1) (= (ControlFlow 1 230304) 230302)) (and (= SIV_27 true) (= (ControlFlow 1 230302) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230303) 230305) $x483) $x490))))
 (let (($x497 (and (not (= SIV_18 1)) (= SIV_19 (ite (> $u0 3) 1 0)))))
 (let (($x333 (=> (and (and (= SIV_18 1) (= (ControlFlow 1 230301) 230302)) (and (= SIV_27 true) (= (ControlFlow 1 230302) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x518 (and (=> (and (= (ControlFlow 1 230300) 230301) (and (= SIV_18 1) (= (ControlFlow 1 230301) 230302)) (and (= SIV_27 true) (= (ControlFlow 1 230302) 230306)) (= SIV_28 0) (and (= SIV_29 SIV_27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230300) 230303) $x497) $x504))))
 (let (($x510 (and (boogie_si_record_ref main_) (= SIV_18 (ite (< $u0 0) 1 0)))))
 (let (($x524 (=> (and (= (ControlFlow 1 235535) 230300) true (and (and true SIV_30) $x510)) $x518)))
 (let (($x530 (and (= (ControlFlow 1 0) 235542) (not (=> (and (and true (= (ControlFlow 1 235542) 235535)) (= (ControlFlow 1 235535) 230300) true (and (and true SIV_30) $x510)) $x518)))))
 (=> SIV_5 $x530))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x655 (and (and true true) (and SIV_35 (= (ControlFlow 2 230823) (- 0 236131))))))
 (let (($x662 (=> (and (= (ControlFlow 2 236096) 230823) true (and true SIV_34) $x655) false)))
 (let (($x668 (and (= (ControlFlow 2 0) 236098) (not (=> (and (and true (= (ControlFlow 2 236098) 236096)) (= (ControlFlow 2 236096) 230823) true (and true SIV_34) $x655) false)))))
 (=> SIV_30 $x668)))))
(assert
 (let (($x679 (not SIV_40)))
 (let (($x680 (= SIV_26 $x679)))
 (let (($x681 (=> (= (ControlFlow 3 236161) (- 0 236246)) $x680)))
 (let (($x706 (=> (and (and (= SIV_40 SIV_39) (= (ControlFlow 3 230466) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x680)))
 (let (($x713 (=> (and (and (= SIV_39 true) (= (ControlFlow 3 230465) 230466)) (and (= SIV_40 SIV_39) (= (ControlFlow 3 230466) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x680)))
 (let (($x721 (=> (and (= (ControlFlow 3 230460) 230465) (not (= 0 $0)) (and (= SIV_39 true) (= (ControlFlow 3 230465) 230466)) (and (= SIV_40 SIV_39) (= (ControlFlow 3 230466) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x680)))
 (let (($x688 (=> (and (and (= SIV_40 false) (= (ControlFlow 3 230462) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x680)))
 (let (($x698 (and (=> (and (= (ControlFlow 3 230461) 230462) (not false) (and (= SIV_40 false) (= (ControlFlow 3 230462) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x680) (=> (= (ControlFlow 3 230461) 230463) true))))
 (let (($x690 (= 0 $0)))
 (let (($x723 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 230460) 230461) $x690) $x698) $x721))))
 (let (($x731 (=> (and (and true (= (ControlFlow 3 236166) 236159)) (= (ControlFlow 3 236159) 230460) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 230460) 230461) $x690) $x698) $x721))))
 (=> SIV_31 (and (= (ControlFlow 3 0) 236166) (not $x731)))))))))))))))
(assert
 (let (($x787 (=> (and (= (ControlFlow 4 236266) 230788) (= (ControlFlow 4 230788) (- 0 236273))) false)))
 (let (($x793 (and (= (ControlFlow 4 0) 236268) (not (=> (and (and true (= (ControlFlow 4 236268) 236266)) (= (ControlFlow 4 236266) 230788) (= (ControlFlow 4 230788) (- 0 236273))) false)))))
 (=> SIV_34 $x793))))
(assert
 (let (($x808 (=> (and (= (ControlFlow 5 236281) 230752) (= (ControlFlow 5 230752) (- 0 236300))) false)))
 (let (($x814 (and (= (ControlFlow 5 0) 236283) (not (=> (and (and true (= (ControlFlow 5 236283) 236281)) (= (ControlFlow 5 236281) 230752) (= (ControlFlow 5 230752) (- 0 236300))) false)))))
 (=> SIV_35 $x814))))
(check-sat)
