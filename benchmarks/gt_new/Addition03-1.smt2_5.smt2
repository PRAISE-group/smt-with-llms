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
(declare-fun SIV@25 () Bool)
(declare-fun SIV@24 () Int)
(declare-fun SIV@23 () Bool)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@28 () Int)
(declare-fun SIV@27 () Bool)
(declare-fun SIV@21 () Int)
(declare-fun SIV@18 () Int)
(declare-fun SIV@20 () Int)
(declare-fun $u0 () Int)
(declare-fun SIV@19 () Int)
(declare-fun boogie_si_record_i64 (Int) Bool)
(declare-fun addition@@0 (Int Int) Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@36 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun boogie_si_record_i32 (Int) Bool)
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 229003) (- 0 233413))))))
 (let (($x168 (=> (and (= (ControlFlow 0 233356) 229003) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 233359) (not (=> (and (and SIV@0 (= (ControlFlow 0 233359) 233356)) (= (ControlFlow 0 233356) 229003) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x303 (not (and (= SIV@4 SIV@24) (= SIV@3 SIV@25)))))
 (let (($x304 (=> (= (ControlFlow 1 233471) (- 0 233804)) $x303)))
 (let (($x312 (=> (and (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x313 (=> (and (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x347 (=> (and (and (= SIV@23 SIV@22) (= (ControlFlow 1 228479) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x356 (=> (and (and SIV@22 (= (ControlFlow 1 228477) 228478)) (= (ControlFlow 1 228478) 228479) (and (= SIV@23 SIV@22) (= (ControlFlow 1 228479) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x366 (and (and (not SIV@22) (= SIV@24 SIV@28)) (and (= SIV@25 SIV@22) (= (ControlFlow 1 228476) 233471)))))
 (let (($x376 (and (=> (and (= (ControlFlow 1 228475) 228476) $x366 (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228475) 228477) (and SIV@22 (= (ControlFlow 1 228477) 228478)) (= (ControlFlow 1 228478) 228479) (and (= SIV@23 SIV@22) (= (ControlFlow 1 228479) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303))))
 (let (($x384 (=> (and (and (not (= SIV@21 1)) (= (ControlFlow 1 228473) 228475)) true (and true SIV@27)) $x376)))
 (let (($x319 (=> (and (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x326 (=> (and (and (= SIV@21 1) (= (ControlFlow 1 228472) 228468)) (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x398 (and (=> (and (= (ControlFlow 1 228471) 228472) (and (= SIV@21 1) (= (ControlFlow 1 228472) 228468)) (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228471) 228473) (and (not (= SIV@21 1)) (= (ControlFlow 1 228473) 228475)) true (and true SIV@27)) $x376))))
 (let (($x391 (and (not (= SIV@20 1)) (= SIV@21 (ite (>= SIV@18 200) 1 0)))))
 (let (($x333 (=> (and (and (= SIV@20 1) (= (ControlFlow 1 228470) 228468)) (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x413 (and (=> (and (= (ControlFlow 1 228469) 228470) (and (= SIV@20 1) (= (ControlFlow 1 228470) 228468)) (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228469) 228471) $x391) $x398))))
 (let (($x406 (and (not (= SIV@19 1)) (= SIV@20 (ite (< $u0 100) 1 0)))))
 (let (($x340 (=> (and (and (= SIV@19 1) (= (ControlFlow 1 228467) 228468)) (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303)))
 (let (($x438 (and (=> (and (= (ControlFlow 1 228466) 228467) (and (= SIV@19 1) (= (ControlFlow 1 228467) 228468)) (and (= SIV@23 true) (= (ControlFlow 1 228468) 228474)) (= SIV@24 0) (and (= SIV@25 SIV@23) (= (ControlFlow 1 228474) 233471)) (= (ControlFlow 1 233471) (- 0 233804))) $x303) (=> (and (= (ControlFlow 1 228466) 228469) $x406) $x413))))
 (let (($x429 (and (boogie_si_record_i64 SIV@18) (= SIV@19 (ite (< $u0 100) 1 0)))))
 (let (($x430 (and (and (= SIV@17 $u0) (= SIV@18 (addition@@0 SIV@16 SIV@17))) $x429)))
 (let (($x421 (and (and true SIV@26) (and (boogie_si_record_ref main) (= SIV@16 $u0)))))
 (let (($x444 (=> (and (= (ControlFlow 1 233469) 228466) true (and $x421 $x430)) $x438)))
 (let (($x450 (and (= (ControlFlow 1 0) 233476) (not (=> (and (and true (= (ControlFlow 1 233476) 233469)) (= (ControlFlow 1 233469) 228466) true (and $x421 $x430)) $x438)))))
 (=> SIV@5 $x450)))))))))))))))))))))))))
(assert
 (let (($x527 (and (and true true) (and SIV@31 (= (ControlFlow 2 228979) (- 0 233911))))))
 (let (($x534 (=> (and (= (ControlFlow 2 233876) 228979) true (and true SIV@30) $x527) false)))
 (let (($x540 (and (= (ControlFlow 2 0) 233878) (not (=> (and (and true (= (ControlFlow 2 233878) 233876)) (= (ControlFlow 2 233876) 228979) true (and true SIV@30) $x527) false)))))
 (=> SIV@26 $x540)))))
(assert
 (let (($x552 (not SIV@36)))
 (let (($x553 (= SIV@22 $x552)))
 (let (($x554 (=> (= (ControlFlow 3 233941) (- 0 234026)) $x553)))
 (let (($x579 (=> (and (and (= SIV@36 SIV@35) (= (ControlFlow 3 228622) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x586 (=> (and (and (= SIV@35 true) (= (ControlFlow 3 228621) 228622)) (and (= SIV@36 SIV@35) (= (ControlFlow 3 228622) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x594 (=> (and (= (ControlFlow 3 228616) 228621) (not (= 0 $0)) (and (= SIV@35 true) (= (ControlFlow 3 228621) 228622)) (and (= SIV@36 SIV@35) (= (ControlFlow 3 228622) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x561 (=> (and (and (= SIV@36 false) (= (ControlFlow 3 228618) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553)))
 (let (($x571 (and (=> (and (= (ControlFlow 3 228617) 228618) (not false) (and (= SIV@36 false) (= (ControlFlow 3 228618) 233941)) (= (ControlFlow 3 233941) (- 0 234026))) $x553) (=> (= (ControlFlow 3 228617) 228619) true))))
 (let (($x563 (= 0 $0)))
 (let (($x596 (=> (boogie_si_record_i32 0) (and (=> (and (= (ControlFlow 3 228616) 228617) $x563) $x571) $x594))))
 (let (($x604 (=> (and (and true (= (ControlFlow 3 233946) 233939)) (= (ControlFlow 3 233939) 228616) (boogie_si_record_i32 0)) (and (=> (and (= (ControlFlow 3 228616) 228617) $x563) $x571) $x594))))
 (=> SIV@27 (and (= (ControlFlow 3 0) 233946) (not $x604)))))))))))))))
(check-sat)
