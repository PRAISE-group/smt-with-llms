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
(declare-fun addition () Int)
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
(declare-fun SIV_25 () Bool)
(declare-fun SIV_24 () Int)
(declare-fun SIV_23 () Bool)
(declare-fun SIV_22 () Bool)
(declare-fun SIV_28 () Int)
(declare-fun SIV_27 () Bool)
(declare-fun SIV_21 () Int)
(declare-fun SIV_18 () Int)
(declare-fun SIV_20 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV_19 () Int)
(declare-fun boogie_si_record_i64 (Int) Bool)
(declare-fun addition_cb (Int Int) Int)
(declare-fun SIV_17 () Int)
(declare-fun SIV_16 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV_26 () Bool)
(declare-fun SIV_31 () Bool)
(declare-fun SIV_30 () Bool)
(declare-fun SIV_36 () Bool)
(declare-fun SIV_35 () Bool)
(declare-fun boogie_si_record_i32 (Int) Bool)
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
 (= addition (- 0 1032)))
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
 (let (($x156 (and (and true SIV_5) (and (not SIV_3) (= (ControlFlow 0 229003) (- 0 233413))))))
 (let (($x168 (=> (and (= (ControlFlow 0 233356) 229003) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3))))))
 (and (= (ControlFlow 0 0) 233359) (not (=> (and (and SIV_0 (= (ControlFlow 0 233359) 233356)) (= (ControlFlow 0 233356) 229003) $x156) (not (and (= SIV_1 SIV_4) (= SIV_2 SIV_3)))))))))
(assert
 (let (($x303 (not (and (= SIV_4 SIV_24) (= SIV_3 SIV_25)))))
 (let (($x304 (=> (= (ControlFlow 1 233471) (- 0 233804)) $x303)))
 (let (($x312 (=> (and (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x313 (=> (and (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x347 (=> (and (and (= SIV_23 SIV_22) (= (ControlFlow 1 228479) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x356 (=> (and (and SIV_22 (= (ControlFlow 1 228477) 228478)) (= (ControlFlow 1 228478) 228479) (and (= SIV_23 SIV_22) (= (ControlFlow 1 228479) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x366 (and (and (not SIV_22) (= SIV_24 SIV_28)) (and (= SIV_25 SIV_22) (= (ControlFlow 1 228476) 233471)))))
 (let (($x376 (and (=> (and (= (ControlFlow 1 228475) 228476) $x366 (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228475) 228477) (and SIV_22 (= (ControlFlow 1 228477) 228478)) (= (ControlFlow 1 228478) 228479) (and (= SIV_23 SIV_22) (= (ControlFlow 1 228479) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303))))
 (let (($x384 (=> (and (and (not (= SIV_21 1)) (= (ControlFlow 1 228473) 228475)) true (and true SIV_27)) $x376)))
 (let (($x319 (=> (and (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x326 (=> (and (and (= SIV_21 1) (= (ControlFlow 1 228472) 228468)) (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x398 (and (=> (and (= (ControlFlow 1 228471) 228472) (and (= SIV_21 1) (= (ControlFlow 1 228472) 228468)) (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228471) 228473) (and (not (= SIV_21 1)) (= (ControlFlow 1 228473) 228475)) true (and true SIV_27)) $x376))))
 (let (($x391 (and (not (= SIV_20 1)) (= SIV_21 (ite (>= SIV_18 200) 1 0)))))
 (let (($x333 (=> (and (and (= SIV_20 1) (= (ControlFlow 1 228470) 228468)) (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x413 (and (=> (and (= (ControlFlow 1 228469) 228470) (and (= SIV_20 1) (= (ControlFlow 1 228470) 228468)) (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228469) 228471) $x391) $x398))))
 (let (($x406 (and (not (= SIV_19 1)) (= SIV_20 (ite (< $u0 100) 1 0)))))
 (let (($x340 (=> (and (and (= SIV_19 1) (= (ControlFlow 1 228467) 228468)) (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x438 (and (=> (and (= (ControlFlow 1 228466) 228467) (and (= SIV_19 1) (= (ControlFlow 1 228467) 228468)) (and (= SIV_23 true) (= (ControlFlow 1 228468) 228474)) (= SIV_24 0) (and (= SIV_25 SIV_23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228466) 228469) $x406) $x413))))
 (let (($x429 (and (boogie_si_record_i64 SIV_18) (= SIV_19 (ite (< $u0 100) 1 0)))))
 (let (($x430 (and (and (= SIV_17 $u0) (= SIV_18 (addition_cb SIV_16 SIV_17))) $x429)))
 (let (($x421 (and (and true SIV_26) (and (boogie_si_record_ref main_) (= SIV_16 $u0)))))
 (let (($x444 (=> (and (= (ControlFlow 1 233469) 228466) true (and $x421 $x430)) $x438)))
 (let (($x450 (and (= (ControlFlow 1 0) 233476) (not (=> (and (and true (= (ControlFlow 1 233476) 233469)) (= (ControlFlow 1 233469) 228466) true (and $x421 $x430)) $x438)))))
 (=> SIV_5 $x450)))))))))))))))))))))))))
(assert
 (let (($x527 (and (and true true) (and SIV_31 (= (ControlFlow 2 228979) (- 0 233911))))))
 (let (($x534 (=> (and (= (ControlFlow 2 233876) 228979) true (and true SIV_30) $x527) false)))
 (let (($x540 (and (= (ControlFlow 2 0) 233878) (not (=> (and (and true (= (ControlFlow 2 233878) 233876)) (= (ControlFlow 2 233876) 228979) true (and true SIV_30) $x527) false)))))
 (=> SIV_26 $x540)))))
(assert
 (let (($x552 (not SIV_36)))
 (let (($x553 (= SIV_22 $x552)))
 (let (($x554 (=> (= (ControlFlow 3 233941) (- 0 234026)) $x553)))
 (let (($x579 (=> (and (and (= SIV_36 SIV_35) (= (ControlFlow 3 228622) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x586 (=> (and (and (= SIV_35 true) (= (ControlFlow 3 228621) 228622)) (and (= SIV_36 SIV_35) (= (ControlFlow 3 228622) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x594 (=> (and (= (ControlFlow 3 228616) 228621) (not (= 0 $0)) (and (= SIV_35 true) (= (ControlFlow 3 228621) 228622)) (and (= SIV_36 SIV_35) (= (ControlFlow 3 228622) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x561 (=> (and (and (= SIV_36 false) (= (ControlFlow 3 228618) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x571 (and (=> (and (= (ControlFlow 3 228617) 228618) (not false) (and (= SIV_36 false) (= (ControlFlow 3 228618) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553) (=> (= (ControlFlow 3 228617) 228619) true))))
 (let (($x563 (= 0 $0)))
 (let (($x596 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 228616) 228617) $x563) $x571) $x594))))
 (let (($x604 (=> (and (and true (= (ControlFlow 3 233946) 233939)) (= (ControlFlow 3 233939) 228616) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 228616) 228617) $x563) $x571) $x594))))
 (=> SIV_27 (and (= (ControlFlow 3 0) 233946) (not $x604)))))))))))))))
(check-sat)
