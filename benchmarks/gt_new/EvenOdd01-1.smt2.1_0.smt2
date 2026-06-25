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
(declare-fun isOdd () Int)
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
(declare-fun SIV@20 () Bool)
(declare-fun SIV@23 () Int)
(declare-fun SIV@22 () Bool)
(declare-fun SIV@19 () Int)
(declare-fun SIV@17 () Int)
(declare-fun SIV@16 () Int)
(declare-fun SIV@18 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun $u0 () Int)
(declare-fun isOdd_cb (Int) Int)
(declare-fun SIV@15 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@21 () Bool)
(declare-fun SIV@26 () Bool)
(declare-fun SIV@25 () Bool)
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
 (= isOdd (- 0 1032)))
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
 (let (($x156 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 283535) (- 0 308172))))))
 (let (($x168 (=> (and (= (ControlFlow 0 308109) 283535) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 308112) (not (=> (and (and SIV@0 (= (ControlFlow 0 308112) 308109)) (= (ControlFlow 0 308109) 283535) $x156) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x192 (=> (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x193 (and true true)))
 (let (($x200 (=> (and (and $x193 (and SIV@22 (= (ControlFlow 1 283515) 283516))) (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x208 (=> (and (and (not (= SIV@19 1)) (= (ControlFlow 1 283514) 283515)) (and $x193 (and SIV@22 (= (ControlFlow 1 283515) 283516))) (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x220 (and (= SIV@19 (ite (= SIV@16 SIV@17) 1 0)) (= (ControlFlow 1 283513) 283514))))
 (let (($x251 (and (= SIV@18 (ite (< SIV@16 0) 1 0)) (= (ControlFlow 1 283512) 283513))))
 (let ((?x232 (mod $u0 2)))
 (let ((?x241 (ite (and (not (= ?x232 0)) (< $u0 0)) (- ?x232 (ite (> 2 (- 0 2)) 2 (- 0 2))) ?x232)))
 (let (($x253 (=> (and (and (and (= SIV@17 ?x241) (boogie_si_record_i32 SIV@17)) $x251) (not (= SIV@18 1)) $x220 (and (not (= SIV@19 1)) (= (ControlFlow 1 283514) 283515)) (and $x193 (and SIV@22 (= (ControlFlow 1 283515) 283516))) (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x254 (=> (and (and (= SIV@16 (isOdd_cb $u0)) (boogie_si_record_i32 SIV@16)) (and (and (= SIV@17 ?x241) (boogie_si_record_i32 SIV@17)) $x251) (not (= SIV@18 1)) $x220 (and (not (= SIV@19 1)) (= (ControlFlow 1 283514) 283515)) (and $x193 (and SIV@22 (= (ControlFlow 1 283515) 283516))) (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x264 (and (= SIV@15 (ite (< $u0 0) 1 0)) (= (ControlFlow 1 283511) 283512))))
 (let (($x266 (=> (and (and (and SIV@21 (boogie_si_record_ref main)) $x264) (not (= SIV@15 1)) (and (= SIV@16 (isOdd_cb $u0)) (boogie_si_record_i32 SIV@16)) (and (and (= SIV@17 ?x241) (boogie_si_record_i32 SIV@17)) $x251) (not (= SIV@18 1)) $x220 (and (not (= SIV@19 1)) (= (ControlFlow 1 283514) 283515)) (and $x193 (and SIV@22 (= (ControlFlow 1 283515) 283516))) (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (let (($x275 (=> (and (and true (= (ControlFlow 1 308231) 308228)) (= (ControlFlow 1 308228) 283511) $x193 (and (and SIV@21 (boogie_si_record_ref main)) $x264) (not (= SIV@15 1)) (and (= SIV@16 (isOdd_cb $u0)) (boogie_si_record_i32 SIV@16)) (and (and (= SIV@17 ?x241) (boogie_si_record_i32 SIV@17)) $x251) (not (= SIV@18 1)) $x220 (and (not (= SIV@19 1)) (= (ControlFlow 1 283514) 283515)) (and $x193 (and SIV@22 (= (ControlFlow 1 283515) 283516))) (and (not SIV@20) (= (ControlFlow 1 283516) (- 0 308563)))) (not (and (= SIV@4 SIV@23) (= SIV@3 SIV@20))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 308231) (not $x275)))))))))))))))))
(assert
 (let (($x193 (and true true)))
 (let (($x291 (and $x193 (and SIV@26 (= (ControlFlow 2 283188) (- 0 308665))))))
 (let (($x298 (=> (and (= (ControlFlow 2 308626) 283188) true (and true SIV@25) $x291) false)))
 (let (($x304 (and (= (ControlFlow 2 0) 308628) (not (=> (and (and true (= (ControlFlow 2 308628) 308626)) (= (ControlFlow 2 308626) 283188) true (and true SIV@25) $x291) false)))))
 (=> SIV@21 $x304))))))
(assert
 (let (($x318 (=> (and (not false) (= (ControlFlow 3 283260) (- 0 308766))) (= SIV@20 (not false)))))
 (let (($x330 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 283258) 283259)) (and (= 0 $0) (= (ControlFlow 3 283259) 283260)) (and (not false) (= (ControlFlow 3 283260) (- 0 308766)))) (= SIV@20 (not false)))))
 (let (($x338 (=> (and (and true (= (ControlFlow 3 308696) 308693)) (= (ControlFlow 3 308693) 283258) (and (boogie_si_record_i32 0) (= (ControlFlow 3 283258) 283259)) (and (= 0 $0) (= (ControlFlow 3 283259) 283260)) (and (not false) (= (ControlFlow 3 283260) (- 0 308766)))) (= SIV@20 (not false)))))
 (=> SIV@22 (and (= (ControlFlow 3 0) 308696) (not $x338)))))))
(assert
 (let (($x355 (=> (and (= (ControlFlow 4 308782) 283136) (= (ControlFlow 4 283136) (- 0 308789))) false)))
 (let (($x361 (and (= (ControlFlow 4 0) 308784) (not (=> (and (and true (= (ControlFlow 4 308784) 308782)) (= (ControlFlow 4 308782) 283136) (= (ControlFlow 4 283136) (- 0 308789))) false)))))
 (=> SIV@25 $x361))))
(assert
 (let (($x376 (=> (and (= (ControlFlow 5 308797) 283176) (= (ControlFlow 5 283176) (- 0 308828))) false)))
 (let (($x382 (and (= (ControlFlow 5 0) 308799) (not (=> (and (and true (= (ControlFlow 5 308799) 308797)) (= (ControlFlow 5 308797) 283176) (= (ControlFlow 5 283176) (- 0 308828))) false)))))
 (=> SIV@26 $x382))))
(check-sat)
