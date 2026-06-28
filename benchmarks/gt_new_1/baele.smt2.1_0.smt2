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
(declare-fun q@.str.1 () Int)
(declare-fun beale_int () Int)
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
(declare-fun SIV@29 () Bool)
(declare-fun SIV@32 () Int)
(declare-fun SIV@31 () Bool)
(declare-fun SIV@28 () Int)
(declare-fun SIV@25 () Int)
(declare-fun SIV@24 () Int)
(declare-fun SIV@27 () Int)
(declare-fun SIV@26 () Int)
(declare-fun boogie_si_record_i32 (Int) Bool)
(declare-fun beale_int@@0 (Int Int) Int)
(declare-fun SIV@23 () Int)
(declare-fun SIV@20 () Int)
(declare-fun SIV@22 () Int)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@30 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@34 () Bool)
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
 (let ((?x23 (- 0 24800)))
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
 (= q@.str (- 0 1048)))
(assert
 (= q@.str.1 (- 0 2096)))
(assert
 (= beale_int (- 0 3128)))
(assert
 (= main (- 0 4160)))
(assert
 (= printf (- 0 5192)))
(assert
 (= __SMACK_code (- 0 6224)))
(assert
 (= __VERIFIER_assume (- 0 7256)))
(assert
 (= __SMACK_dummy (- 0 8288)))
(assert
 (= __VERIFIER_assert (- 0 9320)))
(assert
 (= __SMACK_and32 (- 0 10352)))
(assert
 (= __SMACK_and64 (- 0 11384)))
(assert
 (= __SMACK_and16 (- 0 12416)))
(assert
 (= __SMACK_and8 (- 0 13448)))
(assert
 (= __SMACK_or32 (- 0 14480)))
(assert
 (= __SMACK_or64 (- 0 15512)))
(assert
 (= __SMACK_or16 (- 0 16544)))
(assert
 (= __SMACK_or8 (- 0 17576)))
(assert
 (= __SMACK_check_overflow (- 0 18608)))
(assert
 (= __SMACK_loop_exit (- 0 19640)))
(assert
 (= __SMACK_decls (- 0 20672)))
(assert
 (= __SMACK_top_decl (- 0 21704)))
(assert
 (= __SMACK_init_func_memory_model (- 0 22736)))
(assert
 (= llvm.dbg.value (- 0 23768)))
(assert
 (let ((?x23 (- 0 24800)))
 (= __SMACK_static_init ?x23)))
(assert
 true)
(assert
 (let (($x168 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 289420) (- 0 314435))))))
 (let (($x180 (=> (and (= (ControlFlow 0 314372) 289420) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 314375) (not (=> (and (and SIV@0 (= (ControlFlow 0 314375) 314372)) (= (ControlFlow 0 314372) 289420) $x168) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x204 (=> (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x208 (and true true)))
 (let (($x215 (=> (and (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x226 (and (= SIV@28 (ite (not (= SIV@24 SIV@25)) 1 0)) (= (ControlFlow 1 289399) 289400))))
 (let (($x231 (=> (and (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x242 (=> (and (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x249 (and (= SIV@27 (ite (> SIV@25 0) 1 0)) (= (ControlFlow 1 289395) 289396))))
 (let (($x258 (=> (and (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x265 (=> (and (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x272 (and (= SIV@26 (ite (> SIV@24 0) 1 0)) (= (ControlFlow 1 289391) 289392))))
 (let (($x286 (and (boogie_si_record_i32 SIV@25) (= (ControlFlow 1 289390) 289391))))
 (let (($x281 (and (boogie_si_record_i32 SIV@24) (= SIV@25 (beale_int@@0 2000 2000)))))
 (let (($x289 (=> (and (= SIV@24 (beale_int@@0 1000 1000)) (and $x281 $x286) $x272 (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x300 (=> (and (and (= SIV@23 1) (= (ControlFlow 1 289388) 289389)) (= (ControlFlow 1 289389) 289390) (= SIV@24 (beale_int@@0 1000 1000)) (and $x281 $x286) $x272 (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x309 (and (= SIV@23 (ite (< SIV@20 10) 1 0)) (= (ControlFlow 1 289387) 289388))))
 (let (($x318 (=> (and (= (ControlFlow 1 289385) 289386) (= (ControlFlow 1 289386) 289387) $x309 (and (= SIV@23 1) (= (ControlFlow 1 289388) 289389)) (= (ControlFlow 1 289389) 289390) (= SIV@24 (beale_int@@0 1000 1000)) (and $x281 $x286) $x272 (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x325 (=> (and (and (= SIV@22 1) (= (ControlFlow 1 289384) 289385)) (= (ControlFlow 1 289385) 289386) (= (ControlFlow 1 289386) 289387) $x309 (and (= SIV@23 1) (= (ControlFlow 1 289388) 289389)) (= (ControlFlow 1 289389) 289390) (= SIV@24 (beale_int@@0 1000 1000)) (and $x281 $x286) $x272 (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x332 (and (= SIV@22 (ite (>= SIV@20 0) 1 0)) (= (ControlFlow 1 289383) 289384))))
 (let (($x346 (and (boogie_si_record_i32 SIV@20) (= (ControlFlow 1 289382) 289383))))
 (let (($x341 (and (boogie_si_record_ref main) (= SIV@20 (beale_int@@0 3000 500)))))
 (let (($x350 (=> (and true (and true SIV@30) (and $x341 $x346) $x332 (and (= SIV@22 1) (= (ControlFlow 1 289384) 289385)) (= (ControlFlow 1 289385) 289386) (= (ControlFlow 1 289386) 289387) $x309 (and (= SIV@23 1) (= (ControlFlow 1 289388) 289389)) (= (ControlFlow 1 289389) 289390) (= SIV@24 (beale_int@@0 1000 1000)) (and $x281 $x286) $x272 (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (let (($x358 (=> (and (and true (= (ControlFlow 1 314494) 314491)) (= (ControlFlow 1 314491) 289382) true (and true SIV@30) (and $x341 $x346) $x332 (and (= SIV@22 1) (= (ControlFlow 1 289384) 289385)) (= (ControlFlow 1 289385) 289386) (= (ControlFlow 1 289386) 289387) $x309 (and (= SIV@23 1) (= (ControlFlow 1 289388) 289389)) (= (ControlFlow 1 289389) 289390) (= SIV@24 (beale_int@@0 1000 1000)) (and $x281 $x286) $x272 (and (= SIV@26 1) (= (ControlFlow 1 289392) 289393)) (= (ControlFlow 1 289393) 289394) (= (ControlFlow 1 289394) 289395) $x249 (and (= SIV@27 1) (= (ControlFlow 1 289396) 289397)) (= (ControlFlow 1 289397) 289398) (= (ControlFlow 1 289398) 289399) $x226 (not (= SIV@28 1)) (and $x208 (and SIV@31 (= (ControlFlow 1 289400) 289401))) (and (not SIV@29) (= (ControlFlow 1 289401) (- 0 315093)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@29))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 314494) (not $x358))))))))))))))))))))))))))
(assert
 (let (($x208 (and true true)))
 (let (($x375 (and $x208 (and SIV@35 (= (ControlFlow 2 288776) (- 0 315213))))))
 (let (($x382 (=> (and (= (ControlFlow 2 315174) 288776) true (and true SIV@34) $x375) false)))
 (let (($x388 (and (= (ControlFlow 2 0) 315176) (not (=> (and (and true (= (ControlFlow 2 315176) 315174)) (= (ControlFlow 2 315174) 288776) true (and true SIV@34) $x375) false)))))
 (=> SIV@30 $x388))))))
(assert
 (let (($x402 (=> (and (not false) (= (ControlFlow 3 288848) (- 0 315314))) (= SIV@29 (not false)))))
 (let (($x414 (=> (and (and (boogie_si_record_i32 0) (= (ControlFlow 3 288846) 288847)) (and (= 0 $0) (= (ControlFlow 3 288847) 288848)) (and (not false) (= (ControlFlow 3 288848) (- 0 315314)))) (= SIV@29 (not false)))))
 (let (($x422 (=> (and (and true (= (ControlFlow 3 315244) 315241)) (= (ControlFlow 3 315241) 288846) (and (boogie_si_record_i32 0) (= (ControlFlow 3 288846) 288847)) (and (= 0 $0) (= (ControlFlow 3 288847) 288848)) (and (not false) (= (ControlFlow 3 288848) (- 0 315314)))) (= SIV@29 (not false)))))
 (=> SIV@31 (and (= (ControlFlow 3 0) 315244) (not $x422)))))))
(assert
 (let (($x439 (=> (and (= (ControlFlow 4 315330) 288724) (= (ControlFlow 4 288724) (- 0 315337))) false)))
 (let (($x445 (and (= (ControlFlow 4 0) 315332) (not (=> (and (and true (= (ControlFlow 4 315332) 315330)) (= (ControlFlow 4 315330) 288724) (= (ControlFlow 4 288724) (- 0 315337))) false)))))
 (=> SIV@34 $x445))))
(assert
 (let (($x460 (=> (and (= (ControlFlow 5 315345) 288764) (= (ControlFlow 5 288764) (- 0 315376))) false)))
 (let (($x466 (and (= (ControlFlow 5 0) 315347) (not (=> (and (and true (= (ControlFlow 5 315347) 315345)) (= (ControlFlow 5 315345) 288764) (= (ControlFlow 5 288764) (- 0 315376))) false)))))
 (=> SIV@35 $x466))))
(check-sat)
