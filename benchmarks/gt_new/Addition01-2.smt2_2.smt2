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
(declare-fun addition () Int)
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
(declare-fun SIV@27 () Bool)
(declare-fun SIV@26 () Int)
(declare-fun SIV@25 () Bool)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@30 () Int)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Int)
(declare-fun SIV@21 () Int)
(declare-fun $u0 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun addition@@0 (Int Int) Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@17 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@28 () Bool)
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
 (= addition (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 229940) (- 0 234467))))))
 (let (($x168 (=> (and (= (ControlFlow 0 234410) 229940) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 234413) (not (=> (and (and SIV@0 (= (ControlFlow 0 234413) 234410)) (= (ControlFlow 0 234410) 229940) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@26) (= SIV@3 SIV@27)))))
 (let (($x304 (=> (= (ControlFlow 1 234525) (- 0 234937)) $x303)))
 (let (($x312 (=> (and (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x313 (=> (and (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x359 (=> (and (and (= SIV@25 SIV@24) (= (ControlFlow 1 229416) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x368 (=> (and (and SIV@24 (= (ControlFlow 1 229414) 229415)) (= (ControlFlow 1 229415) 229416) (and (= SIV@25 SIV@24) (= (ControlFlow 1 229416) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x386 (and (and (not SIV@24) (= SIV@26 SIV@30)) (and (= SIV@27 SIV@24) (= (ControlFlow 1 229413) 234525)))))
 (let (($x396 (and (=> (and (= (ControlFlow 1 229412) 229413) $x386 (= (ControlFlow 1 234525) (- 0 234937))) $x303) (=> (and (= (ControlFlow 1 229412) 229414) (and SIV@24 (= (ControlFlow 1 229414) 229415)) (= (ControlFlow 1 229415) 229416) (and (= SIV@25 SIV@24) (= (ControlFlow 1 229416) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303))))
 (let (($x404 (=> (and (and (not (= SIV@23 1)) (= (ControlFlow 1 229411) 229412)) true (and true SIV@29)) $x396)))
 (let (($x375 (=> (and (and (= SIV@25 true) (= (ControlFlow 1 229410) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x370 (= SIV@23 1)))
 (let (($x426 (and (=> (and (= (ControlFlow 1 229409) 229410) $x370 (and (= SIV@25 true) (= (ControlFlow 1 229410) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303) (=> (and (= (ControlFlow 1 229409) 229411) (and (not $x370) (= (ControlFlow 1 229411) 229412)) true (and true SIV@29)) $x396))))
 (let (($x418 (and (= SIV@22 (+ $u0 $u0)) (= SIV@23 (ite (= SIV@21 SIV@22) 1 0)))))
 (let (($x411 (and (= SIV@21 (addition@@0 $u0 $u0)) (boogie_si_record_i32 SIV@21))))
 (let (($x440 (=> (and (= (ControlFlow 1 229407) 229409) (not (= SIV@20 1)) (and $x411 $x418)) $x426)))
 (let (($x338 (=> (and (and (= SIV@25 true) (= (ControlFlow 1 229406) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x345 (=> (and (and (= SIV@20 1) (= (ControlFlow 1 229408) 229406)) (and (= SIV@25 true) (= (ControlFlow 1 229406) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x434 (and (not (= SIV@19 1)) (= SIV@20 (ite (> $u0 1073741823) 1 0)))))
 (let (($x453 (=> (and (= (ControlFlow 1 229403) 229407) $x434) (and (=> (and (= (ControlFlow 1 229407) 229408) (and (= SIV@20 1) (= (ControlFlow 1 229408) 229406)) (and (= SIV@25 true) (= (ControlFlow 1 229406) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303) $x440))))
 (let (($x352 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 229405) 229406)) (and (= SIV@25 true) (= (ControlFlow 1 229406) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x447 (and (not (= SIV@18 1)) (= SIV@19 (ite (< $u0 0) 1 0)))))
 (let (($x464 (=> (and (= (ControlFlow 1 229401) 229403) $x447) (and (=> (and (= (ControlFlow 1 229403) 229405) (and (= SIV@19 1) (= (ControlFlow 1 229405) 229406)) (and (= SIV@25 true) (= (ControlFlow 1 229406) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303) $x453))))
 (let (($x319 (=> (and (and (= SIV@25 true) (= (ControlFlow 1 229400) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x326 (=> (and (and (= SIV@18 1) (= (ControlFlow 1 229402) 229400)) (and (= SIV@25 true) (= (ControlFlow 1 229400) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x458 (and (not (= SIV@17 1)) (= SIV@18 (ite (> $u0 1073741823) 1 0)))))
 (let (($x478 (=> (and (= (ControlFlow 1 229398) 229401) $x458) (and (=> (and (= (ControlFlow 1 229401) 229402) (and (= SIV@18 1) (= (ControlFlow 1 229402) 229400)) (and (= SIV@25 true) (= (ControlFlow 1 229400) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303) $x464))))
 (let (($x333 (=> (and (and (= SIV@17 1) (= (ControlFlow 1 229399) 229400)) (and (= SIV@25 true) (= (ControlFlow 1 229400) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303)))
 (let (($x471 (and (boogie_si_record_ref main) (= SIV@17 (ite (< $u0 0) 1 0)))))
 (let (($x480 (=> (and (and true SIV@28) $x471) (and (=> (and (= (ControlFlow 1 229398) 229399) (and (= SIV@17 1) (= (ControlFlow 1 229399) 229400)) (and (= SIV@25 true) (= (ControlFlow 1 229400) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303) $x478))))
 (let (($x489 (=> (and (and true (= (ControlFlow 1 234530) 234523)) (= (ControlFlow 1 234523) 229398) true (and (and true SIV@28) $x471)) (and (=> (and (= (ControlFlow 1 229398) 229399) (and (= SIV@17 1) (= (ControlFlow 1 229399) 229400)) (and (= SIV@25 true) (= (ControlFlow 1 229400) 229404)) (= SIV@26 0) (and (= SIV@27 SIV@25) (= (ControlFlow 1 229404) 234525)) (= (ControlFlow 1 234525) (- 0 234937))) $x303) $x478))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 234530) (not $x489))))))))))))))))))))))))))))))))))
(assert
 (not SIV@28))
(assert
 (not SIV@29))
(check-sat)
