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
(declare-fun sum () Int)
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
(declare-fun __VERIFIER_nondet_unsigned_int () Int)
(declare-fun __SMACK_nondet_unsigned_int () Int)
(declare-fun __VERIFIER_nondet_uint () Int)
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
(declare-fun SIV_20 () Bool)
(declare-fun SIV_25 () Int)
(declare-fun SIV_24 () Bool)
(declare-fun SIV_19 () Int)
(declare-fun SIV_18 () Int)
(declare-fun SIV_17 () Int)
(declare-fun SIV_16 () Int)
(declare-fun SIV_15 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun sum_cb (Int Int) Int)
(declare-fun SIV_23 () Bool)
(declare-fun SIV_22 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_21 () Bool)
(declare-fun SIV_28 () Bool)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_32 () Int)
(declare-fun SIV_33 () Bool)
(declare-fun SIV_38 () Int)
(declare-fun SIV_39 () Bool)
(declare-fun SIV_60 () Int)
(declare-fun SIV_71 () Bool)
(declare-fun SIV_68 () Int)
(declare-fun SIV_69 () Int)
(declare-fun SIV_62 () Int)
(declare-fun SIV_67 () Int)
(declare-fun SIV_61 () Int)
(declare-fun SIV_70 () Bool)
(declare-fun SIV_65 () Int)
(declare-fun SIV_66 () Int)
(declare-fun SIV_64 () Int)
(declare-fun SIV_63 () Int)
(declare-fun SIV_87 () Int)
(declare-fun SIV_98 () Bool)
(declare-fun SIV_95 () Int)
(declare-fun SIV_96 () Int)
(declare-fun SIV_89 () Int)
(declare-fun SIV_94 () Int)
(declare-fun SIV_88 () Int)
(declare-fun SIV_97 () Bool)
(declare-fun SIV_92 () Int)
(declare-fun SIV_93 () Int)
(declare-fun SIV_91 () Int)
(declare-fun SIV_90 () Int)
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
 (let ((?x23 (- 0 24768)))
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
 (= sum (- 0 1032)))
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
 (= llvm_dbg_value (- 0 23736)))
(assert
 (let ((?x23 (- 0 24768)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 292366) (- 0 318712))))))
 (let (($x180 (=> (and (= (ControlFlow 0 318649) 292366) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 318652) (not (=> (and (and SIV_0 (= (ControlFlow 0 318652) 318649)) (= (ControlFlow 0 318649) 292366) $x168) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x204 (=> (and (not SIV_20) (= (ControlFlow 1 292347) (- 0 319148))) (not (and (= SIV_4 SIV_25) (= SIV_3 SIV_20))))))
 (let (($x205 (and true true)))
 (let (($x212 (=> (and (and $x205 (and SIV_24 (= (ControlFlow 1 292346) 292347))) (and (not SIV_20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV_4 SIV_25) (= SIV_3 SIV_20))))))
 (let (($x219 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 292345) 292346)) (and $x205 (and SIV_24 (= (ControlFlow 1 292346) 292347))) (and (not SIV_20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV_4 SIV_25) (= SIV_3 SIV_20))))))
 (let (($x253 (and (= SIV_19 (ite (not (= SIV_17 SIV_18)) 1 0)) (= (ControlFlow 1 292344) 292345))))
 (let (($x254 (and (and (boogie_si_record_i32 SIV_17) (= SIV_18 (+ SIV_15 SIV_16))) $x253)))
 (let (($x234 (boogie_si_record_i32 SIV_16)))
 (let (($x240 (and (and SIV_23 $x234) (and $x234 (= SIV_17 (sum_cb SIV_15 SIV_16))))))
 (let (($x230 (and (and (boogie_si_record_i32 SIV_15) (boogie_si_record_i32 SIV_15)) $x205)))
 (let (($x231 (and (and (and (boogie_si_record_ref main_) true) (and true SIV_22)) $x230)))
 (let (($x259 (=> (and true (and true SIV_21) (and $x231 (and $x240 $x254)) (and (= SIV_19 1) (= (ControlFlow 1 292345) 292346)) (and $x205 (and SIV_24 (= (ControlFlow 1 292346) 292347))) (and (not SIV_20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV_4 SIV_25) (= SIV_3 SIV_20))))))
 (let (($x267 (=> (and (and true (= (ControlFlow 1 318771) 318768)) (= (ControlFlow 1 318768) 292344) true (and true SIV_21) (and $x231 (and $x240 $x254)) (and (= SIV_19 1) (= (ControlFlow 1 292345) 292346)) (and $x205 (and SIV_24 (= (ControlFlow 1 292346) 292347))) (and (not SIV_20) (= (ControlFlow 1 292347) (- 0 319148)))) (not (and (= SIV_4 SIV_25) (= SIV_3 SIV_20))))))
 (=> SIV_5 (and (= (ControlFlow 1 0) 318771) (not $x267))))))))))))))))
(assert
 (let (($x205 (and true true)))
 (let (($x284 (and $x205 (and SIV_28 (= (ControlFlow 2 290735) (- 0 319264))))))
 (let (($x291 (=> (and (= (ControlFlow 2 319225) 290735) true (and true SIV_27) $x284) false)))
 (let (($x297 (and (= (ControlFlow 2 0) 319227) (not (=> (and (and true (= (ControlFlow 2 319227) 319225)) (= (ControlFlow 2 319225) 290735) true (and true SIV_27) $x284) false)))))
 (=> SIV_21 $x297))))))
(assert
 (let (($x305 (boogie_si_record_i32 SIV_32)))
 (let (($x313 (and (and SIV_33 $x305) (and $x305 (= (ControlFlow 3 291395) (- 0 319401))))))
 (let (($x205 (and true true)))
 (let (($x321 (=> (and (= (ControlFlow 3 319292) 291395) $x205 $x313) (not (= SIV_15 SIV_32)))))
 (let (($x327 (and (= (ControlFlow 3 0) 319295) (not (=> (and (and true (= (ControlFlow 3 319295) 319292)) (= (ControlFlow 3 319292) 291395) $x205 $x313) (not (= SIV_15 SIV_32)))))))
 (=> SIV_22 $x327)))))))
(assert
 (let (($x335 (boogie_si_record_i32 SIV_38)))
 (let (($x343 (and (and SIV_39 $x335) (and $x335 (= (ControlFlow 4 292055) (- 0 319542))))))
 (let (($x205 (and true true)))
 (let (($x351 (=> (and (= (ControlFlow 4 319433) 292055) $x205 $x343) (not (= SIV_16 SIV_38)))))
 (let (($x357 (and (= (ControlFlow 4 0) 319436) (not (=> (and (and true (= (ControlFlow 4 319436) 319433)) (= (ControlFlow 4 319433) 292055) $x205 $x343) (not (= SIV_16 SIV_38)))))))
 (=> SIV_23 $x357)))))))
(assert
 (let (($x371 (=> (and (not false) (= (ControlFlow 5 292127) (- 0 319647))) (= SIV_20 (not false)))))
 (let (($x383 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 5 292125) 292126)) (and (= 0 $0) (= (ControlFlow 5 292126) 292127)) (and (not false) (= (ControlFlow 5 292127) (- 0 319647)))) (= SIV_20 (not false)))))
 (let (($x391 (=> (and (and true (= (ControlFlow 5 319577) 319574)) (= (ControlFlow 5 319574) 292125) (and (boogie_si_record_i32 0) (= (ControlFlow 5 292125) 292126)) (and (= 0 $0) (= (ControlFlow 5 292126) 292127)) (and (not false) (= (ControlFlow 5 292127) (- 0 319647)))) (= SIV_20 (not false)))))
 (=> SIV_24 (and (= (ControlFlow 5 0) 319577) (not $x391)))))))
(assert
 (let (($x408 (=> (and (= (ControlFlow 6 319663) 290683) (= (ControlFlow 6 290683) (- 0 319670))) false)))
 (let (($x414 (and (= (ControlFlow 6 0) 319665) (not (=> (and (and true (= (ControlFlow 6 319665) 319663)) (= (ControlFlow 6 319663) 290683) (= (ControlFlow 6 290683) (- 0 319670))) false)))))
 (=> SIV_27 $x414))))
(assert
 (let (($x429 (=> (and (= (ControlFlow 7 319678) 290723) (= (ControlFlow 7 290723) (- 0 319709))) false)))
 (let (($x435 (and (= (ControlFlow 7 0) 319680) (not (=> (and (and true (= (ControlFlow 7 319680) 319678)) (= (ControlFlow 7 319678) 290723) (= (ControlFlow 7 290723) (- 0 319709))) false)))))
 (=> SIV_28 $x435))))
(assert
 (let (($x205 (and true true)))
 (let (($x451 (and $x205 (and SIV_71 (= (ControlFlow 8 291330) (- 0 320289))))))
 (let (($x466 (and (= SIV_68 (ite (<= SIV_60 SIV_62) 1 0)) (= (ControlFlow 8 291329) 291330))))
 (let (($x467 (=> (and $x466 (= SIV_69 SIV_68) $x451) (not (= SIV_32 SIV_60)))))
 (let (($x482 (and (= SIV_67 (ite (>= SIV_60 SIV_61) 1 0)) (= (ControlFlow 8 291328) 291329))))
 (let (($x485 (=> (and (and (= SIV_66 SIV_65) true) (and (and true SIV_70) $x482) (= SIV_67 1) $x466 (= SIV_69 SIV_68) $x451) (not (= SIV_32 SIV_60)))))
 (let (($x495 (and (= SIV_65 (ite (<= SIV_62 4294967295) 1 0)) (= (ControlFlow 8 291327) 291328))))
 (let (($x506 (and (= SIV_64 (ite (>= SIV_62 4294967295) 1 0)) (= (ControlFlow 8 291326) 291327))))
 (let (($x508 (=> (and (= SIV_63 1) $x506 (= SIV_64 1) $x495 (and (= SIV_66 SIV_65) true) (and (and true SIV_70) $x482) (= SIV_67 1) $x466 (= SIV_69 SIV_68) $x451) (not (= SIV_32 SIV_60)))))
 (let (($x522 (and (= SIV_63 (ite (= SIV_61 0) 1 0)) (= (ControlFlow 8 291325) 291326))))
 (let (($x523 (and (and (boogie_si_record_i32 SIV_62) (boogie_si_record_i32 SIV_62)) $x522)))
 (let (($x513 (and (and (boogie_si_record_i32 SIV_60) (boogie_si_record_i32 SIV_60)) (and (boogie_si_record_i32 SIV_61) (boogie_si_record_i32 SIV_61)))))
 (let (($x533 (=> (and (and true (= (ControlFlow 8 319726) 319723)) (= (ControlFlow 8 319723) 291325) (and $x513 $x523) (= SIV_63 1) $x506 (= SIV_64 1) $x495 (and (= SIV_66 SIV_65) true) (and (and true SIV_70) $x482) (= SIV_67 1) $x466 (= SIV_69 SIV_68) $x451) (not (= SIV_32 SIV_60)))))
 (=> SIV_33 (and (= (ControlFlow 8 0) 319726) (not $x533)))))))))))))))))
(assert
 (let (($x205 (and true true)))
 (let (($x551 (and $x205 (and SIV_98 (= (ControlFlow 9 291990) (- 0 320934))))))
 (let (($x566 (and (= SIV_95 (ite (<= SIV_87 SIV_89) 1 0)) (= (ControlFlow 9 291989) 291990))))
 (let (($x567 (=> (and $x566 (= SIV_96 SIV_95) $x551) (not (= SIV_38 SIV_87)))))
 (let (($x582 (and (= SIV_94 (ite (>= SIV_87 SIV_88) 1 0)) (= (ControlFlow 9 291988) 291989))))
 (let (($x585 (=> (and (and (= SIV_93 SIV_92) true) (and (and true SIV_97) $x582) (= SIV_94 1) $x566 (= SIV_96 SIV_95) $x551) (not (= SIV_38 SIV_87)))))
 (let (($x594 (and (= SIV_92 (ite (<= SIV_89 4294967295) 1 0)) (= (ControlFlow 9 291987) 291988))))
 (let (($x605 (and (= SIV_91 (ite (>= SIV_89 4294967295) 1 0)) (= (ControlFlow 9 291986) 291987))))
 (let (($x607 (=> (and (= SIV_90 1) $x605 (= SIV_91 1) $x594 (and (= SIV_93 SIV_92) true) (and (and true SIV_97) $x582) (= SIV_94 1) $x566 (= SIV_96 SIV_95) $x551) (not (= SIV_38 SIV_87)))))
 (let (($x621 (and (= SIV_90 (ite (= SIV_88 0) 1 0)) (= (ControlFlow 9 291985) 291986))))
 (let (($x622 (and (and (boogie_si_record_i32 SIV_89) (boogie_si_record_i32 SIV_89)) $x621)))
 (let (($x612 (and (and (boogie_si_record_i32 SIV_87) (boogie_si_record_i32 SIV_87)) (and (boogie_si_record_i32 SIV_88) (boogie_si_record_i32 SIV_88)))))
 (let (($x632 (=> (and (and true (= (ControlFlow 9 320371) 320368)) (= (ControlFlow 9 320368) 291985) (and $x612 $x622) (= SIV_90 1) $x605 (= SIV_91 1) $x594 (and (= SIV_93 SIV_92) true) (and (and true SIV_97) $x582) (= SIV_94 1) $x566 (= SIV_96 SIV_95) $x551) (not (= SIV_38 SIV_87)))))
 (=> SIV_39 (and (= (ControlFlow 9 0) 320371) (not $x632)))))))))))))))))
(assert
 (let (($x648 (and (not (= SIV_66 $0)) (= (ControlFlow 10 290815) (- 0 321076)))))
 (let (($x654 (=> (and (= (ControlFlow 10 321007) 290815) (boogie_si_record_i32 SIV_66) $x648) false)))
 (let (($x660 (and (= (ControlFlow 10 0) 321010) (not (=> (and (and true (= (ControlFlow 10 321010) 321007)) (= (ControlFlow 10 321007) 290815) (boogie_si_record_i32 SIV_66) $x648) false)))))
 (=> SIV_70 $x660)))))
(assert
 (let (($x674 (and (not (= SIV_69 $0)) (= (ControlFlow 11 290883) (- 0 321155)))))
 (let (($x680 (=> (and (= (ControlFlow 11 321086) 290883) (boogie_si_record_i32 SIV_69) $x674) false)))
 (let (($x686 (and (= (ControlFlow 11 0) 321089) (not (=> (and (and true (= (ControlFlow 11 321089) 321086)) (= (ControlFlow 11 321086) 290883) (boogie_si_record_i32 SIV_69) $x674) false)))))
 (=> SIV_71 $x686)))))
(assert
 (let (($x700 (and (not (= SIV_93 $0)) (= (ControlFlow 12 291475) (- 0 321234)))))
 (let (($x706 (=> (and (= (ControlFlow 12 321165) 291475) (boogie_si_record_i32 SIV_93) $x700) false)))
 (let (($x712 (and (= (ControlFlow 12 0) 321168) (not (=> (and (and true (= (ControlFlow 12 321168) 321165)) (= (ControlFlow 12 321165) 291475) (boogie_si_record_i32 SIV_93) $x700) false)))))
 (=> SIV_97 $x712)))))
(assert
 (let (($x726 (and (not (= SIV_96 $0)) (= (ControlFlow 13 291543) (- 0 321313)))))
 (let (($x732 (=> (and (= (ControlFlow 13 321244) 291543) (boogie_si_record_i32 SIV_96) $x726) false)))
 (let (($x738 (and (= (ControlFlow 13 0) 321247) (not (=> (and (and true (= (ControlFlow 13 321247) 321244)) (= (ControlFlow 13 321244) 291543) (boogie_si_record_i32 SIV_96) $x726) false)))))
 (=> SIV_98 $x738)))))
(check-sat)
