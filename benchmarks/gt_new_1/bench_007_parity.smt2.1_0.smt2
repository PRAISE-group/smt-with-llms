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
(declare-fun my__builtin_parity () Int)
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
(declare-fun SIV@37 () Bool)
(declare-fun SIV@40 () (_ BitVec 32))
(declare-fun SIV@39 () Bool)
(declare-fun SIV@36 () (_ BitVec 1))
(declare-fun SIV@35 () (_ BitVec 32))
(declare-fun SIV@34 () (_ BitVec 32))
(declare-fun SIV@24 () (_ BitVec 32))
(declare-fun SIV@33 () (_ BitVec 1))
(declare-fun SIV@32 () (_ BitVec 32))
(declare-fun my__builtin_parity@@0 ((_ BitVec 32)) (_ BitVec 32))
(declare-fun SIV@31 () (_ BitVec 32))
(declare-fun SIV@30 () (_ BitVec 32))
(declare-fun $u0 () (_ BitVec 32))
(declare-fun SIV@29 () (_ BitVec 1))
(declare-fun SIV@28 () (_ BitVec 1))
(declare-fun SIV@27 () (_ BitVec 32))
(declare-fun SIV@26 () (_ BitVec 32))
(declare-fun SIV@25 () (_ BitVec 1))
(declare-fun boogie_si_record_bv32 ((_ BitVec 32)) Bool)
(declare-fun boogie_si_record_ref (Int) Bool)
(declare-fun SIV@38 () Bool)
(declare-fun SIV@43 () Bool)
(declare-fun SIV@42 () Bool)
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
 (= my__builtin_parity (- 0 1032)))
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
 (let (($x130 (and (and true SIV@5) (and (not SIV@3) (= (ControlFlow 0 388481) (- 0 424960))))))
 (let (($x142 (=> (and (= (ControlFlow 0 424897) 388481) $x130) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3))))))
 (and (= (ControlFlow 0 0) 424900) (not (=> (and (and SIV@0 (= (ControlFlow 0 424900) 424897)) (= (ControlFlow 0 424897) 388481) $x130) (not (and (= SIV@1 SIV@4) (= SIV@2 SIV@3)))))))))
(assert
 (let (($x166 (=> (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x171 (and true true)))
 (let (($x178 (=> (and (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x213 (and (= SIV@36 (ite (not (= SIV@35 (_ bv0 32))) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 388460) 388461))))
 (let (($x205 (and (= SIV@34 ((_ zero_extend 31) SIV@33)) (= SIV@35 (bvxor SIV@24 SIV@34)))))
 (let (($x196 (and (= SIV@32 (my__builtin_parity@@0 SIV@31)) (= SIV@33 (ite (= SIV@32 (_ bv1 32)) (_ bv1 1) (_ bv0 1))))))
 (let (($x187 (and (= SIV@30 (bvsub $u0 (_ bv1 32))) (= SIV@31 (bvand $u0 SIV@30)))))
 (let (($x216 (=> (and (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x230 (and (= SIV@29 (ite (bvugt $u0 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 388458) 388459))))
 (let (($x231 (=> (and $x230 (and (= SIV@29 (_ bv1 1)) (= (ControlFlow 1 388459) 388460)) (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x242 (=> (and (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 388456) 388457)) (= (ControlFlow 1 388457) 388458) $x230 (and (= SIV@29 (_ bv1 1)) (= (ControlFlow 1 388459) 388460)) (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x257 (and (= SIV@28 (ite (= SIV@24 SIV@27) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 388455) 388456))))
 (let (($x250 (and (= SIV@26 (bvxor $u0 (bvsub (_ bv0 32) (_ bv1 32)))) (= SIV@27 (my__builtin_parity@@0 SIV@26)))))
 (let (($x267 (=> (and (= (ControlFlow 1 388453) 388454) (= (ControlFlow 1 388454) 388455) (and $x250 $x257) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 388456) 388457)) (= (ControlFlow 1 388457) 388458) $x230 (and (= SIV@29 (_ bv1 1)) (= (ControlFlow 1 388459) 388460)) (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x281 (and (= SIV@25 (ite (= SIV@24 (_ bv0 32)) (_ bv1 1) (_ bv0 1))) (= (ControlFlow 1 388451) 388452))))
 (let (($x282 (=> (and $x281 (and (= SIV@25 (_ bv1 1)) (= (ControlFlow 1 388452) 388453)) (= (ControlFlow 1 388453) 388454) (= (ControlFlow 1 388454) 388455) (and $x250 $x257) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 388456) 388457)) (= (ControlFlow 1 388457) 388458) $x230 (and (= SIV@29 (_ bv1 1)) (= (ControlFlow 1 388459) 388460)) (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x293 (and (boogie_si_record_bv32 SIV@24) (= (ControlFlow 1 388450) 388451))))
 (let (($x288 (and (boogie_si_record_ref main) (= SIV@24 (my__builtin_parity@@0 $u0)))))
 (let (($x301 (=> (and (= (ControlFlow 1 425016) 388450) true (and true SIV@38) (and $x288 $x293) $x281 (and (= SIV@25 (_ bv1 1)) (= (ControlFlow 1 388452) 388453)) (= (ControlFlow 1 388453) 388454) (= (ControlFlow 1 388454) 388455) (and $x250 $x257) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 388456) 388457)) (= (ControlFlow 1 388457) 388458) $x230 (and (= SIV@29 (_ bv1 1)) (= (ControlFlow 1 388459) 388460)) (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))
 (let (($x307 (and (= (ControlFlow 1 0) 425019) (not (=> (and (and true (= (ControlFlow 1 425019) 425016)) (= (ControlFlow 1 425016) 388450) true (and true SIV@38) (and $x288 $x293) $x281 (and (= SIV@25 (_ bv1 1)) (= (ControlFlow 1 388452) 388453)) (= (ControlFlow 1 388453) 388454) (= (ControlFlow 1 388454) 388455) (and $x250 $x257) (and (= SIV@28 (_ bv1 1)) (= (ControlFlow 1 388456) 388457)) (= (ControlFlow 1 388457) 388458) $x230 (and (= SIV@29 (_ bv1 1)) (= (ControlFlow 1 388459) 388460)) (and (and $x187 $x196) (and $x205 $x213)) (not (= SIV@36 (_ bv1 1))) (and $x171 (and SIV@39 (= (ControlFlow 1 388461) 388462))) (and (not SIV@37) (= (ControlFlow 1 388462) (- 0 425576)))) (not (and (= SIV@4 SIV@40) (= SIV@3 SIV@37))))))))
 (=> SIV@5 $x307))))))))))))))))))))))
(assert
 (let (($x171 (and true true)))
 (let (($x322 (and $x171 (and SIV@43 (= (ControlFlow 2 387862) (- 0 425712))))))
 (let (($x329 (=> (and (= (ControlFlow 2 425673) 387862) true (and true SIV@42) $x322) false)))
 (let (($x335 (and (= (ControlFlow 2 0) 425675) (not (=> (and (and true (= (ControlFlow 2 425675) 425673)) (= (ControlFlow 2 425673) 387862) true (and true SIV@42) $x322) false)))))
 (=> SIV@38 $x335))))))
(assert
 (let (($x349 (=> (and (not false) (= (ControlFlow 3 387934) (- 0 425813))) (= SIV@37 (not false)))))
 (let (($x361 (=> (and (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 387932) 387933)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 387933) 387934)) (and (not false) (= (ControlFlow 3 387934) (- 0 425813)))) (= SIV@37 (not false)))))
 (let (($x369 (=> (and (and true (= (ControlFlow 3 425743) 425740)) (= (ControlFlow 3 425740) 387932) (and (boogie_si_record_bv32 (_ bv0 32)) (= (ControlFlow 3 387932) 387933)) (and (= (_ bv0 32) $0) (= (ControlFlow 3 387933) 387934)) (and (not false) (= (ControlFlow 3 387934) (- 0 425813)))) (= SIV@37 (not false)))))
 (=> SIV@39 (and (= (ControlFlow 3 0) 425743) (not $x369)))))))
(assert
 (let (($x386 (=> (and (= (ControlFlow 4 425829) 387810) (= (ControlFlow 4 387810) (- 0 425836))) false)))
 (let (($x392 (and (= (ControlFlow 4 0) 425831) (not (=> (and (and true (= (ControlFlow 4 425831) 425829)) (= (ControlFlow 4 425829) 387810) (= (ControlFlow 4 387810) (- 0 425836))) false)))))
 (=> SIV@42 $x392))))
(assert
 (let (($x407 (=> (and (= (ControlFlow 5 425844) 387850) (= (ControlFlow 5 387850) (- 0 425875))) false)))
 (let (($x413 (and (= (ControlFlow 5 0) 425846) (not (=> (and (and true (= (ControlFlow 5 425846) 425844)) (= (ControlFlow 5 425844) 387850) (= (ControlFlow 5 387850) (- 0 425875))) false)))))
 (=> SIV@43 $x413))))
(check-sat)
