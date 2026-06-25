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
(declare-fun ackermann () Int)
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
(declare-fun SIV@29 () Bool)
(declare-fun SIV@28 () Int)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@32 () Int)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@24 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@23 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun ackermann@@0 (Int Int) Int)
(declare-fun SIV@21 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@40 () Bool)
(declare-fun SIV@39 () Bool)
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
 (let ((?x23 (- 0 21672)))
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
 (= ackermann (- 0 1032)))
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
 (= __SMACK_decls (- 0 17544)))
(assert
 (= __SMACK_top_decl (- 0 18576)))
(assert
 (= __SMACK_init_func_memory_model (- 0 19608)))
(assert
 (= llvm.dbg.value (- 0 20640)))
(assert
 (let ((?x23 (- 0 21672)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 230847) (- 0 235479))))))
 (let (($x168 (=> (and (= (ControlFlow 0 235422) 230847) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 235425) (not (=> (and (and SIV@0 (= (ControlFlow 0 235425) 235422)) (= (ControlFlow 0 235422) 230847) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@28) (= SIV@3 SIV@29)))))
 (let (($x304 (=> (= (ControlFlow 1 235537) (- 0 236016)) $x303)))
 (let (($x312 (=> (and (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x313 (=> (and (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x385 (=> (and (and (= SIV@27 SIV@26) (= (ControlFlow 1 230323) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x394 (=> (and (and SIV@26 (= (ControlFlow 1 230321) 230322)) (= (ControlFlow 1 230322) 230323) (and (= SIV@27 SIV@26) (= (ControlFlow 1 230323) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x404 (and (and (not SIV@26) (= SIV@28 SIV@32)) (and (= SIV@29 SIV@26) (= (ControlFlow 1 230320) 235537)))))
 (let (($x414 (and (=> (and (= (ControlFlow 1 230319) 230320) $x404 (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230319) 230321) (and SIV@26 (= (ControlFlow 1 230321) 230322)) (= (ControlFlow 1 230322) 230323) (and (= SIV@27 SIV@26) (= (ControlFlow 1 230323) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303))))
 (let (($x422 (=> (and (and (not (= SIV@25 1)) (= (ControlFlow 1 230318) 230319)) true (and true SIV@31)) $x414)))
 (let (($x357 (=> (and (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x364 (=> (and (and (= SIV@25 1) (= (ControlFlow 1 230317) 230313)) (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x436 (and (=> (and (= (ControlFlow 1 230316) 230317) (and (= SIV@25 1) (= (ControlFlow 1 230317) 230313)) (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230316) 230318) (and (not (= SIV@25 1)) (= (ControlFlow 1 230318) 230319)) true (and true SIV@31)) $x414))))
 (let (($x429 (and (not (= SIV@24 1)) (= SIV@25 (ite (= SIV@22 7) 1 0)))))
 (let (($x371 (=> (and (and (= SIV@24 1) (= (ControlFlow 1 230315) 230313)) (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x452 (and (=> (and (= (ControlFlow 1 230314) 230315) (and (= SIV@24 1) (= (ControlFlow 1 230315) 230313)) (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230314) 230316) $x429) $x436))))
 (let (($x445 (and (not (= SIV@23 1)) (= SIV@24 (ite (not (= $u0 2)) 1 0)))))
 (let (($x378 (=> (and (and (= SIV@23 1) (= (ControlFlow 1 230312) 230313)) (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x468 (and (=> (and (= (ControlFlow 1 230311) 230312) (and (= SIV@23 1) (= (ControlFlow 1 230312) 230313)) (and (= SIV@27 true) (= (ControlFlow 1 230313) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230311) 230314) $x445) $x452))))
 (let (($x460 (and (boogie_si_record_i32 SIV@22) (= SIV@23 (ite (not (= $u0 2)) 1 0)))))
 (let (($x461 (and (and (not (= SIV@21 1)) (= SIV@22 (ackermann@@0 $u0 $u0))) $x460)))
 (let (($x338 (=> (and (and (= SIV@27 true) (= (ControlFlow 1 230308) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x345 (=> (and (and (= SIV@21 1) (= (ControlFlow 1 230310) 230308)) (and (= SIV@27 true) (= (ControlFlow 1 230308) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x482 (and (=> (and (= (ControlFlow 1 230309) 230310) (and (= SIV@21 1) (= (ControlFlow 1 230310) 230308)) (and (= SIV@27 true) (= (ControlFlow 1 230308) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230309) 230311) $x461) $x468))))
 (let (($x475 (and (not (= SIV@20 1)) (= SIV@21 (ite (> $u0 23) 1 0)))))
 (let (($x352 (=> (and (and (= SIV@20 1) (= (ControlFlow 1 230307) 230308)) (and (= SIV@27 true) (= (ControlFlow 1 230308) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x495 (and (=> (and (= (ControlFlow 1 230305) 230307) (and (= SIV@20 1) (= (ControlFlow 1 230307) 230308)) (and (= SIV@27 true) (= (ControlFlow 1 230308) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230305) 230309) $x475) $x482))))
 (let (($x488 (and (not (= SIV@19 1)) (= SIV@20 (ite (< $u0 0) 1 0)))))
 (let (($x319 (=> (and (and (= SIV@27 true) (= (ControlFlow 1 230302) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x326 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 230304) 230302)) (and (= SIV@27 true) (= (ControlFlow 1 230302) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x509 (and (=> (and (= (ControlFlow 1 230303) 230304) (and (= SIV@19 1) (= (ControlFlow 1 230304) 230302)) (and (= SIV@27 true) (= (ControlFlow 1 230302) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230303) 230305) $x488) $x495))))
 (let (($x502 (and (not (= SIV@18 1)) (= SIV@19 (ite (> $u0 3) 1 0)))))
 (let (($x333 (=> (and (and (= SIV@18 1) (= (ControlFlow 1 230301) 230302)) (and (= SIV@27 true) (= (ControlFlow 1 230302) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303)))
 (let (($x523 (and (=> (and (= (ControlFlow 1 230300) 230301) (and (= SIV@18 1) (= (ControlFlow 1 230301) 230302)) (and (= SIV@27 true) (= (ControlFlow 1 230302) 230306)) (= SIV@28 0) (and (= SIV@29 SIV@27) (= (ControlFlow 1 230306) 235537)) (= (ControlFlow 1 235537) (- 0 236016))) $x303) (=> (and (= (ControlFlow 1 230300) 230303) $x502) $x509))))
 (let (($x515 (and (boogie_si_record_ref main) (= SIV@18 (ite (< $u0 0) 1 0)))))
 (let (($x529 (=> (and (= (ControlFlow 1 235535) 230300) true (and (and true SIV@30) $x515)) $x523)))
 (let (($x535 (and (= (ControlFlow 1 0) 235542) (not (=> (and (and true (= (ControlFlow 1 235542) 235535)) (= (ControlFlow 1 235535) 230300) true (and (and true SIV@30) $x515)) $x523)))))
 (=> SIV@5 $x535))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x660 (and (and true true) (and SIV@35 (= (ControlFlow 2 230823) (- 0 236131))))))
 (let (($x667 (=> (and (= (ControlFlow 2 236096) 230823) true (and true SIV@34) $x660) false)))
 (let (($x673 (and (= (ControlFlow 2 0) 236098) (not (=> (and (and true (= (ControlFlow 2 236098) 236096)) (= (ControlFlow 2 236096) 230823) true (and true SIV@34) $x660) false)))))
 (=> SIV@30 $x673)))))
(assert
 (let (($x684 (not SIV@40)))
 (let (($x685 (= SIV@26 $x684)))
 (let (($x686 (=> (= (ControlFlow 3 236161) (- 0 236246)) $x685)))
 (let (($x711 (=> (and (and (= SIV@40 SIV@39) (= (ControlFlow 3 230466) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x685)))
 (let (($x718 (=> (and (and (= SIV@39 true) (= (ControlFlow 3 230465) 230466)) (and (= SIV@40 SIV@39) (= (ControlFlow 3 230466) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x685)))
 (let (($x726 (=> (and (= (ControlFlow 3 230460) 230465) (not (= 0 $0)) (and (= SIV@39 true) (= (ControlFlow 3 230465) 230466)) (and (= SIV@40 SIV@39) (= (ControlFlow 3 230466) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x685)))
 (let (($x693 (=> (and (and (= SIV@40 false) (= (ControlFlow 3 230462) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x685)))
 (let (($x703 (and (=> (and (= (ControlFlow 3 230461) 230462) (not false) (and (= SIV@40 false) (= (ControlFlow 3 230462) 236161)) (= (ControlFlow 3 236161) (- 0 236246))) $x685) (=> (= (ControlFlow 3 230461) 230463) true))))
 (let (($x695 (= 0 $0)))
 (let (($x728 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 230460) 230461) $x695) $x703) $x726))))
 (let (($x736 (=> (and (and true (= (ControlFlow 3 236166) 236159)) (= (ControlFlow 3 236159) 230460) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 230460) 230461) $x695) $x703) $x726))))
 (=> SIV@31 (and (= (ControlFlow 3 0) 236166) (not $x736)))))))))))))))
(check-sat)
