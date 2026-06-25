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
(declare-fun sum () Int)
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
(declare-fun SIV@20 () Bool)
(declare-fun SIV@25 () Int)
(declare-fun SIV@24 () Bool)
(declare-fun SIV@19 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun SIV@15 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun sum_cb (Int Int) Int)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@32 () Int)
(declare-fun SIV@33 () Bool)
(declare-fun SIV@38 () Int)
(declare-fun SIV@39 () Bool)
(declare-fun SIV@60 () Int)
(declare-fun SIV@71 () Bool)
(declare-fun SIV@68 () Int)
(declare-fun SIV@69 () Int)
(declare-fun SIV@62 () Int)
(declare-fun SIV@67 () Int)
(declare-fun SIV@61 () Int)
(declare-fun SIV@70 () Bool)
(declare-fun SIV@65 () Int)
(declare-fun SIV@66 () Int)
(declare-fun SIV@64 () Int)
(declare-fun SIV@63 () Int)
(declare-fun SIV@87 () Int)
(declare-fun SIV@98 () Bool)
(declare-fun SIV@95 () Int)
(declare-fun SIV@96 () Int)
(declare-fun SIV@89 () Int)
(declare-fun SIV@94 () Int)
(declare-fun SIV@88 () Int)
(declare-fun SIV@97 () Bool)
(declare-fun SIV@92 () Int)
(declare-fun SIV@93 () Int)
(declare-fun SIV@91 () Int)
(declare-fun SIV@90 () Int)
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
 (= sum (- 0 1032)))
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
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 292366) (- 0 318712))))))
 (let (($x180 (=> (and (= (ControlFlow 0 318649) 292366) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 318652) (not (=> (and (and SIV@0 (= (ControlFlow 0 318652) 318649)) (= (ControlFlow 0 318649) 292366) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x204 (=> (and (not SIV@20) (= (ControlFlow 1 292347) (- 0 319148))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@20))))))
 (let (($x205 (and true true)))
 (let (($x212 (=> (and (and $x205 (and SIV@24 (= (ControlFlow 1 292346) 292347))) (and (not SIV@20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@20))))))
 (let (($x219 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 292345) 292346)) (and $x205 (and SIV@24 (= (ControlFlow 1 292346) 292347))) (and (not SIV@20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@20))))))
 (let (($x253 (and (= SIV@19 (ite (not (= SIV@17 SIV@18)) 1 0)) (= (ControlFlow 1 292344) 292345))))
 (let (($x254 (and (and (boogie_si_record_i32 SIV@17) (= SIV@18 (+ SIV@15 SIV@16))) $x253)))
 (let (($x234 (boogie_si_record_i32 SIV@16)))
 (let (($x240 (and (and SIV@23 $x234) (and $x234 (= SIV@17 (sum_cb SIV@15 SIV@16))))))
 (let (($x230 (and (and (boogie_si_record_i32 SIV@15) (boogie_si_record_i32 SIV@15)) $x205)))
 (let (($x231 (and (and (and (boogie_si_record_ref main) true) (and true SIV@22)) $x230)))
 (let (($x259 (=> (and true (and true SIV@21) (and $x231 (and $x240 $x254)) (and (= SIV@19 1) (= (ControlFlow 1 292345) 292346)) (and $x205 (and SIV@24 (= (ControlFlow 1 292346) 292347))) (and (not SIV@20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@20))))))
 (let (($x267 (=> (and (and true (= (ControlFlow 1 318771) 318768)) (= (ControlFlow 1 318768) 292344) true (and true SIV@21) (and $x231 (and $x240 $x254)) (and (= SIV@19 1) (= (ControlFlow 1 292345) 292346)) (and $x205 (and SIV@24 (= (ControlFlow 1 292346) 292347))) (and (not SIV@20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV@4 SIV@25) (= SIV@3 SIV@20))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 318771) (not $x267))))))))))))))))
(assert
 (let (($x205 (and true true)))
 (let (($x284 (and $x205 (and SIV@28 (= (ControlFlow 2 290735) (- 0 319264))))))
 (let (($x291 (=> (and (= (ControlFlow 2 319225) 290735) true (and true SIV@27) $x284) false)))
 (let (($x297 (and (= (ControlFlow 2 0) 319227) (not (=> (and (and true (= (ControlFlow 2 319227) 319225)) (= (ControlFlow 2 319225) 290735) true (and true SIV@27) $x284) false)))))
 (=> SIV@21 $x297))))))
(assert
 (let (($x305 (boogie_si_record_i32 SIV@32)))
 (let (($x313 (and (and SIV@33 $x305) (and $x305 (= (ControlFlow 3 291395) (- 0 319401))))))
 (let (($x205 (and true true)))
 (let (($x321 (=> (and (= (ControlFlow 3 319292) 291395) $x205 $x313) (not (= SIV@15 SIV@32)))))
 (let (($x327 (and (= (ControlFlow 3 0) 319295) (not (=> (and (and true (= (ControlFlow 3 319295) 319292)) (= (ControlFlow 3 319292) 291395) $x205 $x313) (not (= SIV@15 SIV@32)))))))
 (=> SIV@22 $x327)))))))
(assert
 (let (($x335 (boogie_si_record_i32 SIV@38)))
 (let (($x343 (and (and SIV@39 $x335) (and $x335 (= (ControlFlow 4 292055) (- 0 319542))))))
 (let (($x205 (and true true)))
 (let (($x351 (=> (and (= (ControlFlow 4 319433) 292055) $x205 $x343) (not (= SIV@16 SIV@38)))))
 (let (($x357 (and (= (ControlFlow 4 0) 319436) (not (=> (and (and true (= (ControlFlow 4 319436) 319433)) (= (ControlFlow 4 319433) 292055) $x205 $x343) (not (= SIV@16 SIV@38)))))))
 (=> SIV@23 $x357)))))))
(assert
 (let (($x371 (=> (and (not false) (= (ControlFlow 5 292127) (- 0 319647))) (= SIV@20 (not false)))))
 (let (($x383 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 5 292125) 292126)) (and (= 0 $0) (= (ControlFlow 5 292126) 292127)) (and (not false) (= (ControlFlow 5 292127) (- 0 319647)))) (= SIV@20 (not false)))))
 (let (($x391 (=> (and (and true (= (ControlFlow 5 319577) 319574)) (= (ControlFlow 5 319574) 292125) (and (boogie_si_record_i32 0) (= (ControlFlow 5 292125) 292126)) (and (= 0 $0) (= (ControlFlow 5 292126) 292127)) (and (not false) (= (ControlFlow 5 292127) (- 0 319647)))) (= SIV@20 (not false)))))
 (=> SIV@24 (and (= (ControlFlow 5 0) 319577) (not $x391)))))))
(assert
 (let (($x408 (=> (and (= (ControlFlow 6 319663) 290683) (= (ControlFlow 6 290683) (- 0 319670))) false)))
 (let (($x414 (and (= (ControlFlow 6 0) 319665) (not (=> (and (and true (= (ControlFlow 6 319665) 319663)) (= (ControlFlow 6 319663) 290683) (= (ControlFlow 6 290683) (- 0 319670))) false)))))
 (=> SIV@27 $x414))))
(assert
 (let (($x429 (=> (and (= (ControlFlow 7 319678) 290723) (= (ControlFlow 7 290723) (- 0 319709))) false)))
 (let (($x435 (and (= (ControlFlow 7 0) 319680) (not (=> (and (and true (= (ControlFlow 7 319680) 319678)) (= (ControlFlow 7 319678) 290723) (= (ControlFlow 7 290723) (- 0 319709))) false)))))
 (=> SIV@28 $x435))))
(assert
 (let (($x205 (and true true)))
 (let (($x451 (and $x205 (and SIV@71 (= (ControlFlow 8 291330) (- 0 320289))))))
 (let (($x466 (and (= SIV@68 (ite (<= SIV@60 SIV@62) 1 0)) (= (ControlFlow 8 291329) 291330))))
 (let (($x467 (=> (and $x466 (= SIV@69 SIV@68) $x451) (not (= SIV@32 SIV@60)))))
 (let (($x482 (and (= SIV@67 (ite (>= SIV@60 SIV@61) 1 0)) (= (ControlFlow 8 291328) 291329))))
 (let (($x485 (=> (and (and (= SIV@66 SIV@65) true) (and (and true SIV@70) $x482) (= SIV@67 1) $x466 (= SIV@69 SIV@68) $x451) (not (= SIV@32 SIV@60)))))
 (let (($x495 (and (= SIV@65 (ite (<= SIV@62 4294967295) 1 0)) (= (ControlFlow 8 291327) 291328))))
 (let (($x506 (and (= SIV@64 (ite (>= SIV@62 4294967295) 1 0)) (= (ControlFlow 8 291326) 291327))))
 (let (($x508 (=> (and (= SIV@63 1) $x506 (= SIV@64 1) $x495 (and (= SIV@66 SIV@65) true) (and (and true SIV@70) $x482) (= SIV@67 1) $x466 (= SIV@69 SIV@68) $x451) (not (= SIV@32 SIV@60)))))
 (let (($x522 (and (= SIV@63 (ite (= SIV@61 0) 1 0)) (= (ControlFlow 8 291325) 291326))))
 (let (($x523 (and (and (boogie_si_record_i32 SIV@62) (boogie_si_record_i32 SIV@62)) $x522)))
 (let (($x513 (and (and (boogie_si_record_i32 SIV@60) (boogie_si_record_i32 SIV@60)) (and (boogie_si_record_i32 SIV@61) (boogie_si_record_i32 SIV@61)))))
 (let (($x533 (=> (and (and true (= (ControlFlow 8 319726) 319723)) (= (ControlFlow 8 319723) 291325) (and $x513 $x523) (= SIV@63 1) $x506 (= SIV@64 1) $x495 (and (= SIV@66 SIV@65) true) (and (and true SIV@70) $x482) (= SIV@67 1) $x466 (= SIV@69 SIV@68) $x451) (not (= SIV@32 SIV@60)))))
 (=> SIV@33 (and (= (ControlFlow 8 0) 319726) (not $x533)))))))))))))))))
(assert
 (let (($x205 (and true true)))
 (let (($x551 (and $x205 (and SIV@98 (= (ControlFlow 9 291990) (- 0 320934))))))
 (let (($x566 (and (= SIV@95 (ite (<= SIV@87 SIV@89) 1 0)) (= (ControlFlow 9 291989) 291990))))
 (let (($x567 (=> (and $x566 (= SIV@96 SIV@95) $x551) (not (= SIV@38 SIV@87)))))
 (let (($x582 (and (= SIV@94 (ite (>= SIV@87 SIV@88) 1 0)) (= (ControlFlow 9 291988) 291989))))
 (let (($x585 (=> (and (and (= SIV@93 SIV@92) true) (and (and true SIV@97) $x582) (= SIV@94 1) $x566 (= SIV@96 SIV@95) $x551) (not (= SIV@38 SIV@87)))))
 (let (($x594 (and (= SIV@92 (ite (<= SIV@89 4294967295) 1 0)) (= (ControlFlow 9 291987) 291988))))
 (let (($x605 (and (= SIV@91 (ite (>= SIV@89 4294967295) 1 0)) (= (ControlFlow 9 291986) 291987))))
 (let (($x607 (=> (and (= SIV@90 1) $x605 (= SIV@91 1) $x594 (and (= SIV@93 SIV@92) true) (and (and true SIV@97) $x582) (= SIV@94 1) $x566 (= SIV@96 SIV@95) $x551) (not (= SIV@38 SIV@87)))))
 (let (($x621 (and (= SIV@90 (ite (= SIV@88 0) 1 0)) (= (ControlFlow 9 291985) 291986))))
 (let (($x622 (and (and (boogie_si_record_i32 SIV@89) (boogie_si_record_i32 SIV@89)) $x621)))
 (let (($x612 (and (and (boogie_si_record_i32 SIV@87) (boogie_si_record_i32 SIV@87)) (and (boogie_si_record_i32 SIV@88) (boogie_si_record_i32 SIV@88)))))
 (let (($x632 (=> (and (and true (= (ControlFlow 9 320371) 320368)) (= (ControlFlow 9 320368) 291985) (and $x612 $x622) (= SIV@90 1) $x605 (= SIV@91 1) $x594 (and (= SIV@93 SIV@92) true) (and (and true SIV@97) $x582) (= SIV@94 1) $x566 (= SIV@96 SIV@95) $x551) (not (= SIV@38 SIV@87)))))
 (=> SIV@39 (and (= (ControlFlow 9 0) 320371) (not $x632)))))))))))))))))
(assert
 (let (($x648 (and (not (= SIV@66 $0)) (= (ControlFlow 10 290815) (- 0 321076)))))
 (let (($x654 (=> (and (= (ControlFlow 10 321007) 290815) (boogie_si_record_i32 SIV@66) $x648) false)))
 (let (($x660 (and (= (ControlFlow 10 0) 321010) (not (=> (and (and true (= (ControlFlow 10 321010) 321007)) (= (ControlFlow 10 321007) 290815) (boogie_si_record_i32 SIV@66) $x648) false)))))
 (=> SIV@70 $x660)))))
(assert
 (let (($x674 (and (not (= SIV@69 $0)) (= (ControlFlow 11 290883) (- 0 321155)))))
 (let (($x680 (=> (and (= (ControlFlow 11 321086) 290883) (boogie_si_record_i32 SIV@69) $x674) false)))
 (let (($x686 (and (= (ControlFlow 11 0) 321089) (not (=> (and (and true (= (ControlFlow 11 321089) 321086)) (= (ControlFlow 11 321086) 290883) (boogie_si_record_i32 SIV@69) $x674) false)))))
 (=> SIV@71 $x686)))))
(assert
 (let (($x700 (and (not (= SIV@93 $0)) (= (ControlFlow 12 291475) (- 0 321234)))))
 (let (($x706 (=> (and (= (ControlFlow 12 321165) 291475) (boogie_si_record_i32 SIV@93) $x700) false)))
 (let (($x712 (and (= (ControlFlow 12 0) 321168) (not (=> (and (and true (= (ControlFlow 12 321168) 321165)) (= (ControlFlow 12 321165) 291475) (boogie_si_record_i32 SIV@93) $x700) false)))))
 (=> SIV@97 $x712)))))
(assert
 (let (($x726 (and (not (= SIV@96 $0)) (= (ControlFlow 13 291543) (- 0 321313)))))
 (let (($x732 (=> (and (= (ControlFlow 13 321244) 291543) (boogie_si_record_i32 SIV@96) $x726) false)))
 (let (($x738 (and (= (ControlFlow 13 0) 321247) (not (=> (and (and true (= (ControlFlow 13 321247) 321244)) (= (ControlFlow 13 321244) 291543) (boogie_si_record_i32 SIV@96) $x726) false)))))
 (=> SIV@98 $x738)))))
(check-sat)
