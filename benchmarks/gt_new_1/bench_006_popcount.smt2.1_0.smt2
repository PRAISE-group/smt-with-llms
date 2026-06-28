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
(declare-fun my__builtin_popcount () Int)
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
(declare-fun SIV@34 () Bool)
(declare-fun SIV@37 () (_ BitVec 32))
(declare-fun SIV@36 () Bool)
(declare-fun SIV@33 () (_ BitVec 1))
(declare-fun SIV@32 () (_ BitVec 32))
(declare-fun SIV@30 () (_ BitVec 32))
(declare-fun SIV@31 () (_ BitVec 1))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV@29 () (_ BitVec 1))
(declare-fun SIV@22 () (_ BitVec 32))
(declare-fun SIV@28 () (_ BitVec 1))
(declare-fun SIV@27 () (_ BitVec 32))
(declare-fun SIV@26 () (_ BitVec 32))
(declare-fun my__builtin_popcount@@0 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun SIV@25 () (_ BitVec 32))
(declare-fun SIV@24 () (_ BitVec 1))
(declare-fun SIV@23 () (_ BitVec 1))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@35 () Bool)
(declare-fun SIV@40 () Bool)
(declare-fun SIV@39 () Bool)
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
 (let ((?x25 (- 0 21672)))
 (= $GLOBALS_BOTTOM ?x25)))
(assert
 (= $EXTERNS_BOTTOM (+ $GLOBALS_BOTTOM (- 0 32768))))
(assert
 (= $MALLOC_TOP 9223372036854775807))
(assert
 (= my__builtin_popcount (- 0 1032)))
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
 (let ((?x25 (- 0 21672)))
 (= __SMACK_static_init ?x25)))
(assert
 true)
(assert
 (let (($x130 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 387518) (- 0 423963))))))
 (let (($x142 (=> (and (= (ControlFlow 0 423900) 387518) $x130) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 423903) (not (=> (and (and SIV@0 (= (ControlFlow 0 423903) 423900)) (= (ControlFlow 0 423900) 387518) $x130) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x166 (=> (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x171 (and true true)))
 (let (($x178 (=> (and (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x205 (and (= SIV@33 (ite (= SIV@30 SIV@32) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387497) 387498))))
 (let (($x198 (and (= SIV@31 (ite (= $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= SIV@32 ((_ zero_extend 31) SIV@31)))))
 (let (($x189 (and (= SIV@29 (ite (= SIV@22 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= SIV@30 ((_ zero_extend 31) SIV@29)))))
 (let (($x212 (=> (and (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x223 (=> (and (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 387494) 387495)) (= (ControlFlow 1 387495) 387496) (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x242 (and (= SIV@28 (ite (= SIV@27 (_ bv32 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387493) 387494))))
 (let (($x234 (and (= SIV@26 (my__builtin_popcount@@0 SIV@25)) (= SIV@27 (bvadd SIV@22 SIV@26)))))
 (let (($x245 (=> (and (= SIV@25 (bvxor $u0 (bvsub (_ bv0 32) (_ bv1 32)))) (and $x234 $x242) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 387494) 387495)) (= (ControlFlow 1 387495) 387496) (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x253 (=> (and (= (ControlFlow 1 387491) 387492) (= (ControlFlow 1 387492) 387493) (= SIV@25 (bvxor $u0 (bvsub (_ bv0 32) (_ bv1 32)))) (and $x234 $x242) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 387494) 387495)) (= (ControlFlow 1 387495) 387496) (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x269 (and (= SIV@24 (ite (bvsle SIV@22 (_ bv32 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387489) 387490))))
 (let (($x270 (=> (and $x269 (and (= SIV@24 (_ bv1 1)) (= (ControlFlow 1 387490) 387491)) (= (ControlFlow 1 387491) 387492) (= (ControlFlow 1 387492) 387493) (= SIV@25 (bvxor $u0 (bvsub (_ bv0 32) (_ bv1 32)))) (and $x234 $x242) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 387494) 387495)) (= (ControlFlow 1 387495) 387496) (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x278 (and (= SIV@23 (ite (bvsge SIV@22 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 387488) 387489))))
 (let (($x290 (and (boogie_si_record_bv32 SIV@22) (= (ControlFlow 1 387487) 387488))))
 (let (($x285 (and (boogie_si_record_ref main) (= SIV@22 (my__builtin_popcount@@0 $u0)))))
 (let (($x293 (=> (and (and true SIV@35) (and $x285 $x290) $x278 (= SIV@23 (_ bv1 1)) $x269 (and (= SIV@24 (_ bv1 1)) (= (ControlFlow 1 387490) 387491)) (= (ControlFlow 1 387491) 387492) (= (ControlFlow 1 387492) 387493) (= SIV@25 (bvxor $u0 (bvsub (_ bv0 32) (_ bv1 32)))) (and $x234 $x242) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 387494) 387495)) (= (ControlFlow 1 387495) 387496) (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (let (($x302 (=> (and (and true (= (ControlFlow 1 424022) 424019)) (= (ControlFlow 1 424019) 387487) true (and true SIV@35) (and $x285 $x290) $x278 (= SIV@23 (_ bv1 1)) $x269 (and (= SIV@24 (_ bv1 1)) (= (ControlFlow 1 387490) 387491)) (= (ControlFlow 1 387491) 387492) (= (ControlFlow 1 387492) 387493) (= SIV@25 (bvxor $u0 (bvsub (_ bv0 32) (_ bv1 32)))) (and $x234 $x242) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 387494) 387495)) (= (ControlFlow 1 387495) 387496) (= (ControlFlow 1 387496) 387497) $x189 (and $x198 $x205) (not (= SIV@33 (_ bv1 1))) (and $x171 (and SIV@36 (= (ControlFlow 1 387498) 387499))) (and (not SIV@34) (= (ControlFlow 1 387499) (- 0 424555)))) (not (and (= SIV@4 SIV@37) (= SIV@3 SIV@34))))))
 (=> SIV@5 (and (= (ControlFlow 1 0) 424022) (not $x302)))))))))))))))))))))))
(assert
 (let (($x171 (and true true)))
 (let (($x319 (and $x171 (and SIV@40 (= (ControlFlow 2 386924) (- 0 424685))))))
 (let (($x326 (=> (and (= (ControlFlow 2 424646) 386924) true (and true SIV@39) $x319) false)))
 (let (($x332 (and (= (ControlFlow 2 0) 424648) (not (=> (and (and true (= (ControlFlow 2 424648) 424646)) (= (ControlFlow 2 424646) 386924) true (and true SIV@39) $x319) false)))))
 (=> SIV@35 $x332))))))
(assert
 (let (($x346 (=> (and (not false) (= (ControlFlow 3 386996) (- 0 424786))) (= SIV@34 (not false)))))
 (let (($x358 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 386994) 386995)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 386995) 386996)) (and (not false) (= (ControlFlow 3 386996) (- 0 424786)))) (= SIV@34 (not false)))))
 (let (($x366 (=> (and (and true (= (ControlFlow 3 424716) 424713)) (= (ControlFlow 3 424713) 386994) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 386994) 386995)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 386995) 386996)) (and (not false) (= (ControlFlow 3 386996) (- 0 424786)))) (= SIV@34 (not false)))))
 (=> SIV@36 (and (= (ControlFlow 3 0) 424716) (not $x366)))))))
(assert
 (let (($x383 (=> (and (= (ControlFlow 4 424802) 386872) (= (ControlFlow 4 386872) (- 0 424809))) false)))
 (let (($x389 (and (= (ControlFlow 4 0) 424804) (not (=> (and (and true (= (ControlFlow 4 424804) 424802)) (= (ControlFlow 4 424802) 386872) (= (ControlFlow 4 386872) (- 0 424809))) false)))))
 (=> SIV@39 $x389))))
(assert
 (let (($x404 (=> (and (= (ControlFlow 5 424817) 386912) (= (ControlFlow 5 386912) (- 0 424848))) false)))
 (let (($x410 (and (= (ControlFlow 5 0) 424819) (not (=> (and (and true (= (ControlFlow 5 424819) 424817)) (= (ControlFlow 5 424817) 386912) (= (ControlFlow 5 386912) (- 0 424848))) false)))))
 (=> SIV@40 $x410))))
(check-sat)
