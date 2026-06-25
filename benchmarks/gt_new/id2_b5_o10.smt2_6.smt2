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
(declare-fun __VERIFIER_nondet_unsigned_int () Int)
(declare-fun __SMACK_nondet_unsigned_int () Int)
(declare-fun __VERIFIER_nondet_uint () Int)
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
(declare-fun SIV@19 () Bool)
(declare-fun SIV@18 () Int)
(declare-fun SIV@17 () Bool)
(declare-fun SIV@15 () Int)
(declare-fun SIV@16 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@14 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun id@@0 (Int) Int)
(declare-fun SIV@13 () Int)
(declare-fun SIV@21 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@25 () Bool)
(declare-fun SIV@30 () Int)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@37 () Bool)
(declare-fun SIV@36 () Bool)
(declare-fun SIV@54 () Int)
(declare-fun SIV@67 () Bool)
(declare-fun SIV@64 () Int)
(declare-fun SIV@65 () Int)
(declare-fun SIV@62 () Int)
(declare-fun SIV@63 () Int)
(declare-fun SIV@56 () Int)
(declare-fun SIV@55 () Int)
(declare-fun SIV@66 () Bool)
(declare-fun SIV@60 () Int)
(declare-fun SIV@61 () Int)
(declare-fun SIV@57 () Int)
(declare-fun SIV@58 () Int)
(declare-fun SIV@59 () Int)
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
 (let ((?x23 (- 0 24768)))
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
 (= __VERIFIER_nondet_unsigned_int (- 0 17544)))
(assert
 (= __SMACK_nondet_unsigned_int (- 0 18576)))
(assert
 (= __VERIFIER_nondet_uint (- 0 19608)))
(assert
 (= __SMACK_decls (- 0 20640)))
(assert
 (= __SMACK_top_decl (- 0 21672)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22704)))
(assert
 (= llvm.dbg.value (- 0 23736)))
(assert
 (let ((?x23 (- 0 24768)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 232303) (- 0 237217))))))
 (let (($x180 (=> (and (= (ControlFlow 0 237160) 232303) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 237163) (not (=> (and (and SIV@0 (= (ControlFlow 0 237163) 237160)) (= (ControlFlow 0 237160) 232303) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x327 (not (and (= SIV@4 SIV@18) (= SIV@3 SIV@19)))))
 (let (($x328 (=> (= (ControlFlow 1 237275) (- 0 237562)) $x327)))
 (let (($x348 (=> (and (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x349 (=> (and (= SIV@18 0) (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x389 (=> (and (and (= SIV@17 true) (= (ControlFlow 1 231196) 231197)) (= SIV@18 0) (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x418 (=> (and (= (ControlFlow 1 231194) 231196) (not (= SIV@15 1)) (and (= SIV@17 true) (= (ControlFlow 1 231196) 231197)) (= SIV@18 0) (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x355 (=> (and (and (= SIV@17 SIV@16) (= (ControlFlow 1 231202) 231197)) (= SIV@18 0) (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x364 (=> (and (and SIV@16 (= (ControlFlow 1 231200) 231201)) (= (ControlFlow 1 231201) 231202) (and (= SIV@17 SIV@16) (= (ControlFlow 1 231202) 231197)) (= SIV@18 0) (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327)))
 (let (($x339 (and (and (not SIV@16) (= SIV@18 SIV@23)) (and (= SIV@19 SIV@16) (= (ControlFlow 1 231199) 237275)))))
 (let (($x373 (and (=> (and (= (ControlFlow 1 231198) 231199) $x339 (= (ControlFlow 1 237275) (- 0 237562))) $x327) (=> (and (= (ControlFlow 1 231198) 231200) (and SIV@16 (= (ControlFlow 1 231200) 231201)) (= (ControlFlow 1 231201) 231202) (and (= SIV@17 SIV@16) (= (ControlFlow 1 231202) 231197)) (= SIV@18 0) (and (= SIV@19 SIV@17) (= (ControlFlow 1 231197) 237275)) (= (ControlFlow 1 237275) (- 0 237562))) $x327))))
 (let (($x382 (=> (and (and (= SIV@15 1) (= (ControlFlow 1 231195) 231198)) true (and true SIV@22)) $x373)))
 (let (($x410 (and (boogie_si_record_i32 SIV@14) (= SIV@15 (ite (= SIV@14 10) 1 0)))))
 (let (($x411 (and (and (boogie_si_record_i32 SIV@13) (= SIV@14 (id@@0 SIV@13))) $x410)))
 (let (($x412 (and (and (and true true) (and SIV@21 (boogie_si_record_i32 SIV@13))) $x411)))
 (let (($x421 (=> (and (and (and true true) (and SIV@20 (boogie_si_record_ref main))) $x412) (and (=> (and (= (ControlFlow 1 231194) 231195) (and (= SIV@15 1) (= (ControlFlow 1 231195) 231198)) true (and true SIV@22)) $x373) $x418))))
 (let (($x429 (=> (and (and true (= (ControlFlow 1 237280) 237273)) (= (ControlFlow 1 237273) 231194) (and (and true true) (and SIV@20 (boogie_si_record_ref main))) $x412) (and (=> (and (= (ControlFlow 1 231194) 231195) (and (= SIV@15 1) (= (ControlFlow 1 231195) 231198)) true (and true SIV@22)) $x373) $x418))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 237280) (not $x429))))))))))))))))))))
(assert
 (let (($x391 (and true true)))
 (let (($x484 (and $x391 (and SIV@26 (= (ControlFlow 2 232279) (- 0 237664))))))
 (let (($x491 (=> (and (= (ControlFlow 2 237629) 232279) true (and true SIV@25) $x484) false)))
 (let (($x497 (and (= (ControlFlow 2 0) 237631) (not (=> (and (and true (= (ControlFlow 2 237631) 237629)) (= (ControlFlow 2 237629) 232279) true (and true SIV@25) $x484) false)))))
 (=> SIV@20 $x497))))))
(assert
 (let (($x505 (boogie_si_record_i32 SIV@30)))
 (let (($x513 (and (and SIV@31 $x505) (and $x505 (= (ControlFlow 3 232107) (- 0 237781))))))
 (let (($x391 (and true true)))
 (let (($x521 (=> (and (= (ControlFlow 3 237692) 232107) $x391 $x513) (not (= SIV@13 SIV@30)))))
 (let (($x527 (and (= (ControlFlow 3 0) 237695) (not (=> (and (and true (= (ControlFlow 3 237695) 237692)) (= (ControlFlow 3 237692) 232107) $x391 $x513) (not (= SIV@13 SIV@30)))))))
 (=> SIV@21 $x527)))))))
(assert
 (let (($x539 (not SIV@37)))
 (let (($x540 (= SIV@16 $x539)))
 (let (($x541 (=> (= (ControlFlow 4 237815) (- 0 237900)) $x540)))
 (let (($x566 (=> (and (and (= SIV@37 SIV@36) (= (ControlFlow 4 231398) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x540)))
 (let (($x573 (=> (and (and (= SIV@36 true) (= (ControlFlow 4 231397) 231398)) (and (= SIV@37 SIV@36) (= (ControlFlow 4 231398) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x540)))
 (let (($x581 (=> (and (= (ControlFlow 4 231392) 231397) (not (= 0 $0)) (and (= SIV@36 true) (= (ControlFlow 4 231397) 231398)) (and (= SIV@37 SIV@36) (= (ControlFlow 4 231398) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x540)))
 (let (($x548 (=> (and (and (= SIV@37 false) (= (ControlFlow 4 231394) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x540)))
 (let (($x558 (and (=> (and (= (ControlFlow 4 231393) 231394) (not false) (and (= SIV@37 false) (= (ControlFlow 4 231394) 237815)) (= (ControlFlow 4 237815) (- 0 237900))) $x540) (=> (= (ControlFlow 4 231393) 231395) true))))
 (let (($x550 (= 0 $0)))
 (let (($x583 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 4 231392) 231393) $x550) $x558) $x581))))
 (let (($x591 (=> (and (and true (= (ControlFlow 4 237820) 237813)) (= (ControlFlow 4 237813) 231392) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 4 231392) 231393) $x550) $x558) $x581))))
 (=> SIV@22 (and (= (ControlFlow 4 0) 237820) (not $x591)))))))))))))))
(assert
 (let (($x660 (=> (and (= (ControlFlow 5 237920) 232244) (= (ControlFlow 5 232244) (- 0 237927))) false)))
 (let (($x666 (and (= (ControlFlow 5 0) 237922) (not (=> (and (and true (= (ControlFlow 5 237922) 237920)) (= (ControlFlow 5 237920) 232244) (= (ControlFlow 5 232244) (- 0 237927))) false)))))
 (=> SIV@25 $x666))))
(assert
 (let (($x681 (=> (and (= (ControlFlow 6 237935) 232208) (= (ControlFlow 6 232208) (- 0 237954))) false)))
 (let (($x687 (and (= (ControlFlow 6 0) 237937) (not (=> (and (and true (= (ControlFlow 6 237937) 237935)) (= (ControlFlow 6 237935) 232208) (= (ControlFlow 6 232208) (- 0 237954))) false)))))
 (=> SIV@26 $x687))))
(assert
 (let (($x706 (not (= SIV@30 SIV@54))))
 (let (($x391 (and true true)))
 (let (($x703 (and $x391 (and SIV@67 (= (ControlFlow 7 232023) (- 0 238448))))))
 (let (($x708 (=> (and (= SIV@65 SIV@64) $x703) $x706)))
 (let (($x717 (=> (and (and (= SIV@64 0) (= (ControlFlow 7 232022) 232023)) (= SIV@65 SIV@64) $x703) $x706)))
 (let (($x747 (=> (and (= (ControlFlow 7 232018) 232022) (not (= SIV@62 1)) (and (= SIV@64 0) (= (ControlFlow 7 232022) 232023)) (= SIV@65 SIV@64) $x703) $x706)))
 (let (($x710 (= SIV@62 1)))
 (let (($x730 (and (and $x710 (= SIV@63 (ite (<= SIV@54 SIV@56) 1 0))) (and (= SIV@64 SIV@63) (= (ControlFlow 7 232021) 232023)))))
 (let (($x741 (and $x391 (and SIV@66 (= SIV@62 (ite (>= SIV@54 SIV@55) 1 0))))))
 (let (($x749 (=> $x741 (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747))))
 (let (($x750 (=> (and (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747))))
 (let (($x793 (=> (and (and (= SIV@60 0) (= (ControlFlow 7 232017) 232018)) (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747))))
 (let (($x810 (=> (and (= (ControlFlow 7 232015) 232017) (not (= SIV@57 1)) (and (= SIV@60 0) (= (ControlFlow 7 232017) 232018)) (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747))))
 (let (($x759 (=> (and (and (= SIV@60 0) (= (ControlFlow 7 232020) 232018)) (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747))))
 (let (($x785 (=> (and (= (ControlFlow 7 232016) 232020) (not (= SIV@58 1)) (and (= SIV@60 0) (= (ControlFlow 7 232020) 232018)) (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747))))
 (let (($x752 (= SIV@58 1)))
 (let (($x772 (and (and $x752 (= SIV@59 (ite (<= SIV@56 4294967295) 1 0))) (and (= SIV@60 SIV@59) (= (ControlFlow 7 232019) 232018)))))
 (let (($x775 (= SIV@57 1)))
 (let (($x787 (=> (and $x775 (= SIV@58 (ite (>= SIV@56 4294967295) 1 0))) (and (=> (and (= (ControlFlow 7 232016) 232019) $x772 (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747)) $x785))))
 (let (($x798 (boogie_si_record_i32 SIV@56)))
 (let (($x804 (and (and (boogie_si_record_i32 SIV@55) $x798) (and $x798 (= SIV@57 (ite (= SIV@55 0) 1 0))))))
 (let (($x813 (=> (and (and (boogie_si_record_i32 SIV@54) (boogie_si_record_i32 SIV@55)) $x804) (and (=> (and (= (ControlFlow 7 232015) 232016) (and $x775 (= SIV@58 (ite (>= SIV@56 4294967295) 1 0)))) (and (=> (and (= (ControlFlow 7 232016) 232019) $x772 (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747)) $x785)) $x810))))
 (let (($x795 (boogie_si_record_i32 SIV@54)))
 (let (($x822 (=> (and (and true (= (ControlFlow 7 237971) 237968)) (= (ControlFlow 7 237968) 232015) $x795 (and $x795 (boogie_si_record_i32 SIV@55)) $x804) (and (=> (and (= (ControlFlow 7 232015) 232016) (and $x775 (= SIV@58 (ite (>= SIV@56 4294967295) 1 0)))) (and (=> (and (= (ControlFlow 7 232016) 232019) $x772 (= SIV@61 SIV@60) $x741) (and (=> (and (= (ControlFlow 7 232018) 232021) $x730 (= SIV@65 SIV@64) $x703) $x706) $x747)) $x785)) $x810))))
 (=> SIV@31 (and (= (ControlFlow 7 0) 237971) (not $x822))))))))))))))))))))))))))))
(assert
 (not SIV@66))
(assert
 (not SIV@67))
(check-sat)
