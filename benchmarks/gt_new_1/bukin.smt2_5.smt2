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
(declare-fun q@.str () Int)
(declare-fun bukin_int () Int)
(declare-fun main () Int)
(declare-fun printf () Int)
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
(declare-fun SIV@36 () Bool)
(declare-fun SIV@35 () Int)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@33 () Bool)
(declare-fun SIV@42 () Int)
(declare-fun SIV@41 () Bool)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@32 () Int)
(declare-fun SIV@26 () Int)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@40 () Bool)
(declare-fun SIV@25 () Bool)
(declare-fun SIV@29 () Int)
(declare-fun SIV@27 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun bukin_int_cb (Int Int) Int)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@39 () Bool)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@22 () Int)
(declare-fun SIV@23 () Int)
(declare-fun SIV@20 () Bool)
(declare-fun SIV@38 () Bool)
(declare-fun SIV@18 () Int)
(declare-fun SIV@19 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@37 () Bool)
(declare-fun SIV@45 () Bool)
(declare-fun SIV@44 () Bool)
(declare-fun SIV@50 () Bool)
(declare-fun SIV@49 () Bool)
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
 (let ((?x23 (- 0 23766)))
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
 (= q@.str (- 0 1062)))
(assert
 (= bukin_int (- 0 2094)))
(assert
 (= main (- 0 3126)))
(assert
 (= printf (- 0 4158)))
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
 (= llvm.dbg.value (- 0 22734)))
(assert
 (let ((?x23 (- 0 23766)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x164 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 232325) (- 0 237106))))))
 (let (($x176 (=> (and (= (ControlFlow 0 237049) 232325) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 237052) (not (=> (and (and SIV@0 (= (ControlFlow 0 237052) 237049)) (= (ControlFlow 0 237049) 232325) $x164) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x319 (not (and (= SIV@4 SIV@35) (= SIV@3 SIV@36)))))
 (let (($x320 (=> (= (ControlFlow 1 237164) (- 0 237915)) $x319)))
 (let (($x328 (=> (and (and (= SIV@36 SIV@34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x333 (=> (and (= (ControlFlow 1 231770) 231775) (= SIV@35 0) (and (= SIV@36 SIV@34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x340 (=> (and (and (= SIV@34 SIV@33) (= (ControlFlow 1 231774) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV@35 0) (and (= SIV@36 SIV@34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x377 (=> (and (= (ControlFlow 1 231771) 231773) (and SIV@33 (= (ControlFlow 1 231773) 231774)) (and (= SIV@34 SIV@33) (= (ControlFlow 1 231774) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV@35 0) (and (= SIV@36 SIV@34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x365 (and (and (not SIV@33) (= SIV@35 SIV@42)) (and (= SIV@36 SIV@33) (= (ControlFlow 1 231772) 237164)))))
 (let (($x379 (=> (and (and (not (= SIV@32 1)) SIV@31) (and true SIV@41)) (and (=> (and (= (ControlFlow 1 231771) 231772) $x365 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x377))))
 (let (($x354 (=> (and (and (= SIV@34 SIV@31) (= (ControlFlow 1 231769) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV@35 0) (and (= SIV@36 SIV@34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319)))
 (let (($x347 (= SIV@32 1)))
 (let (($x390 (and (=> (and (= (ControlFlow 1 231768) 231769) $x347 (and (= SIV@34 SIV@31) (= (ControlFlow 1 231769) 231770)) (= (ControlFlow 1 231770) 231775) (= SIV@35 0) (and (= SIV@36 SIV@34) (= (ControlFlow 1 231775) 237164)) (= (ControlFlow 1 237164) (- 0 237915))) $x319) (=> (and (= (ControlFlow 1 231768) 231771) (and (and (not $x347) SIV@31) (and true SIV@41))) (and (=> (and (= (ControlFlow 1 231771) 231772) $x365 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x377)))))
 (let (($x395 (=> (and (= (ControlFlow 1 231767) 231768) (= SIV@32 (ite (>= SIV@26 0) 1 0))) $x390)))
 (let (($x399 (=> (and (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV@32 (ite (>= SIV@26 0) 1 0))) $x390)))
 (let (($x406 (=> (and (and (= SIV@31 SIV@30) (= (ControlFlow 1 231766) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV@32 (ite (>= SIV@26 0) 1 0))) $x390)))
 (let (($x441 (=> (and (= (ControlFlow 1 231763) 231765) (and SIV@30 (= (ControlFlow 1 231765) 231766)) (and (= SIV@31 SIV@30) (= (ControlFlow 1 231766) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV@32 (ite (>= SIV@26 0) 1 0))) $x390)))
 (let (($x429 (and (and (not SIV@30) (= SIV@35 SIV@42)) (and (= SIV@36 SIV@30) (= (ControlFlow 1 231764) 237164)))))
 (let (($x443 (=> (and (and (not (= SIV@29 1)) SIV@25) (and true SIV@40)) (and (=> (and (= (ControlFlow 1 231763) 231764) $x429 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x441))))
 (let (($x420 (=> (and (and (= SIV@31 SIV@25) (= (ControlFlow 1 231761) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV@32 (ite (>= SIV@26 0) 1 0))) $x390)))
 (let (($x413 (= SIV@29 1)))
 (let (($x453 (and (=> (and (= (ControlFlow 1 231760) 231761) $x413 (and (= SIV@31 SIV@25) (= (ControlFlow 1 231761) 231762)) (= (ControlFlow 1 231762) 231767) (= (ControlFlow 1 231767) 231768) (= SIV@32 (ite (>= SIV@26 0) 1 0))) $x390) (=> (and (= (ControlFlow 1 231760) 231763) (and (and (not $x413) SIV@25) (and true SIV@40))) (and (=> (and (= (ControlFlow 1 231763) 231764) $x429 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x441)))))
 (let (($x466 (and (= SIV@27 (- 0 10)) (= (ControlFlow 1 231759) 231760))))
 (let (($x460 (and (= SIV@26 (bukin_int_cb (- 0 10) 1)) (boogie_si_record_i32 SIV@26))))
 (let (($x468 (=> (and (and $x460 $x466) (= SIV@29 (ite (= SIV@26 0) 1 0))) $x453)))
 (let (($x472 (=> (and (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV@29 (ite (= SIV@26 0) 1 0))) $x453)))
 (let (($x489 (=> (and (and (= SIV@25 SIV@24) (= (ControlFlow 1 231755) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV@29 (ite (= SIV@26 0) 1 0))) $x453)))
 (let (($x511 (=> (and (= (ControlFlow 1 231752) 231754) (and SIV@24 (= (ControlFlow 1 231754) 231755)) (and (= SIV@25 SIV@24) (= (ControlFlow 1 231755) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV@29 (ite (= SIV@26 0) 1 0))) $x453)))
 (let (($x502 (and (and (not SIV@24) (= SIV@35 SIV@42)) (and (= SIV@36 SIV@24) (= (ControlFlow 1 231753) 237164)))))
 (let (($x513 (=> (and true SIV@39) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x514 (=> (and SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x541 (=> (and (and (not (= SIV@22 1)) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x520 (=> (and (and (not (= SIV@23 1)) (= (ControlFlow 1 231758) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))
 (let (($x481 (=> (and (and (= SIV@25 SIV@21) (= (ControlFlow 1 231756) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV@29 (ite (= SIV@26 0) 1 0))) $x453)))
 (let (($x474 (= SIV@23 1)))
 (let (($x534 (and (=> (and (= (ControlFlow 1 231750) 231756) $x474 (and (= SIV@25 SIV@21) (= (ControlFlow 1 231756) 231757)) (= (ControlFlow 1 231757) 231759) (and $x460 $x466) (= SIV@29 (ite (= SIV@26 0) 1 0))) $x453) (=> (and (= (ControlFlow 1 231750) 231758) (and (not $x474) (= (ControlFlow 1 231758) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511)))))
 (let (($x522 (= SIV@22 1)))
 (let (($x549 (=> (and (= (ControlFlow 1 231749) 231750) (and $x522 (= SIV@23 (ite (<= 1 3) 1 0)))) $x534)))
 (let (($x553 (=> (= SIV@22 (ite (>= 1 (- 0 3)) 1 0)) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x561 (=> (and (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV@22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x577 (=> (and (and (= SIV@21 SIV@20) (= (ControlFlow 1 231744) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV@22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x599 (=> (and (= (ControlFlow 1 231741) 231743) (and SIV@20 (= (ControlFlow 1 231743) 231744)) (and (= SIV@21 SIV@20) (= (ControlFlow 1 231744) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV@22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x590 (and (and (not SIV@20) (= SIV@35 SIV@42)) (and (= SIV@36 SIV@20) (= (ControlFlow 1 231742) 237164)))))
 (let (($x601 (=> (and true SIV@38) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x602 (=> (and true (and true SIV@38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x630 (=> (and (and (not (= SIV@18 1)) (= (ControlFlow 1 231740) 231741)) true (and true SIV@38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x608 (=> (and (and (not (= SIV@19 1)) (= (ControlFlow 1 231747) 231741)) true (and true SIV@38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599))))
 (let (($x569 (=> (and (and (= SIV@21 true) (= (ControlFlow 1 231745) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV@22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511))))))
 (let (($x563 (= SIV@19 1)))
 (let (($x623 (and (=> (and (= (ControlFlow 1 231739) 231745) $x563 (and (= SIV@21 true) (= (ControlFlow 1 231745) 231746)) (= (ControlFlow 1 231746) 231748) (= (ControlFlow 1 231748) 231749) (= SIV@22 (ite (>= 1 (- 0 3)) 1 0))) (and $x549 (=> (and (= (ControlFlow 1 231749) 231751) (and (not $x522) (= (ControlFlow 1 231751) 231752)) SIV@21 (and true SIV@39)) (and (=> (and (= (ControlFlow 1 231752) 231753) $x502 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x511)))) (=> (and (= (ControlFlow 1 231739) 231747) (and (not $x563) (= (ControlFlow 1 231747) 231741)) true (and true SIV@38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599)))))
 (let (($x610 (= SIV@18 1)))
 (let (($x616 (and $x610 (= SIV@19 (ite (<= (- 0 10) (- 0 5)) 1 0)))))
 (let (($x642 (and (=> (and (= (ControlFlow 1 231738) 231739) $x616) $x623) (=> (and (= (ControlFlow 1 231738) 231740) (and (not $x610) (= (ControlFlow 1 231740) 231741)) true (and true SIV@38)) (and (=> (and (= (ControlFlow 1 231741) 231742) $x590 (= (ControlFlow 1 237164) (- 0 237915))) $x319) $x599)))))
 (let (($x643 (=> (= SIV@18 (ite (>= (- 0 10) (- 0 15)) 1 0)) $x642)))
 (let (($x651 (and (and true SIV@37) (and (boogie_si_record_ref main) (= (ControlFlow 1 231737) 231738)))))
 (let (($x661 (=> (and (and true (= (ControlFlow 1 237172) 237162)) (= (ControlFlow 1 237162) 231737) true $x651 (= SIV@18 (ite (>= (- 0 10) (- 0 15)) 1 0))) $x642)))
 (=> SIV@5 (and (= (ControlFlow 1 0) 237172) (not $x661))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x813 (and (and true true) (and SIV@45 (= (ControlFlow 2 232301) (- 0 238065))))))
 (let (($x820 (=> (and (= (ControlFlow 2 238030) 232301) true (and true SIV@44) $x813) false)))
 (let (($x826 (and (= (ControlFlow 2 0) 238032) (not (=> (and (and true (= (ControlFlow 2 238032) 238030)) (= (ControlFlow 2 238030) 232301) true (and true SIV@44) $x813) false)))))
 (=> SIV@37 $x826)))))
(assert
 (let (($x837 (not SIV@50)))
 (let (($x838 (= SIV@30 $x837)))
 (let (($x839 (=> (= (ControlFlow 3 238095) (- 0 238180)) $x838)))
 (let (($x864 (=> (and (and (= SIV@50 SIV@49) (= (ControlFlow 3 231944) 238095)) (= (ControlFlow 3 238095) (- 0 238180))) $x838)))
 (let (($x871 (=> (and (and (= SIV@49 SIV@25) (= (ControlFlow 3 231943) 231944)) (and (= SIV@50 SIV@49) (= (ControlFlow 3 231944) 238095)) (= (ControlFlow 3 238095) (- 0 238180))) $x838)))
 (let (($x879 (=> (and (= (ControlFlow 3 231938) 231943) (not (= 0 $0)) (and (= SIV@49 SIV@25) (= (ControlFlow 3 231943) 231944)) (and (= SIV@50 SIV@49) (= (ControlFlow 3 231944) 238095)) (= (ControlFlow 3 238095) (- 0 238180))) $x838)))
 (let (($x846 (=> (and (and (= SIV@50 false) (= (ControlFlow 3 231940) 238095)) (= (ControlFlow 3 238095) (- 0 238180))) $x838)))
 (let (($x856 (and (=> (and (= (ControlFlow 3 231939) 231940) (not false) (and (= SIV@50 false) (= (ControlFlow 3 231940) 238095)) (= (ControlFlow 3 238095) (- 0 238180))) $x838) (=> (= (ControlFlow 3 231939) 231941) true))))
 (let (($x848 (= 0 $0)))
 (let (($x881 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 231938) 231939) $x848) $x856) $x879))))
 (let (($x889 (=> (and (and SIV@25 (= (ControlFlow 3 238100) 238093)) (= (ControlFlow 3 238093) 231938) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 231938) 231939) $x848) $x856) $x879))))
 (=> SIV@40 (and (= (ControlFlow 3 0) 238100) (not $x889)))))))))))))))
(check-sat)
