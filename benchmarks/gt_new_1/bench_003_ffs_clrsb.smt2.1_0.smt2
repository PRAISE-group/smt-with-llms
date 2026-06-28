; benchmark generated from python API
(set-info :status unknown)
(declare-fun tickleBool (Bool) Bool)
(declare-fun $0 () (_ BitVec 32))
(declare-fun $1 () (_ BitVec 32))
(declare-fun $0.ref () Int)
(declare-fun $1.ref () Int)
(declare-fun $1024.ref () Int)
(declare-fun $GLOBALS_BOTTOM () Int)
(declare-fun $EXTERNS_BOTTOM () Int)
(declare-fun $MALLOC_TOP () Int)
(declare-fun my__builtin_clrsb () Int)
(declare-fun my__builtin_ffs () Int)
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
(declare-fun SIV@4 () (_ BitVec 32))
(declare-fun SIV@1 () (_ BitVec 32))
(declare-fun ControlFlow (Int Int) Int)
(declare-fun SIV@5 () Bool)
(declare-fun SIV@0 () Bool)
(declare-fun SIV@28 () Bool)
(declare-fun SIV@32 () (_ BitVec 32))
(declare-fun SIV@31 () Bool)
(declare-fun SIV@27 () (_ BitVec 1))
(declare-fun SIV@26 () (_ BitVec 32))
(declare-fun SIV@25 () (_ BitVec 32))
(declare-fun SIV@24 () (_ BitVec 32))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun my__builtin_clrsb_cb ((_ BitVec 32)) (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV@30 () Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@29 () Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@34 () Bool)
(declare-fun SIV@49 () (_ BitVec 1))
(declare-fun SIV@48 () (_ BitVec 32))
(declare-fun SIV@47 () (_ BitVec 1))
(assert
 (and (tickleBool true) (tickleBool false)))
(assert
 (= $0 (_ bv0 32)))
(assert
 (= $1 (_ bv1 32)))
(assert
 (= $0.ref 0))
(assert
 (= $1.ref 1))
(assert
 (= $1024.ref 1024))
(assert
 (let ((?x25 (- 0 22704)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_clrsb (- 0 1032)))
(assert
 (= my__builtin_ffs (- 0 2064)))
(assert
 (= main (- 0 3096)))
(assert
 (= __SMACK_code (- 0 4128)))
(assert
 (= __VERIFIER_assume (- 0 5160)))
(assert
 (= __SMACK_dummy (- 0 6192)))
(assert
 (= __VERIFIER_assert (- 0 7224)))
(assert
 (= __SMACK_and32 (- 0 8256)))
(assert
 (= __SMACK_and64 (- 0 9288)))
(assert
 (= __SMACK_and16 (- 0 10320)))
(assert
 (= __SMACK_and8 (- 0 11352)))
(assert
 (= __SMACK_or32 (- 0 12384)))
(assert
 (= __SMACK_or64 (- 0 13416)))
(assert
 (= __SMACK_or16 (- 0 14448)))
(assert
 (= __SMACK_or8 (- 0 15480)))
(assert
 (= __SMACK_check_overflow (- 0 16512)))
(assert
 (= __SMACK_loop_exit (- 0 17544)))
(assert
 (= __SMACK_decls (- 0 18576)))
(assert
 (= __SMACK_top_decl (- 0 19608)))
(assert
 (= __SMACK_init_func_memory_model (- 0 20640)))
(assert
 (= llvm.dbg.value (- 0 21672)))
(assert
 (let ((?x25 (- 0 22704)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x134 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 392880) (- 0 429292))))))
 (let (($x146 (=> (and (= (ControlFlow 0 429229) 392880) $x134) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 429232) (not (=> (and (and SIV@0 (= (ControlFlow 0 429232) 429229)) (= (ControlFlow 0 429229) 392880) $x134) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x170 (=> (and (not SIV@28) (= (ControlFlow 1 392861) (- 0 429645))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x175 (and true true)))
 (let (($x182 (=> (and (and $x175 (and SIV@31 (= (ControlFlow 1 392860) 392861))) (and (not SIV@28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x197 (and (= SIV@27 (ite (bvsle SIV@26 (_ bv32 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 392859) 392860))))
 (let (($x199 (=> (and (= SIV@26 (bvadd SIV@24 SIV@25)) $x197 (not (= SIV@27 (_ bv1 1))) (and $x175 (and SIV@31 (= (ControlFlow 1 392860) 392861))) (and (not SIV@28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x216 (and (boogie_si_record_bv32 SIV@25) (= (ControlFlow 1 392858) 392859))))
 (let (($x211 (and (boogie_si_record_bv32 SIV@24) (= SIV@25 (my__builtin_clrsb_cb $u0)))))
 (let (($x218 (and (and (and (boogie_si_record_ref main) true) (and true SIV@30)) (and $x211 $x216))))
 (let (($x225 (=> (and (= (ControlFlow 1 429348) 392858) true (and true SIV@29) $x218 (= SIV@26 (bvadd SIV@24 SIV@25)) $x197 (not (= SIV@27 (_ bv1 1))) (and $x175 (and SIV@31 (= (ControlFlow 1 392860) 392861))) (and (not SIV@28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))
 (let (($x231 (and (= (ControlFlow 1 0) 429351) (not (=> (and (and true (= (ControlFlow 1 429351) 429348)) (= (ControlFlow 1 429348) 392858) true (and true SIV@29) $x218 (= SIV@26 (bvadd SIV@24 SIV@25)) $x197 (not (= SIV@27 (_ bv1 1))) (and $x175 (and SIV@31 (= (ControlFlow 1 392860) 392861))) (and (not SIV@28) (= (ControlFlow 1 392861) (- 0 429645)))) (not (and (= SIV@4 SIV@32) (= SIV@3 SIV@28))))))))
 (=> SIV@5 $x231))))))))))))
(assert
 (let (($x175 (and true true)))
 (let (($x246 (and $x175 (and SIV@35 (= (ControlFlow 2 392328) (- 0 429770))))))
 (let (($x253 (=> (and (= (ControlFlow 2 429731) 392328) true (and true SIV@34) $x246) false)))
 (let (($x259 (and (= (ControlFlow 2 0) 429733) (not (=> (and (and true (= (ControlFlow 2 429733) 429731)) (= (ControlFlow 2 429731) 392328) true (and true SIV@34) $x246) false)))))
 (=> SIV@29 $x259))))))
(assert
 (let (($x272 (=> (= (ControlFlow 3 392575) (- 0 430014)) (not (= SIV@24 (_ bv1 32))))))
 (let (($x280 (=> (and (and (not (= SIV@49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV@24 (_ bv1 32))))))
 (let (($x290 (and (= SIV@49 (ite (= SIV@48 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 392573) 392574))))
 (let (($x300 (=> (and (and (not (= SIV@47 (_ bv1 1))) (= (ControlFlow 3 392572) 392573)) (= SIV@48 (bvand $u0 (_ bv1 32))) $x290 (and (not (= SIV@49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV@24 (_ bv1 32))))))
 (let (($x308 (and (= SIV@47 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 3 392571) 392572))))
 (let (($x314 (=> (and (= (ControlFlow 3 429798) 392571) (boogie_si_record_bv32 $u0) $x308 (and (not (= SIV@47 (_ bv1 1))) (= (ControlFlow 3 392572) 392573)) (= SIV@48 (bvand $u0 (_ bv1 32))) $x290 (and (not (= SIV@49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV@24 (_ bv1 32))))))
 (let (($x320 (and (= (ControlFlow 3 0) 429802) (not (=> (and (and true (= (ControlFlow 3 429802) 429798)) (= (ControlFlow 3 429798) 392571) (boogie_si_record_bv32 $u0) $x308 (and (not (= SIV@47 (_ bv1 1))) (= (ControlFlow 3 392572) 392573)) (= SIV@48 (bvand $u0 (_ bv1 32))) $x290 (and (not (= SIV@49 (_ bv1 1))) (= (ControlFlow 3 392574) 392575)) (= (ControlFlow 3 392575) (- 0 430014))) (not (= SIV@24 (_ bv1 32))))))))
 (=> SIV@30 $x320)))))))))
(assert
 (let (($x334 (=> (and (not false) (= (ControlFlow 4 392647) (- 0 430132))) (= SIV@28 (not false)))))
 (let (($x346 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 392645) 392646)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 392646) 392647)) (and (not false) (= (ControlFlow 4 392647) (- 0 430132)))) (= SIV@28 (not false)))))
 (let (($x354 (=> (and (and true (= (ControlFlow 4 430062) 430059)) (= (ControlFlow 4 430059) 392645) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 4 392645) 392646)) (and (= (_ bv0 32) $0) (= (ControlFlow 4 392646) 392647)) (and (not false) (= (ControlFlow 4 392647) (- 0 430132)))) (= SIV@28 (not false)))))
 (=> SIV@31 (and (= (ControlFlow 4 0) 430062) (not $x354)))))))
(assert
 (let (($x371 (=> (and (= (ControlFlow 5 430148) 392276) (= (ControlFlow 5 392276) (- 0 430155))) false)))
 (let (($x377 (and (= (ControlFlow 5 0) 430150) (not (=> (and (and true (= (ControlFlow 5 430150) 430148)) (= (ControlFlow 5 430148) 392276) (= (ControlFlow 5 392276) (- 0 430155))) false)))))
 (=> SIV@34 $x377))))
(assert
 (let (($x392 (=> (and (= (ControlFlow 6 430163) 392316) (= (ControlFlow 6 392316) (- 0 430194))) false)))
 (let (($x398 (and (= (ControlFlow 6 0) 430165) (not (=> (and (and true (= (ControlFlow 6 430165) 430163)) (= (ControlFlow 6 430163) 392316) (= (ControlFlow 6 392316) (- 0 430194))) false)))))
 (=> SIV@35 $x398))))
(check-sat)
