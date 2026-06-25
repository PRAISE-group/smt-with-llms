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
(declare-fun id () Int)
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
(declare-fun SIV@17 () Bool)
(declare-fun SIV@16 () Int)
(declare-fun SIV@15 () Bool)
(declare-fun SIV@13 () Int)
(declare-fun SIV@14 () Bool)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Bool)
(declare-fun SIV@12 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun id@@0 (Int) Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@18 () Bool)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@27 () Bool)
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
 (= id (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 227592) (- 0 231824))))))
 (let (($x168 (=> (and (= (ControlFlow 0 231767) 227592) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 231770) (not (=> (and (and SIV@0 (= (ControlFlow 0 231770) 231767)) (= (ControlFlow 0 231767) 227592) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@16) (= SIV@3 SIV@17)))))
 (let (($x304 (=> (= (ControlFlow 1 231882) (- 0 232101)) $x303)))
 (let (($x324 (=> (and (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303)))
 (let (($x325 (=> (and (= SIV@16 0) (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303)))
 (let (($x365 (=> (and (and (= SIV@15 true) (= (ControlFlow 1 227062) 227063)) (= SIV@16 0) (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303)))
 (let (($x387 (=> (and (= (ControlFlow 1 227060) 227062) (not (= SIV@13 1)) (and (= SIV@15 true) (= (ControlFlow 1 227062) 227063)) (= SIV@16 0) (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303)))
 (let (($x331 (=> (and (and (= SIV@15 SIV@14) (= (ControlFlow 1 227068) 227063)) (= SIV@16 0) (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303)))
 (let (($x340 (=> (and (and SIV@14 (= (ControlFlow 1 227066) 227067)) (= (ControlFlow 1 227067) 227068) (and (= SIV@15 SIV@14) (= (ControlFlow 1 227068) 227063)) (= SIV@16 0) (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303)))
 (let (($x315 (and (and (not SIV@14) (= SIV@16 SIV@20)) (and (= SIV@17 SIV@14) (= (ControlFlow 1 227065) 231882)))))
 (let (($x349 (and (=> (and (= (ControlFlow 1 227064) 227065) $x315 (= (ControlFlow 1 231882) (- 0 232101))) $x303) (=> (and (= (ControlFlow 1 227064) 227066) (and SIV@14 (= (ControlFlow 1 227066) 227067)) (= (ControlFlow 1 227067) 227068) (and (= SIV@15 SIV@14) (= (ControlFlow 1 227068) 227063)) (= SIV@16 0) (and (= SIV@17 SIV@15) (= (ControlFlow 1 227063) 231882)) (= (ControlFlow 1 231882) (- 0 232101))) $x303))))
 (let (($x358 (=> (and (and (= SIV@13 1) (= (ControlFlow 1 227061) 227064)) true (and true SIV@19)) $x349)))
 (let (($x380 (and (boogie_si_record_i32 SIV@12) (= SIV@13 (ite (not (= SIV@12 10)) 1 0)))))
 (let (($x381 (and (and (boogie_si_record_ref main) (= SIV@12 (id@@0 10))) $x380)))
 (let (($x390 (=> (and (and true SIV@18) $x381) (and (=> (and (= (ControlFlow 1 227060) 227061) (and (= SIV@13 1) (= (ControlFlow 1 227061) 227064)) true (and true SIV@19)) $x349) $x387))))
 (let (($x399 (=> (and (and true (= (ControlFlow 1 231887) 231880)) (= (ControlFlow 1 231880) 227060) true (and true SIV@18) $x381) (and (=> (and (= (ControlFlow 1 227060) 227061) (and (= SIV@13 1) (= (ControlFlow 1 227061) 227064)) true (and true SIV@19)) $x349) $x387))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 231887) (not $x399)))))))))))))))))))
(assert
 (let (($x457 (and (and true true) (and SIV@23 (= (ControlFlow 2 227568) (- 0 232192))))))
 (let (($x464 (=> (and (= (ControlFlow 2 232157) 227568) true (and true SIV@22) $x457) false)))
 (let (($x470 (and (= (ControlFlow 2 0) 232159) (not (=> (and (and true (= (ControlFlow 2 232159) 232157)) (= (ControlFlow 2 232157) 227568) true (and true SIV@22) $x457) false)))))
 (=> SIV@18 $x470)))))
(assert
 (let (($x482 (not SIV@28)))
 (let (($x483 (= SIV@14 $x482)))
 (let (($x484 (=> (= (ControlFlow 3 232222) (- 0 232307)) $x483)))
 (let (($x509 (=> (and (and (= SIV@28 SIV@27) (= (ControlFlow 3 227211) 232222)) (= (ControlFlow 3 232222) (- 0 232307))) $x483)))
 (let (($x516 (=> (and (and (= SIV@27 true) (= (ControlFlow 3 227210) 227211)) (and (= SIV@28 SIV@27) (= (ControlFlow 3 227211) 232222)) (= (ControlFlow 3 232222) (- 0 232307))) $x483)))
 (let (($x524 (=> (and (= (ControlFlow 3 227205) 227210) (not (= 0 $0)) (and (= SIV@27 true) (= (ControlFlow 3 227210) 227211)) (and (= SIV@28 SIV@27) (= (ControlFlow 3 227211) 232222)) (= (ControlFlow 3 232222) (- 0 232307))) $x483)))
 (let (($x491 (=> (and (and (= SIV@28 false) (= (ControlFlow 3 227207) 232222)) (= (ControlFlow 3 232222) (- 0 232307))) $x483)))
 (let (($x501 (and (=> (and (= (ControlFlow 3 227206) 227207) (not false) (and (= SIV@28 false) (= (ControlFlow 3 227207) 232222)) (= (ControlFlow 3 232222) (- 0 232307))) $x483) (=> (= (ControlFlow 3 227206) 227208) true))))
 (let (($x493 (= 0 $0)))
 (let (($x526 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 227205) 227206) $x493) $x501) $x524))))
 (let (($x534 (=> (and (and true (= (ControlFlow 3 232227) 232220)) (= (ControlFlow 3 232220) 227205) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 227205) 227206) $x493) $x501) $x524))))
 (=> SIV@19 (and (= (ControlFlow 3 0) 232227) (not $x534)))))))))))))))
(assert
 (not SIV@22))
(assert
 (not SIV@23))
(check-sat)
