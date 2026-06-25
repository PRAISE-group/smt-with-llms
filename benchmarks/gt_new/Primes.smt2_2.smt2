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
(declare-fun SIV@3 () Bool)
(declare-fun SIV@2 () Bool)
(declare-fun SIV@4 () Int)
(declare-fun SIV@1 () Int)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@37 () Bool)
(declare-fun SIV@36 () Int)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@29 () Int)
(declare-fun SIV@31 () Int)
(declare-fun SIV@32 () Int)
(declare-fun SIV@33 () Int)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@42 () Int)
(declare-fun SIV@41 () Bool)
(declare-fun $u0 () Int)
(declare-fun SIV@30 () Int)
(declare-fun SIV@40 () Bool)
(declare-fun SIV@24 () Int)
(declare-fun SIV@28 () Int)
(declare-fun SIV@27 () Int)
(declare-fun SIV@26 () Int)
(declare-fun SIV@25 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun SIV@39 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@38 () Bool)
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
 (let ((?x23 (- 0 23736)))
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
 (= mult (- 0 1032)))
(assert
 (= is_prime (- 0 2064)))
(assert
 (= is_prime_ (- 0 3096)))
(assert
 (= main (- 0 4128)))
(assert
 (= __SMACK_code (- 0 5160)))
(assert
 (= __VERIFIER_assume (- 0 6192)))
(assert
 (= __SMACK_dummy (- 0 7224)))
(assert
 (= __VERIFIER_assert (- 0 8256)))
(assert
 (= __SMACK_and32 (- 0 9288)))
(assert
 (= __SMACK_and64 (- 0 10320)))
(assert
 (= __SMACK_and16 (- 0 11352)))
(assert
 (= __SMACK_and8 (- 0 12384)))
(assert
 (= __SMACK_or32 (- 0 13416)))
(assert
 (= __SMACK_or64 (- 0 14448)))
(assert
 (= __SMACK_or16 (- 0 15480)))
(assert
 (= __SMACK_or8 (- 0 16512)))
(assert
 (= __SMACK_check_overflow (- 0 17544)))
(assert
 (= __SMACK_loop_exit (- 0 18576)))
(assert
 (= __SMACK_decls (- 0 19608)))
(assert
 (= __SMACK_top_decl (- 0 20640)))
(assert
 (= __SMACK_init_func_memory_model (- 0 21672)))
(assert
 (= llvm.dbg.value (- 0 22704)))
(assert
 (let ((?x23 (- 0 23736)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 236199) (- 0 241580))))))
 (let (($x176 (=> (and (= (ControlFlow 0 241523) 236199) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 241526) (not (=> (and (and SIV@0 (= (ControlFlow 0 241526) 241523)) (= (ControlFlow 0 241523) 236199) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x319 (not (and (= SIV@4 SIV@36) (= SIV@3 SIV@37)))))
 (let (($x320 (=> (= (ControlFlow 1 241638) (- 0 242333)) $x319)))
 (let (($x340 (=> (and (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x341 (=> (and (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x437 (=> (and (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x507 (=> (and (and (not (= SIV@29 1)) (= (ControlFlow 1 235663) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x482 (=> (and (and (not (= SIV@31 1)) (= (ControlFlow 1 235666) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x464 (=> (and (and (not (= SIV@32 1)) (= (ControlFlow 1 235668) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x443 (=> (and (and (not (= SIV@33 1)) (= (ControlFlow 1 235670) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x405 (=> (and (and (= SIV@35 SIV@34) (= (ControlFlow 1 235675) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x414 (=> (and (and SIV@34 (= (ControlFlow 1 235673) 235674)) (= (ControlFlow 1 235674) 235675) (and (= SIV@35 SIV@34) (= (ControlFlow 1 235675) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x331 (and (and (not SIV@34) (= SIV@36 SIV@42)) (and (= SIV@37 SIV@34) (= (ControlFlow 1 235672) 241638)))))
 (let (($x423 (and (=> (and (= (ControlFlow 1 235671) 235672) $x331 (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235671) 235673) (and SIV@34 (= (ControlFlow 1 235673) 235674)) (= (ControlFlow 1 235674) 235675) (and (= SIV@35 SIV@34) (= (ControlFlow 1 235675) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319))))
 (let (($x432 (=> (and (and (= SIV@33 1) (= (ControlFlow 1 235669) 235671)) true (and true SIV@41)) $x423)))
 (let (($x457 (and (=> (and (= (ControlFlow 1 235667) 235669) (and (= SIV@33 1) (= (ControlFlow 1 235669) 235671)) true (and true SIV@41)) $x423) (=> (and (= (ControlFlow 1 235667) 235670) (and (not (= SIV@33 1)) (= (ControlFlow 1 235670) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319))))
 (let (($x445 (= SIV@32 1)))
 (let (($x472 (=> (and (= (ControlFlow 1 235665) 235667) (and $x445 (= SIV@33 (ite (> $u0 1) 1 0)))) $x457)))
 (let (($x466 (= SIV@31 1)))
 (let (($x476 (=> (and $x466 (= SIV@32 (ite (> $u0 1) 1 0))) (and $x472 (=> (and (= (ControlFlow 1 235665) 235668) (and (not $x445) (= (ControlFlow 1 235668) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))))
 (let (($x499 (and (=> (and (= (ControlFlow 1 235662) 235665) (and $x466 (= SIV@32 (ite (> $u0 1) 1 0)))) (and $x472 (=> (and (= (ControlFlow 1 235665) 235668) (and (not $x445) (= (ControlFlow 1 235668) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319))) (=> (and (= (ControlFlow 1 235662) 235666) (and (not $x466) (= (ControlFlow 1 235666) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319))))
 (let (($x492 (and (and true true) (and SIV@40 (= SIV@31 (ite (= SIV@30 $u0) 1 0))))))
 (let (($x484 (= SIV@29 1)))
 (let (($x520 (and (=> (and (= (ControlFlow 1 235661) 235662) $x484 $x492) $x499) (=> (and (= (ControlFlow 1 235661) 235663) (and (not $x484) (= (ControlFlow 1 235663) 235664)) (and (= SIV@35 true) (= (ControlFlow 1 235664) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319))))
 (let (($x513 (and (not (= SIV@28 1)) (= SIV@29 (ite (= SIV@24 1) 1 0)))))
 (let (($x385 (=> (and (and (= SIV@35 true) (= (ControlFlow 1 235658) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x392 (=> (and (and (= SIV@28 1) (= (ControlFlow 1 235660) 235658)) (and (= SIV@35 true) (= (ControlFlow 1 235658) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x534 (and (=> (and (= (ControlFlow 1 235659) 235660) (and (= SIV@28 1) (= (ControlFlow 1 235660) 235658)) (and (= SIV@35 true) (= (ControlFlow 1 235658) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235659) 235661) $x513) $x520))))
 (let (($x527 (and (not (= SIV@27 1)) (= SIV@28 (ite (> $u0 46340) 1 0)))))
 (let (($x399 (=> (and (and (= SIV@27 1) (= (ControlFlow 1 235657) 235658)) (and (= SIV@35 true) (= (ControlFlow 1 235658) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x547 (and (=> (and (= (ControlFlow 1 235656) 235657) (and (= SIV@27 1) (= (ControlFlow 1 235657) 235658)) (and (= SIV@35 true) (= (ControlFlow 1 235658) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235656) 235659) $x527) $x534))))
 (let (($x540 (and (not (= SIV@26 1)) (= SIV@27 (ite (< $u0 1) 1 0)))))
 (let (($x366 (=> (and (and (= SIV@35 true) (= (ControlFlow 1 235653) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x373 (=> (and (and (= SIV@26 1) (= (ControlFlow 1 235655) 235653)) (and (= SIV@35 true) (= (ControlFlow 1 235653) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x558 (and (=> (and (= (ControlFlow 1 235654) 235655) (and (= SIV@26 1) (= (ControlFlow 1 235655) 235653)) (and (= SIV@35 true) (= (ControlFlow 1 235653) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235654) 235656) $x540) $x547))))
 (let (($x551 (and (not (= SIV@25 1)) (= SIV@26 (ite (> $u0 46340) 1 0)))))
 (let (($x380 (=> (and (and (= SIV@25 1) (= (ControlFlow 1 235652) 235653)) (and (= SIV@35 true) (= (ControlFlow 1 235653) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x574 (and (=> (and (= (ControlFlow 1 235650) 235652) (and (= SIV@25 1) (= (ControlFlow 1 235652) 235653)) (and (= SIV@35 true) (= (ControlFlow 1 235653) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235650) 235654) $x551) $x558))))
 (let (($x566 (and (boogie_si_record_i32 SIV@24) (= SIV@25 (ite (< $u0 1) 1 0)))))
 (let (($x576 (=> (and (and (not (= SIV@23 1)) true) (and (and true SIV@39) $x566)) $x574)))
 (let (($x347 (=> (and (and (= SIV@35 true) (= (ControlFlow 1 235647) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x354 (=> (and (and (= SIV@23 1) (= (ControlFlow 1 235649) 235647)) (and (= SIV@35 true) (= (ControlFlow 1 235647) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x586 (and (=> (and (= (ControlFlow 1 235648) 235649) (and (= SIV@23 1) (= (ControlFlow 1 235649) 235647)) (and (= SIV@35 true) (= (ControlFlow 1 235647) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235648) 235650) (and (not (= SIV@23 1)) true) (and (and true SIV@39) $x566)) $x574))))
 (let (($x579 (and (not (= SIV@22 1)) (= SIV@23 (ite (> $u0 46340) 1 0)))))
 (let (($x361 (=> (and (and (= SIV@22 1) (= (ControlFlow 1 235646) 235647)) (and (= SIV@35 true) (= (ControlFlow 1 235647) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319)))
 (let (($x600 (and (=> (and (= (ControlFlow 1 235645) 235646) (and (= SIV@22 1) (= (ControlFlow 1 235646) 235647)) (and (= SIV@35 true) (= (ControlFlow 1 235647) 235651)) (= SIV@36 0) (and (= SIV@37 SIV@35) (= (ControlFlow 1 235651) 241638)) (= (ControlFlow 1 241638) (- 0 242333))) $x319) (=> (and (= (ControlFlow 1 235645) 235648) $x579) $x586))))
 (let (($x592 (and (boogie_si_record_ref main) (= SIV@22 (ite (< $u0 1) 1 0)))))
 (let (($x606 (=> (and (= (ControlFlow 1 241636) 235645) true (and (and true SIV@38) $x592)) $x600)))
 (let (($x612 (and (= (ControlFlow 1 0) 241643) (not (=> (and (and true (= (ControlFlow 1 241643) 241636)) (= (ControlFlow 1 241636) 235645) true (and (and true SIV@38) $x592)) $x600)))))
 (=> SIV@5 $x612))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (not SIV@38))
(assert
 (not SIV@39))
(assert
 (not SIV@40))
(assert
 (not SIV@41))
(check-sat)
